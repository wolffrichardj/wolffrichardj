# OpenClaw + Ollama Local Setup

This repository is a minimal, repeatable local setup for running OpenClaw in Docker with Ollama running natively on macOS.

## Repository purpose

- Start OpenClaw quickly with Docker Compose
- Connect OpenClaw to local Ollama on the host (`host.docker.internal`)
- Persist OpenClaw state outside the repo in `~/openclaw/data`
- Provide clear setup, start, stop, and reset steps

## Prerequisites

1. macOS (Apple Silicon recommended)
2. Docker Desktop installed and running
3. Ollama installed and running on macOS
4. At least one Ollama model pulled (example):

```bash
ollama pull llama3.2
```

## Files in this repo

- `docker-compose.yml` — OpenClaw container definition
- `.env.example` — default environment values
- `scripts/setup.sh` — creates `.env` and persistent data directory
- `scripts/start.sh` — starts OpenClaw and prints status/URL

## One-time setup

```bash
./scripts/setup.sh
```

This initializes:
- `.env` (if missing)
- `~/openclaw/data`

## Start

```bash
./scripts/start.sh
```

Open:
- `http://localhost:3000`

## Stop

```bash
docker compose down
```

## Reset local OpenClaw state

```bash
docker compose down
rm -rf ~/openclaw/data
./scripts/setup.sh
```

## Networking note (macOS)

From inside Docker, `localhost` points to the container itself.

Docker Desktop for macOS exposes `host.docker.internal` to access services on the host machine, which is why this setup uses:

```env
OLLAMA_BASE_URL=http://host.docker.internal:11434
```
