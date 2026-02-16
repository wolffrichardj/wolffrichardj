#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="$ROOT_DIR/.env"
ENV_EXAMPLE="$ROOT_DIR/.env.example"

# Single source of truth for default path lives in .env.example OPENCLAW_DATA_DIR.
DEFAULT_DATA_DIR_RAW="$(sed -n 's/^OPENCLAW_DATA_DIR=//p' "$ENV_EXAMPLE" | head -n 1)"
DEFAULT_DATA_DIR_RAW="${DEFAULT_DATA_DIR_RAW:-~/openclaw/data}"

if [[ "$DEFAULT_DATA_DIR_RAW" == "~" ]]; then
  DEFAULT_DATA_DIR="$HOME"
elif [[ "$DEFAULT_DATA_DIR_RAW" == "~/"* ]]; then
  DEFAULT_DATA_DIR="$HOME/${DEFAULT_DATA_DIR_RAW:2}"
else
  DEFAULT_DATA_DIR="$DEFAULT_DATA_DIR_RAW"
fi

mkdir -p "$DEFAULT_DATA_DIR"

if [[ ! -f "$ENV_FILE" ]]; then
  sed "s|^OPENCLAW_DATA_DIR=.*$|OPENCLAW_DATA_DIR=$DEFAULT_DATA_DIR|" "$ENV_EXAMPLE" > "$ENV_FILE"
  echo "Created .env with defaults"
else
  if ! grep -q '^OPENCLAW_DATA_DIR=' "$ENV_FILE"; then
    {
      echo ""
      echo "# Persistent OpenClaw data path (outside this repository)."
      echo "OPENCLAW_DATA_DIR=$DEFAULT_DATA_DIR"
    } >> "$ENV_FILE"
    echo "Updated .env with OPENCLAW_DATA_DIR"
  else
    echo ".env already exists; leaving it unchanged"
  fi
fi

echo ""
echo "Setup complete."
echo "- Persistent data directory: $DEFAULT_DATA_DIR"
echo "- Config file:              $ENV_FILE"
echo ""
echo "Next steps:"
echo "1) Start Ollama on macOS (outside Docker)."
echo "2) Run ./scripts/start.sh"
