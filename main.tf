resource "kubernetes_namespace" "this" {
  count = var.create_namespace && var.namespace != "kube-system" ? 1 : 0
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_daemonset" "this" {
  metadata {
    name      = var.name
    namespace = var.namespace

    labels = {
      k8s-app = var.name
    }
  }

  spec {
    selector {
      match_labels = {
        k8s-app = var.name
      }
    }

    template {
      metadata {
        labels = {
          k8s-app = var.name
        }
      }

      spec {
        volume {
          name = "cronfile"

          host_path {
            path = "/etc/cron.d"
            type = "Directory"
          }
        }

        init_container {
          name    = "ssm"
          image   = "amazonlinux"
          command = ["/bin/bash"]
          args    = ["-c", "echo '* * * * * root yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm & rm -rf /etc/cron.d/ssmstart' > /etc/cron.d/ssmstart"]

          volume_mount {
            name       = "cronfile"
            mount_path = "/etc/cron.d"
          }

          termination_message_path   = "/dev/termination-log"
          termination_message_policy = "File"
          image_pull_policy          = "Always"

          security_context {
            allow_privilege_escalation = true
          }
        }

        container {
          name    = "sleeper"
          image   = "busybox"
          command = ["sh", "-c", "echo I keep things running! && sleep 3600"]
        }

        restart_policy                   = "Always"
        termination_grace_period_seconds = 30
        dns_policy                       = "ClusterFirst"
      }
    }
  }
}
