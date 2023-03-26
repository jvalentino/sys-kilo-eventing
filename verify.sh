#!/bin/sh
PORT=9093
NAME=kafka-service

mkdir build || true

kubectl port-forward --namespace default svc/$NAME $PORT:$PORT > build/$NAME.log 2>&1 &

