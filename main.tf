


<<<<<<< HEAD
      kubernetes_version      = "${var.kubernetes_version}"
      lasrgdfghdocation                = azurerm_resource_group.MC_KubernetesPreview.location
      name                    = "managedClusters_gore_k8s_preview_name"
      resource_group_name     = azurerm_resource_group.MC_KubernetesPreview.name



      addon_profile {




          http_application_routing {
              enabled                            = "false"

            }

          kube_dashboard {
              enabled = "true"
            }

   #       oms_agent {
   #          enabled                    = "true"
   #          log_analytics_workspace_id = "workspaces_kubernetespreview_cca_externalid"
   #          oms_agent_identity =  {
   #                         loganalyticsworkspaceresourceid = "[list('workspaces_kubernetespreview_cca_externalid')]"
   #                     }
   #
   #         }
        }



      default_node_pool {
          max_pods             = "30"
          name                 = "agentpool"
          node_count           = 12
          orchestrator_version = "${var.orchestrator_version}"
          os_disk_size_gb      = "30"
          type                 = "${var.type}"
          vm_size              = "30"
        }

      network_profile {
          dns_service_ip     = "${var.dns_service_ip}"
          docker_bridge_cidr = "${var.docker_bridge_cidr}"
          load_balancer_sku  = "Basic"
          network_plugin     = "${var.network_plugin}"

          outbound_type      = "${var.outbound_type}"

          service_cidr       = "${var.service_cidr}"


=======
      
>>>>>>> 3084d058f55d7882bd0500dcd970ca33b0dbbc6a
        }



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
