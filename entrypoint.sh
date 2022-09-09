#!/bin/bash
set -e

echo "hello from custom redash entrypoint"

export PYTHONUNBUFFERED=1

export REDASH_DATABASE_URL="${DATABASE_URL}"
export REDIS_HOSTPORT="${REDIS_URL}"

NCPUS="$(nproc)"
export REDASH_WEB_WORKERS="${REDASH_WEB_WORKERS:-$NCPUS}"
export WORKERS_COUNT="${WORKERS_COUNT:-$NCPUS}"

exec /app/bin/docker-entrypoint "$@"