resource "kubernetes_cron_job" "cron_job" {
  metadata {
    name      = "sites-availability-bot"
    namespace = "dev-developers-sites-availability"
  }
  spec {
    schedule = var.schedule
    job_template {
      metadata {}
      spec {
        template {
          metadata {}
          spec {
            restart_policy = "Never"
            container {
              name              = "sites-availability-bot"
              image             = "longmama/sites-availability-bot"
              image_pull_policy = "IfNotPresent"
              env {
                name  = "BOT_TOKEN"
                value = var.bot_token
              }
              env {
                name  = "CHAT_IDS"
                value = var.chat_ids
              }
              env {
                name  = "HOSTS"
                value = var.hosts
              }
              resources {
                requests = {
                  memory = "256Mi"
                  cpu    = "0.2"
                }
                limits = {
                  memory = "1024Mi"
                  cpu    = "1"
                }
              }
            }
          }
        }
      }
    }
  }
  depends_on = [kubernetes_namespace.namespace]
}
