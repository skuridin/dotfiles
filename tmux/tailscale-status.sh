#!/bin/sh
# tmux status segment: requires tailscale, timeout, and jq.
# Fail closed if status cannot be read within two seconds.
_ts_status=$(timeout -k 1 2 tailscale status --json 2>/dev/null) || {
    printf 'TS down'
    exit 0
}
_ts_ip=$(printf '%s' "$_ts_status" | jq -er '
    select(.BackendState == "Running")
    | first(.TailscaleIPs[]? | select(startswith("100.")))
' 2>/dev/null) || {
    printf 'TS down'
    exit 0
}
printf 'TS %s' "$_ts_ip"
