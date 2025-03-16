# Channel 1 (Org1 and Org2)
configtxgen -profile Channel1 -outputCreateChannelTx ./channel-artifacts/channel1.tx -channelID channel1

# Channel 2 (Org2 and Org3)
configtxgen -profile Channel2 -outputCreateChannelTx ./channel-artifacts/channel2.tx -channelID channel2

# Channel 3 (Org1 and Org3)
configtxgen -profile Channel3 -outputCreateChannelTx ./channel-artifacts/channel3.tx -channelID channel3
