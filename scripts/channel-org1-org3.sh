# Set environment variables for Org1
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer0.org1.example.com:7051
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt

# Create channel3
peer channel create -o orderer.example.com:7050 -c channel3 -f ./channel-artifacts/channel3.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# Join Org1 peers to channel3
peer channel join -b channel3.block
export CORE_PEER_ADDRESS=peer1.org1.example.com:8051
peer channel join -b channel3.block
export CORE_PEER_ADDRESS=peer2.org1.example.com:9051
peer channel join -b channel3.block

# Set environment variables for Org3
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer0.org3.example.com:13051
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt

# Join Org3 peers to channel3
peer channel join -b channel3.block
export CORE_PEER_ADDRESS=peer1.org3.example.com:14051
peer channel join -b channel3.block
export CORE_PEER_ADDRESS=peer2.org3.example.com:15051
peer channel join -b channel3.block
