#!/bin/bash
# source: https://blogs.msdn.microsoft.com/eugene/2016/11/03/creating-azure-resources-with-terraform/

# install azure cli
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list
apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
apt-get install apt-transport-https -y
apt-get update && apt-get install azure-cli -y

# install jq
apt-get install jq -y

# download azure-setup.sh
LINK='https://raw.githubusercontent.com/hashicorp/packer/master/contrib/azure-setup.sh'
LOCATION='/tmp'

IFS='/' read -r -a FILENAME <<< ${LINK}

wget -P ${LOCATION} ${LINK}
echo "Please execute the ${LOCATION}/${FILENAME[-1]} script."
