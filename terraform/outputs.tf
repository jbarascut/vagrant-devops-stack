# terraform/outputs.tf

output "kubeconfig" {
  sensitive = true
  value     = module.cluster.kubeconfig
}

output "argocd_server_admin_password" {
  sensitive = true
  value     = module.cluster.argocd_server_admin_password
}

output "keycloak_admin_password" {
  sensitive = true
  value     = module.cluster.keycloak_admin_password
}

output "grafana_admin_password" {
  sensitive = true
  value     = module.cluster.grafana_admin_password
}

output "keycloak_users" {
  value     = module.cluster.keycloak_users
  sensitive = true
}