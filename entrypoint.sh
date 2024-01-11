#!/bin/sh

set -e

echo "Waiting for services to start: $*."
echo "Checking every $SLEEP_TIME seconds."

for service in "$@"
do
    until nslookup "$service"; do
      echo "waiting for '$service' to start..."
      sleep "$SLEEP_TIME"
    done
done
