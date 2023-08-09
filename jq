# decode k8s secret data
kubectl get secrets foo -o json | jq '.data | map_values(@base64d)'
