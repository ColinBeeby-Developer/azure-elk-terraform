# Terraform and ELK Stack on Azure

Files here will allow anyone to quickly commission an ELK stack an Azure

## Getting Started

You will need an existing account on Azure to be able to perform this operation.

```az login```

Clone this repository into a folder. Change directory into the folder. 

```terraform plan main.tfplan```

```terraform apply main.tfplan```

## Browsing to the ELK stack
One of the outputs of the terraform apply operation will be the public_ip_address.
Browse to:
```http://<public_ip_address>:5601```

## SSH to the virtual machine
In order to be able to ssh to the virtual machine which has been created you'll first need to get the ssh private key which was generated.
```terraform output -raw tls_private_key > id_rsa```

You can now ssh to the virtual machine
```ssh -i id_rsa azureuser@<public_ip_address>```

## Removing the ELK Stack
Simple run
```terraform destroy```

## Useful info
Most of this code was produced with the assistance of info on this page
```https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-portal```
