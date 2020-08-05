
# All config stored under the configtxgen folder
export  CONFIG_DIRECTORY=./../orderer

export FABRIC_CFG_PATH=$PWD

# Change this to an appropriate level
# export CORE_LOGGING_LEVEL=INFO
export FABRIC_LOGGING_SPEC=INFO

# Variables for setting peer addresses
export CORE_PEER_LISTENADDRESS=localhost:7051
export CORE_PEER_ADDRESS=localhost:7051


# Change this to folder for managing the ledger
# You may use the following to point to the current folder
# Be aware that GoLevelDB does not work well with mounted file systems so you may see
# errors in using the folder that is on host system.
export CORE_PEER_FILESYSTEMPATH=$HOME/ledgers/spritz/peer/ledger

# Identity set to Admin
export CORE_PEER_MSPCONFIGPATH=$CONFIG_DIRECTORY/crypto-config/peerOrganizations/healthcare.com/users/Admin@healthcare.com/msp


# State Data persistence in CouchDB
CORE_LEDGER_STATE_STATEDATABASE=goleveldb
# For Couch DB
# CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=localhost:5984
#CORE_LEDGER_STATE_COUCHDBCONFIG_USERNAME=
#CORE_LEDGER_STATE_COUCHDBCONFIG_PASSWORD=

export NODECHAINCODE=/vagrant/nodechaincode

# Default Chaincode variables
export CC_NAME=gocc
export CC_VERSION=1.0
export CC_LABEL="$CC_NAME.$CC_VERSION-1.0"
export CC_PACKAGE_FILE=$HOME/packages/$CC_LABEL.tar.gz


if [[ $0 = *"env.sh" ]]
then
    echo ". before ./env.sh? "
else
    #./show-env.sh
    echo "Done."
fi
