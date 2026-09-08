#!/bin/sh
# tmux status segment: requires tailscale and jq (timeout optional, absent on macOS).
# Fail closed; timeout(1) is used when available to bail on a hung tailscaled.
_ts_cmd="tailscale status --json"
command -v timeout >/dev/null && _ts_cmd="timeout -k 1 2 $_ts_cmd"
_ts_status=$($_ts_cmd 2>/dev/null) || {
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
