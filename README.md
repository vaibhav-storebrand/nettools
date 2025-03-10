
# nettools: Kubernetes Networking Debugging Tool

[![Docker Build Status](https://img.shields.io/docker/cloud/automated/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)  
[![Docker Build Status](https://img.shields.io/docker/cloud/build/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)  
[![Docker Pulls](https://img.shields.io/docker/pulls/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)

`nettools` is a container image packed with essential network troubleshooting tools, ideal for diagnosing and resolving network issues within Kubernetes clusters.

## Getting Started

### Running in Kubernetes

To run the `nettools` container interactively in your cluster, execute the following command:

```bash
kubectl run nettools --image=vaibhavw/nettools --namespace=default --restart=Never -it
```

Alternatively, you can apply the pod definition directly from a YAML file:

```bash
kubectl apply -f nettools.yaml
```

Then, log into the container:

```bash
kubectl exec -it nettools --namespace=default -- bash
```

### Pod Definitions

You can create a pod using one of the following templates.

#### Simple Pod (1 Hour Duration)

This example creates a pod that will run for one hour:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nettools
  namespace: default
spec:
  containers:
  - name: nettools
    image: vaibhavw/nettools:latest
    command:
      - sleep
      - "3600"
    imagePullPolicy: IfNotPresent
  restartPolicy: Never
```

#### Pod with Auto-Restart on Failure

If you want the pod to restart automatically, use this configuration:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nettools
  namespace: default
spec:
  containers:
  - name: nettools
    image: vaibhavw/nettools:latest
    command:
      - sleep
      - "3600"
    imagePullPolicy: IfNotPresent
  restartPolicy: Always
```

#### Infinite Running Pod

For continuous, indefinite execution:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nettools
  namespace: default
spec:
  containers:
  - name: nettools
    image: vaibhavw/nettools:latest
    command:
      - sleep
      - "infinity"
    imagePullPolicy: IfNotPresent
  restartPolicy: Always
```

### Running on Docker

If you want to use the tools on a standalone Docker host, simply run:

```bash
docker run -it vaibhavw/nettools
```
