#!/bin/bash
#Initial variables
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster
ACR_NAME="lab1examACR"

az acr create --resource-group $RG_NAME --name $ACR_NAME --sku Basic
