# Quickly run devops-stack

## Prerequisites

- virtualbox
- vagrant

## Available box
  
- ubuntu2110
- ubuntu2104
- ubuntu2004
- ubuntu1804

## Launch your first devops-stack

```shell
vagrant plugin install vagrant-hostsupdater
git clone git@github.com:jbarascut/vagrant-devops-stack.git
vagrant up ubuntu2110
vagrant ssh ubuntu2110
cd terraform
terraform init
terraform apply
```

At the end of the provisionning, you can use k9s to visualise the stack

```shell
terraform output -json kubeconfig | jq -r . > kubeconfig.yaml
export KUBECONFIG=kubeconfig.yaml
k9s
```

## Kubernetes Services

https://argocd.apps.my-cluster.172-17-0-9.nip.io:8443
https://alertmanager.apps.my-cluster.172-17-0-9.nip.io:8443
https://grafana.apps.my-cluster.172-17-0-9.nip.io:8443
https://prometheus.apps.my-cluster.172-17-0-9.nip.io:8443
https://minio.apps.my-cluster.172-17-0-9.nip.io:8443
https://thanos-bucketweb.apps.172-17-0-9.nip.io:8443
https://thanos-query.apps.172-17-0-9.nip.io:8443

## Remove your first devops-stack

```shell
vagrant destroy ubuntu2110
```
