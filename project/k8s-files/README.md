# Kubernetes Deployment - QuakeWatch

## Requirements
- Minikube or k3s installed
- kubectl installed

## Steps

### Start Minikube
```bash
minikube start
minikube addons enable metrics-server
```

### Apply Configurations
```bash
cd k8s-files
kubectl apply -f .
```

### Access the Application
```bash
minikube service quakewatch-service
```

## Notes
- Replace `<your-dockerhub-username>` in `deployment.yaml` with your Docker Hub username.
- Ensure metrics-server is installed for HPA.

## HPA Testing Guide

### Ensure Metrics Server is Running
```bash
minikube addons enable metrics-server
kubectl get deployment metrics-server -n kube-system
kubectl top nodes
```


### Verify HPA Status
```bash
kubectl get hpa
```
## Notes
If "CPU target unknown" appears, please wait. it can take up to 3 minutes.


### Generate Load Inside the Cluster
```bash
kubectl run -it load-tester --image=busybox --restart=Never -- /bin/sh
```

Inside the container:
```sh
while true; do wget -q -O- http://quakewatch-service/load; done
```

### Monitor HPA and Pod Scaling (better in a new terminal)
```bash
watch kubectl get hpa
```
## Notes
The pods/minikube can crash. it's ok.  we are overloading the system