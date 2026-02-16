#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ ! -f "$ROOT_DIR/.env" ]]; then
  echo "Missing .env. Run ./scripts/setup.sh first."
  exit 1
fi

docker compose -f "$ROOT_DIR/docker-compose.yml" up -d

echo ""
echo "OpenClaw container status:"
docker compose -f "$ROOT_DIR/docker-compose.yml" ps

echo ""
echo "OpenClaw should be available at: http://localhost:3000"
echo "If the UI is not ready yet, wait a few seconds and refresh."
