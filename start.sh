#!/bin/bash
set -e

export PRISMA_CONFIG="port: ${PRISMA_PORT}
databases:
  default:
    connector: ${PRISMA_DB_CONNECTOR}
    host: ${PRISMA_DB_HOST}
    port: ${PRISMA_DB_PORT}
    user: ${PRISMA_DB_USER}
    password: ${PRISMA_DB_PASSWORD}
    rawAccess: ${PRISMA_RAW_ACCESS}"

/app/prerun_hook.sh
/app/bin/prisma-local
