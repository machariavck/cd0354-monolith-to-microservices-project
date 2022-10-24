# Project 3 [Udacity Nanodegree]
In this project, you had to refactor a large monolithic application into microservices and then deploy it to an EKS Cluster.

## Screenshots
To help review the provisioned K8s cluster and related resources

### Deployment Pipeline
* DockerHub showing containers that you have pushed
![Image](./screenshots/newly_pushed_images.png)

* GitHub repository’s settings showing a CircleCI webhook
![Image](./screenshots/ci_webhook.png)

* CircleCI showing a successful build and deploy job
![Image](./screenshots/CI_pipeline_success.png)

### Kubernetes
* Verifies Kubernetes pods are deployed properly
```bash
kubectl get pods
```
![Image](./screenshots/get_pods.png)

* Verifies Kubernetes services are properly set up
```bash
kubectl describe services
```
![Image](./screenshots/describe_svc_1.png)
![Image](./screenshots/describe_svc_2.png)
![Image](./screenshots/describe_svc_3.png)

* Verifies that horizontal scaling is set against CPU usage
P.S. a metrics server had to be installed
```bash
kubectl describe hpa
```
![Image](./screenshots/describe_hpa.png)

### Activity Logging
* Verifies logging is set up with a backend application
```bash
kubectl logs {pod_name}
```
![Image](./screenshots/logging_activity.png)


## Successful Deployment
* Screenshots showing interaction with the app
![Image](./screenshots/successful_deployment_1.png)
![Image](./screenshots/successful_deployment_2.png)

