# Set environment variables for Org2
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer0.org2.example.com:10051
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt

# Create channel2
peer channel create -o orderer.example.com:7050 -c channel2 -f ./channel-artifacts/channel2.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# Join Org2 peers to channel2
peer channel join -b channel2.block
export CORE_PEER_ADDRESS=peer1.org2.example.com:11051
peer channel join -b channel2.block
export CORE_PEER_ADDRESS=peer2.org2.example.com:12051
peer channel join -b channel2.block

# Set environment variables for Org3
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer0.org3.example.com:13051
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt

# Join Org3 peers to channel2
peer channel join -b channel2.block
export CORE_PEER_ADDRESS=peer1.org3.example.com:14051
peer channel join -b channel2.block
export CORE_PEER_ADDRESS=peer2.org3.example.com:15051
peer channel join -b channel2.block
