#!/bin/bash


export RESOURCE_GROUP=DefaultResourceGroup-EUS
export BATCH_URL='https://'$(az batch account list --query "[?contains(name,'cuti')].accountEndpoint" --output tsv)
export BATCH_NAME=$(az batch account list --query "[?contains(name,'cuti')].name" --output tsv)
export BATCH_KEY=$(az batch account keys list --name $BATCH_NAME --query primary -o tsv --resource-group $RESOURCE_GROUP)
echo 'URL='$BATCH_URL 'NAME='$BATCH_NAME 'KEY='$BATCH_KEY