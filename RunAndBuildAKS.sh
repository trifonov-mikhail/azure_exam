#!/bin/bash
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster
NODE_COUNT=1


#check if exists group
rgExists=$(az group exists --name $RG_NAME)
if [ "$rgExists" = true ] ; then
	echo "Deleting group $RG_NAME"
	az group delete --name $RG_NAME --yes
fi
echo "Creating group $RG_NAME"
az group create --name $RG_NAME --location $LOCATION

#create aks
echo "Creating AKS ${AKS_NAME}"
az aks create --resource-group $RG_NAME --name $AKS_NAME --node-count $NODE_COUNT --enable-addons monitoring --generate-ssh-keys

echo "Getting credential ${AKS_NAME}"
az aks get-credentials --resource-group $RG_NAME --name $AKS_NAME --overwrite-existing
