cd /root
geth --identity "testchain_mainnode"  --rpc  --rpccorsdomain "*" --port "30303"  --rpcapi "db,eth,net,web3,admin,miner,personal,rpc"  --networkid 66666 console 2>1.txt