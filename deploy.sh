#!/bin/sh
#helm repo add kafka https://charts.bitnami.com/bitnami
#helm delete kafka --wait || true


#helm install kafka kafka/kafka --wait \
#    --set externalAccess.enabled=true \
#    --set externalAccess.autoDiscovery.enabled=true \
#    --set serviceAccount.create=true \
#    --set rbac.create=true

#helm install kafka kafka/kafka --wait \
#    --set externalAccess.enabled=true \
#    --set externalAccess.service.type=NodePort \
#    --set externalAccess.service.domain=localhost \
#    --set externalAccess.autoDiscovery.enabled=true \
#    --set serviceAccount.create=true \
#    --set rbac.create=true

#    --set advertisedListeners="EXTERNAL://127.0.0.1:9092"

#sh -x ./verify.sh

kubectl delete -f config/kompose/zookeeper.yaml,config/kompose/kafka.yaml
kubectl apply -f config/kompose/zookeeper.yaml,config/kompose/kafka.yaml

#kubectl delete -f config/kompose/kafka-claim0-persistentvolumeclaim.yaml,config/kompose/kafka-deployment.yaml,config/kompose/kafka-service.yaml,config/kompose/kompose-default-networkpolicy.yaml,config/kompose/zookeeper-deployment.yaml

#kubectl apply -f config/kompose/kafka-claim0-persistentvolumeclaim.yaml,config/kompose/kafka-deployment.yaml,config/kompose/kafka-service.yaml,config/kompose/kompose-default-networkpolicy.yaml,config/kompose/zookeeper-deployment.yaml
