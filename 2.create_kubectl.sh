#!/bin/bash
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster
NODE_COUNT=1


az aks create --resource-group $RG_NAME --name $AKS_NAME --node-count $NODE_COUNT --enable-addons monitoring --generate-ssh-keys