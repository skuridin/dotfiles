#!/usr/bin/env python3
"""Run with python3 test_tailscale_status.py; requires jq and timeout."""
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile

script = Path(__file__).with_name('tailscale-status.sh')
with tempfile.TemporaryDirectory() as directory:
    bin_dir = Path(directory)
    for name in ('jq', 'timeout'):
        path = shutil.which(name)
        if path:
            (bin_dir / name).symlink_to(path)
    has_timeout = (bin_dir / 'timeout').exists()
    tailscale = bin_dir / 'tailscale'
    tailscale.write_text('''#!/bin/sh
[ "$*" = "status --json" ] || exit 1
[ "$HANG" = 1 ] && exec /bin/sleep 10
printf '%s' "$STATUS"
exit "$STATUS_EXIT"
''')
    tailscale.chmod(0o755)
    env = dict(os.environ, PATH=directory, STATUS_EXIT='0', HANG='0')

    def check(status, expected, **overrides):
        output = subprocess.check_output(
            ['/bin/sh', str(script)], text=True, timeout=5,
            env=dict(env, STATUS=json.dumps(status), **overrides),
        )
        assert output == expected, (output, expected)

    status = {'BackendState': 'Running', 'TailscaleIPs': ['100.64.0.1']}
    check(status, 'TS 100.64.0.1')
    for state in ('Stopped', 'NeedsLogin', 'Starting'):
        check(dict(status, BackendState=state), 'TS down')
    check(dict(status, TailscaleIPs=[]), 'TS down')
    check(status, 'TS down', STATUS_EXIT='1')
    if has_timeout:
        check(status, 'TS down', HANG='1')
    check(None, 'TS down')
    if has_timeout:
        (bin_dir / 'timeout').unlink()
        check(status, 'TS down')
print('Tailscale status checks passed')
