subscription_id = "517c2083-79ab-4981-b474-42fbd9357b57"
## Pre Defined KV for storing secret
devKV_Name = "kv-tw-dev-eaus2-01" #### We have to change as per env
## VNET - SUBNET
rg_Name            = "rg-tw-dev-eaus2-01" ## We have to change as per env
location           = "eastus2"
vnet_Name          = "rg-tw-dev-eaus2-01"
vnet_Address       = "10.0.0.0/16"
subnet_NameList    = ["snet-aks-tw-dev-eus2", "snet-agw-tw-dev-eus2", "snet-shared-tw-dev-eus2", "snet-vm-tw-dev-eus2", "GatewaySubnet"]
subnet_AddressList = ["10.0.0.0/26", "10.0.0.64/26", "10.0.0.128/26", "10.0.0.192/26", "10.0.193.0/26"]
wiki_pass          = "wiki-user-password"
mysql_root_pass    = "mysql-root-password"

### Linux Virtual Machine Deployment

virtual_machine_Usr    = "virtual-machine-user"
virtual_machine_Passwd = "virtual-machine-password"
vm_pip                 = "public_ip_linux"
pip_allocation         = "Dynamic"
vm_nic                 = "linux_vm_nic"
ip_configuration       = "ip_config"
vm_name                = "MediaWiki-RHEL-LAMP-Server"
vm_size                = "Standard_B2s"
vm_username            = "" ## Fetched from KV.
vm_password            = "" ## Fetched from KV.
vm_image_publisher     = "RedHat"
vm_image_offer         = "RHEL"
vm_image_sku           = "8.2"
vm_image_version       = "8.2.2021091101"
vm_os_disk_strg_type   = "Standard_LRS"
vm_os_disk_caching     = "ReadWrite"
