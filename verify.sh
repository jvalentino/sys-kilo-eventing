#!/bin/sh
PORT=9093
NAME=kafka-service

mkdir build || true

kubectl port-forward --namespace default svc/$NAME $PORT:$PORT > build/$NAME.log 2>&1 &
kcat -b localhost:9093 -L

while [ $? -ne 0 ]; do
    kubectl port-forward --namespace default svc/$NAME $PORT:$PORT > build/$NAME.log 2>&1 &
    kcat -b localhost:9093 -L
    sleep 5
done

./create-topics.sh
