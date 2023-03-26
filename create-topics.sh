#!/bin/sh
kafka-topics --bootstrap-server 127.0.0.1:9093 \
  --create \
  --topic doc \
  --partitions 10 \
  --if-not-exists

