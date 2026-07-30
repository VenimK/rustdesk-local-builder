#!/usr/bin/env bash
# RustDesk Local Builder — launcher (Linux / macOS)
set -e
cd "$(dirname "$0")"

# Make sure Rust's cargo bin (and anything installed there) is on PATH for this
# run, so cargo/rustc resolve even if the shell wasn't restarted after install.
export PATH="$HOME/.cargo/bin:$PATH"

PY=python3
command -v $PY >/dev/null 2>&1 || PY=python
command -v $PY >/dev/null 2>&1 || { echo "Python 3 not found. Install it first."; exit 1; }

echo "Starting RustDesk Local Builder…"
exec $PY app.py "$@"
