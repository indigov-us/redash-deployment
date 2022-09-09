#!/bin/bash
set -e

export PYTHONUNBUFFERED=1

NCPUS="$(nproc)"
export REDASH_WEB_WORKERS="${REDASH_WEB_WORKERS:-$NCPUS}"
export WORKERS_COUNT="${WORKERS_COUNT:-$NCPUS}"

exec /app/bin/docker-entrypoint "$@"