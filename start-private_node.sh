cd /root
geth --identity "testchain_mainnode" --datadir /root/.ethereum --networkid 66666 --rpc --port 30303  --rpccorsdomain "*"   --rpcapi "db,eth,net,web3,admin,miner,personal,rpc"  --bootnodes "enode://42d42e11eec9d82afb41edec0785c13d009d94ac4b73b8294eea151d8be05b74c4d78f89517a06d3b108625e9b52bee9d66f8dec0e70049aa35af4ed3fa44c28@192.168.4.159:30303" console

