#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

docker run \
    -it --rm \
    --name immortalwrt-build \
    -h keving \
    -p 10022:22 \
    -v "$SCRIPT_DIR"/volumes/deconfig/:/home/user/immortalwrt-mt798x/deconfig/ \
    keving/immortalwrt-build
