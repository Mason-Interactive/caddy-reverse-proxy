#!/bin/sh

set -euo pipefail

# for backwards compatibility, seperates host and port from url
export FRONTEND_DOMAIN=${FRONTEND_DOMAIN:-${FRONTEND_HOST%:*}}
export FRONTEND_PORT=${FRONTEND_PORT:-${FRONTEND_HOST##*:}}

echo using frontend: ${FRONTEND_DOMAIN} with port: ${FRONTEND_PORT}

exec caddy run --config Caddyfile --adapter caddyfile 2>&1