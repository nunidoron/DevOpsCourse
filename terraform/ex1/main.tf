provider "kubernetes" {
  config_path = "/Users/doronnuni/.kube/config"
}

resource "kubernetes_secret" "my-sc" {
  metadata {
    name = "my-secret"
  }
  data = {
    "username" = "doron"
  }
}

