#!/usr/bin/env sh

set -x
npm run build
set +x

set -x
pm2 restart all
set +x