# if random-generator in minikube, delete it
if kubectl get deployment random-generator; then
    kubectl delete deployment random-generator
fi

if kubectl get hpa random-generator; then
    kubectl delete horizontalpodautoscaler.autoscaling/random-generator
fi

# create a deployment with random-generator image
kubectl create -f deployment.yml

# wait for the deployment to be ready
kubectl rollout status deployment/random-generator

# same for V2
kubectl create -f hpa.yml


# # port-forward to access the service
# kubectl port-forward service/random-generator 8888:80

# # while true, fetch the service: localhost:8888 with curl for 100 times / second
# while true; do curl localhost:8888; sleep 0.000000001; done