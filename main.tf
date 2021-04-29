



      service_principal {
           client_id     = "b41b7101-9420-474f-a539-a08326ff6478"
           client_secret = "dshfsd"
        }


    }

  # azurerm_kubernetes_cluster_node_pool.example will be created
resource "azurerm_kubernetes_cluster_node_pool" "agentpool" {


      max_pods              = "30"
      mode                  = "User"
      name                  = "internal"
      node_count            = 12
      orchestrator_version  = "${var.orchestrator_version}"
      os_disk_size_gb       = "30"
      os_type               = "Linux"
      priority              = "Regular"
      kubernetes_cluster_id = azurerm_kubernetes_cluster.managedClusters_gore_k8s_preview_name.id
      tags                  = {
           "Environment" = "Production"
        }
      vm_size               = "30"
    }
