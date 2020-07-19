resource "kubernetes_persistent_volume" "prometheus" {
  metadata {
    name = "pv-prometheus"

    labels = {
      app = "prometheus"
    }
  }

  spec {
    capacity = {
      storage = "5Gi"
    }

    access_modes                     = ["ReadWriteMany"]
    persistent_volume_reclaim_policy = "Recycle"
    storage_class_name               = "standard"

    persistent_volume_source {
      host_path {
        path = "/opt/kind-data/prometheus"
        type = "Directory"
      }
    }
  }
}
