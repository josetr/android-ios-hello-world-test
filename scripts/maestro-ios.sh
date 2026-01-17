#!/usr/bin/env bash
set -euo pipefail

command -v maestro >/dev/null 2>&1 || {
  echo "maestro not found in PATH. Install from https://maestro.mobile.dev/" >&2
  exit 1
}

maestro test "$(cd "$(dirname "$0")/.." && pwd)/.maestro/ios"
