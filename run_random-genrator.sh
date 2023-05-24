# create a deployment with random-generator image
kubectl create -f deployment.yml

# 

# port-forward to access the service
kubectl port-forward service/random-generator 8888:80