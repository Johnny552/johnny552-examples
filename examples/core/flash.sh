#!/usr/bin/env bash
set -euo pipefail

# Flash helper: build then flash core.ihx using wchisp
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$HERE"

echo "Building firmware..."
make clean
make

HEX=build/core.ihx
if [ ! -f "$HEX" ]; then
        echo "Error: $HEX not found after build" >&2
        exit 2
fi

if ! command -v wchisp >/dev/null 2>&1; then
	echo "Error: 'wchisp' not found in PATH. Install it or adjust PATH." >&2
	exit 3
fi

echo "Flashing $HEX..."
if wchisp flash "$HEX"; then
	echo "Flash successful."
else
	echo "Flash failed (wchisp returned non-zero)." >&2
	exit 4
fi

