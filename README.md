[![Docker build](https://img.shields.io/docker/cloud/automated/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)
[![Docker status](https://img.shields.io/docker/cloud/build/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)
[![Docker pulls](https://img.shields.io/docker/pulls/vaibhavw/nettools?logo=Docker)](https://hub.docker.com/r/vaibhavw/nettools)

# nettools
Container image with network tools for troubleshooting Kubernetes clusters

To check some networking issues in a cluster:

`kubectl run -it --image=vaibhavw/nettools nettools --restart=Never --namespace=default`

Or you can keep the following yaml file handy and run it in a pod

`kubectl apply -f nettools.yaml`

and login to the container

`kubectl exec -it nettools bash --namespace=default`

Pod template example:
````
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
````



Always running pod template example:
````
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

````

If you just want to use the network tools on a docker host:

`docker run -it vaibhavw/nettools`
