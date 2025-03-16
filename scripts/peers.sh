# Channel 5 anchor peer updates
configtxgen -profile Channel1 -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors_channel1.tx -channelID channel1 -asOrg Org1MSP
configtxgen -profile Channel1 -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors_channel1.tx -channelID channel1 -asOrg Org2MSP

# Channel 2 anchor peer updates
configtxgen -profile Channel2 -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors_channel2.tx -channelID channel2 -asOrg Org2MSP
configtxgen -profile Channel2 -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors_channel2.tx -channelID channel2 -asOrg Org3MSP

# Channel 3 anchor peer updates
configtxgen -profile Channel3 -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors_channel3.tx -channelID channel3 -asOrg Org1MSP
configtxgen -profile Channel3 -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors_channel3.tx -channelID channel3 -asOrg Org3MSP
