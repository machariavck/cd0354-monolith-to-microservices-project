# create K8s cluster
eksctl create cluster -n P3-K8s --version 1.23 --region us-east-2 --ssh-access --ssh-public-key=eks_node.pub -t m5.large --profile superuser -M 3

# create-env
kubectl create secret generic aws --from-file cfg=$HOME/.aws/config --from-file creds=$HOME/.aws/credentials
kubectl create secret generic p3-secrets --from-env-file secrets.env
kubectl create configmap env --from-env-file configmap.env

# deploy
kubectl apply -f backend-feed-deployment.yml
kubectl apply -f backend-user-deployment.yml
kubectl apply -f frontend-deployment.yml
kubectl apply -f frontend-service.yml

kubectl apply -f backend-feed-service.yml
kubectl apply -f backend-user-service.yml
kubectl apply -f reverse-proxy-deployment.yml
kubectl apply -f reverse-proxy-service.yml