#!/usr/bin/env bash

function convert {
  echo "zip_longitude = {"
  cat zip-db.csv \
    | awk 'NR > 1 { print $0 }' \
    | cut -d , -f 1,5 \
    | sed -e 's/,/:/' \
          -e 's/$/,/'
  echo "};"
}

convert > zip-longitude.js
