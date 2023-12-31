subscription_id = "517c2083-79ab-4981-b474-42fbd9357b57"
## Pre Defined KV for storing secret
devKV_Name         = "kv-tw-dev-eaus2-01"        #### We have to change as per env
akskv_SPClientID   = "spclientid"         ## SP Client ID - replace with created secret name
akskv_SPClientSec  = "spclientsec"        ## SP Client Secret - replace with created secret name
sqlkv_AdmUsrPasswd = "mysqladmuserpasswd" ## MySQL Server Admin user password - replace with created secret name
## VNET - SUBNET
rg_Name            = "rg-tw-dev-eaus2-01" ## We have to change as per env
location           = "eastus2"
vnet_Name          = "vnet-tw-dev-eaus2-01"
vnet_Address       = "10.16.0.0/22"
subnet_NameList    = ["snet-aks-tw-dev-eaus2-01", "snet-agw-tw-dev-eaus2-01", "snet-shared-tw-dev-eaus2-01", "snet-vm-tw-dev-eaus2-01", "snet-gw-tw-dev-eaus2-01"]
subnet_AddressList = ["10.16.0.0/26", "10.16.0.64/26", "10.16.0.128/26", "10.16.0.192/26", "178.29.193.0/26"]

### For APP GWY                = ###
appgtwy_PublicIPName       = "pip-agw-tw-dev-eaus2-01"
appgtwy_AllocationMethod   = "Static"
appgtwy_PipSKU             = "Standard"
appgtwy_MSIName            = "mgd-id-devapp"
appgtwy_BackendAddressPool = "agw-tw-dev-backend-address-pool"
appgtwy_FrontEndPort       = "agw-tw-dev-frontend-port"
appgtwy_FrondEndIPConfig   = "agw-tw-dev-frontend-ip-config"
appgtwy_HttpSetting        = "agw-tw-dev-http-setting"
appgtwy_ListenrHttp        = "agw-tw-dev-listner"
appgtwy_RequetRoutingRule  = "agw-tw-dev-request-routing-rule"
appgtwy_RedirectConfig     = "agw-tw-dev-redirect-config"
appgtwy_Name               = "agw-tw-dev-eus2"
#appgtwy_Zones                  = ["1", "2", "3"]
appgtwy_SKUName      = "Standard_v2"
appgtwy_SKUTier      = "Standard_v2"
appgtwy_CapacityMin  = 1
appgtwy_CapacityMax  = 2
appgtwy_IdentityType = "UserAssigned"
appgtwy_IPConfig     = "agw-tw-dev-ip-configuration"

### Frontdoor                  = ###
FrontDoor_Name                = "devfd"
FD_RoutingRuleName            = "devfd-routing-rule"
FD_FrontEndPointName          = "devfd-azurefd-net"
FD_FrontEndHostName           = "devfd.azurefd.net"
FD_forwdProtocal              = "HttpsOnly" #HttpsOnly
FD_BackendPoolName            = "devfdbkendpool"
FD_BackendLBName              = "devfdlb01"
FD_BackendPoolHealthProbeName = "devfdpoolhp01"
FD_BackendPoolHost            = "www.google.com"
FD_BackendPoolHostAddress     = "www.google.com"

### Key Vault                  = ###
keyvalut_Name = "kv-dev-eus2-01"
keyvalut_SKU  = "standard"


##
### For MySQL Server
MySQLServer_Name          = "mysql-dev-eus2"
MySQLServer_AdminUserName = "mysqladmin"
#MySQLServer_AdminUserPasswd        = "" ## This should be fetched from KV
MySQLServer_Version                 = "8.0"
MySQLServerStorageSize              = 102400     ## equalent to 100GB
MySQLServerSKU_Name                 = "B_Gen5_2" ## "GP_Gen5_4" , "GP_Gen5_8"
MySQLServer_StorageAutoGrowEnabled  = true
MySQLServer_BkpRentionPeriod        = 7     ## Allowed values 7 & 35 
MySQLServer_GeoRedunBkpEnabled      = false ## For basic SKU, this is not support
MySQLServer_InfraEncryptionEnabled  = false
MySQLServer_PubNetworkAccessEnabled = true
MySQLServer_SSLEnforcementEnabled   = true
MySQLServer_SSLVersion              = "TLS1_2"
MySQLDB_Name                        = "terra-dev-sqldb"
MySQLCharSet                        = "utf8"
MySQlCollection                     = "utf8_unicode_ci"

### StorageAccount             = ###
storageaccount_Name            = "stadeveus2"
storageaccount_Tier            = "Standard"
storageaccount_Kind            = "StorageV2"
storageaccount_ReplicationType = "LRS"
storageaccount_ContainerName   = "devdata"

### SQL Server deployment
sqlservername = "sushterratest"
sql_version   = "12.0"
# sql_user        = var.sql_user # This will be fetched from key vault using data source
# sql_password    = var.sql_password # This will be fetched from key vault using data source
sqlkv_AdmUsr    = "sqluser"     # Name of the key vault secret used to store User name
sqlkv_AdmPasswd = "sqlpassword" # Name of the key vault secret used to store SQL Password

### SQL Database deployment

mssqldb             = "testterradb"
sql_collation       = "SQL_Latin1_General_CP1_CI_AS"
sql_license_type    = "LicenseIncluded"
sql_db_max_size     = 4
sql_sku_name        = "BC_Gen5_2"
short_term_ret_days = 15
weekly_retention    = "P7D"
monthly_retention   = "P1M"
yearly_retention    = "P365D"
week_of_year        = 4

### Linux Virtual Machine Deployment

virtual_machine_Usr    = "virtual-machine-user"
virtual_machine_Passwd = "virtual-machine-password"
vm_pip                 = "public_ip_linux"
pip_allocation         = "Dynamic"
vm_nic                 = "linux_vm_nic"
ip_configuration       = "ip_config"
vm_name                = "linux-terra-vm"
vm_size                = "Standard_B2s"
vm_username            = "" ## Fetched from KV.
vm_password            = "" ## Fetched from KV.
vm_image_publisher     = "Canonical"
vm_image_offer         = "UbuntuServer"
vm_image_sku           = "16.04-LTS"
vm_image_version       = "latest"
vm_os_disk_strg_type   = "Standard_LRS"
vm_os_disk_caching     = "ReadWrite"
