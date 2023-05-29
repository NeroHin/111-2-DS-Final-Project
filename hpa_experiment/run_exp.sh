# build a docker image
docker build -t ticketing-api .

# add tag and push to docker hub
docker tag ticketing-api:latest nerochun/ticketing-api:latest

docker push nerochun/ticketing-api:latest

# apply the deployment
kubectl apply -f deployment.yml

 # apply the hpa_exp.yml
kubectl apply -f hpa_exp.yml

# wait for the deployment to be ready
kubectl rollout status deployment/ticketing-api

# port-forward to access the service
kubectl port-forward service/ticketing-api-service 8000:80
