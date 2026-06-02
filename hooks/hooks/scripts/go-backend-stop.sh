#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../../../cocoonhub-backend"

echo "[go-backend-stop] Running gofmt..."
gofmt -w .

echo "[go-backend-stop] Running build check..."
go build ./...

echo "[go-backend-stop] All checks passed."
