#!/usr/bin/env sh

set -x
npm run build
set +x

set -x
npm run start-prod & sleep 1
echo $! > .pidfile
set +x