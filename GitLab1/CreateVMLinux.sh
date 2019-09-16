#!/bin/bash

az vm create --name quickvm --resource-group ContainerCompute --image Debian:debian-10:10:latest --admin-username student --admin-password StudentPa55w.rd
az vm show --name quickvm --resource-group ContainerCompute
#
# {
#  "fqdns": "",
#  "id": "/subscriptions/f808a1ea-3f56-403c-b4d4-2a0f34ae6ae0/resourceGroups/ContainerCompute/providers/Microsoft.Compute/virtualMachines/quickvm",
#  "location": "eastus",
#  "macAddress": "00-0D-3A-1E-6D-92",
#  "powerState": "VM running",
#  "privateIpAddress": "10.0.0.5",
#  "publicIpAddress": "13.92.158.11",
#  "resourceGroup": "ContainerCompute",
#  "zones": ""
# }
#
#
#
az vm list-ip-addresses --resource-group ContainerCompute --name quickvm
ipAddress=$(az vm list-ip-addresses --resource-group ContainerCompute --name quickvm --query '[].{ip:virtualMachine.network.publicIpAddresses[0].ipAddress}' --output tsv)