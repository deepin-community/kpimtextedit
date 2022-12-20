#!/bin/sh
set -e
set -x
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export TMPDIR="${HOME}/tmp"
export XDG_RUNTIME_DIR="${HOME}/runtime"
mkdir -p "${TMPDIR}"
mkdir -p -m 700 "${XDG_RUNTIME_DIR}"
export KDE_FORK_SLAVES=1
openbox & WMPID=$!
sleep 1
cleanup () {
    if [ -n "$WMPID" ]; then kill "$WMPID"; fi
}
trap cleanup EXIT
dh_auto_test --no-parallel
