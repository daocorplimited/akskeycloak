resource "helm_release" "keycloak" {
  name = "keycloak"
  namespace = "default"
  repository = "https://codecentric.github.io/helm-charts"
  chart      = "keycloak" 
  depends_on = [azurerm_kubernetes_cluster.kubernetes, data.azurerm_kubernetes_cluster.credentials]

}