#!/bin/bash
#Initial variables
RG_NAME=lab1_exam_ks
LOCATION=eastus
AKS_NAME=akscluster
AKS_RG="MC_${RG_NAME}_${AKS_NAME}_${LOCATION}"

rgExists=$(az group exists --name $RG_NAME)
if [ "$rgExists" = true ] ; then
	echo "Deleting group $AKS_RG"
    az group delete --name $AKS_RG --yes
    echo "Deleting group $RG_NAME"
	az group delete --name $RG_NAME --yes    
fi
