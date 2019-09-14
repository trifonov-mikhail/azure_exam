#!/bin/bash
#Initial variables
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster

az aks get-credentials --resource-group $RG_NAME --name $AKS_NAME
