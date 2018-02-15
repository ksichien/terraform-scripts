#!/bin/bash
# https://www.terraform.io/intro/getting-started/install.html

INSTALLDIR='.terraform'
LINK='https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip'

IFS='/' read -r -a FILENAME <<< ${LINK}

if [ ! -d "${HOME}/${INSTALLDIR}" ]
then
    mkdir "${HOME}/${INSTALLDIR}"
fi

wget -P "${HOME}/${INSTALLDIR}" ${LINK}
unzip "${HOME}/${INSTALLDIR}/${FILENAME[-1]}" -d "${HOME}/${INSTALLDIR}"
rm "${HOME}/${INSTALLDIR}/${FILENAME[-1]}"

echo "export PATH=\"\$HOME/${INSTALLDIR}:\$PATH\"" >> "${HOME}/.bash_profile"
source "${HOME}/.bash_profile"
