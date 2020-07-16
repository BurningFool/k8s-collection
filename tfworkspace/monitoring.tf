resource "kubernetes_namespace" "monitoring" {
	metadata {
		name = "monitoring"
	}
}

module "prometheus" {
  source = "../prometheus/terraform"
}

module "node-exporter" {
  source = "../node-exporter/terraform"
}

module "grafana" {
  source = "../grafana/terraform"
}


module "es-master" {
  source = "../es-master/terraform"
}

module "es-data" {
  source = "../es-data/terraform"
}

module "es-hq" {
  source = "../es-hq/terraform"
}

module "es-kibana" {
  source = "../es-kibana/terraform"
}

module "es-filebeat" {
  source = "../es-filebeat/terraform"
}

module "es-exportor" {
  source = "../es-exportor/terraform"
}

