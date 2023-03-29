#!/bin/sh
kafka-console-producer \
  --broker-list localhost:9093 \
  --topic doc \
  --property "parse.key=true" \
  --property "key.separator=:" < event.txt

