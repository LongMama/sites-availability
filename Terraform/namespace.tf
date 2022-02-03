resource "kubernetes_namespace" "namespace" {
  metadata {
    labels = {
      project = "sites-availability"
    }
    name = "dev-developers-sites-availability"
  }
}
