# AKS + Keycloak

## Installation

This Terraform script creates the following:

1. Azure resource group
1. Azure AKS Kubernetes cluster
1. Keycloack software (via Helm chart, with the values set example)

The commands are standard for Terraform:

        $ terraform init
        $ terraform plan
        $ terraform apply

## Proxy

After the cluster is created and a machine is connected to it via kubectl, the following port-forwarding could be applied:

        $ kubectl port-forward service/keycloak-http 8001:80

Connection of kubectl to the newly created cluster could be done via standard az cli command:

        $ az aks get-credentials --resource-group kubernetes --name kubernetes

## Connect to UI

After the port-forwarding command is started, the Keycloack fresh installation (based on PostgreSQL) will be accessible by: http://localhost:8001 The very first installation requires to create an admin user via UI.