#!/bin/bash
##########################################################################
#
# Script to notify user of existence of contracts in EOSIO code and get
# consent before installation of software.
#
##########################################################################

printf "\n  Terms of Use"
printf "\n\n  In consideration of your obtaining and running this EOSIO Mainnet software, you agree that you will adhere to each and every Ricardian Contract located in the ./contracts directory.\n\n  The contracts shall be binding to you as per eosio.system-clause-constitution-rc.md and have jurisdiction throughout the world.\n\n  Any breach may initiate an action to be filed with your local government and shall be binding in any court.\n\n  If you did not obtain the entire software package available at https://github.com/EOS-Mainnet/eos, then you may not utilize any portion of the software.\n\n" | fmt

read -p "Do you consent? [y/N] " -n 1 -r
if [[ ! $REPLY =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    exit 1
fi

# build script will continue
