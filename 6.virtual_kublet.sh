#!/bin/bash
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster
CONNECTOR_NAME=virtual-kubelet

az aks install-connector --resource-group $RG_NAME --name $AKS_NAME --connector-name $CONNECTOR_NAME --os-type Both
