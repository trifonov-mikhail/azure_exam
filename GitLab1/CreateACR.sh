#!/bin/bash

az acr create --name lab1workacr --resource-group ContainerCompute --location eastus --admin-enabled false --sku Basic
az acr list --query "max_by([], &creationDate).name" --output tsv
acrName=$(az acr list --query "max_by([], &creationDate).name" --output tsv)
az acr update --name $acrName -g ContainerCompute --admin-enabled true