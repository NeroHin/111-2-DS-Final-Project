# frist, please install the vpa repo
'''
git clone git@github.com:kubernetes/autoscaler.git
cd ./autoscaler/vertical-pod-autoscaler
./hack/vpa-up.sh
'''


# create a deployment with random-generator
kubectl create -f deployment.yml

# wait for the deployment to be ready
kubectl rollout status deployment/random-generator


if kubectl get hpa random-generator; then
    kubectl delete horizontalpodautoscaler.autoscaling/random-generator
fi

# create vpa
kubectl create -f vpa.yml

# port-forward to access the service
kubectl port-forward service/random-generator 8888:80

