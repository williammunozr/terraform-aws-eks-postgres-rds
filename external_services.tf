/* 
    External Services
    Develop By: William MR
*/

resource "kubernetes_service" "rds" {
  metadata {
    name = "codimddb"
  }

  spec {
    type = "ExternalName"
    #external_name = element(split(":", module.db.this_db_instance_endpoint), 0)
    external_name = module.db.db_instance_endpoint
  }
}