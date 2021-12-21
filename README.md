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

## Remove your first devops-stack

```shell
vagrant destroy ubuntu2110
```
