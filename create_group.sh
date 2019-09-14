#!/bin/bash
RG_NAME=lab1_exam_ks
LOCATION=eastus
rgExists=$(az group exists --name RG_NAME)
if[ $rgExists -ge true ] then
	az group delete --name $RG_NAME --yes
fi
az group create --name $RG_NAME --location $LOCATION