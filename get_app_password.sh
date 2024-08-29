kubectl get secret cluster-example-app -o jsonpath="{.data.password}" | base64 -d
echo


