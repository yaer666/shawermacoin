## InstantSend Technical Information

InstantSend has been integrated into the Core Daemon in two ways:
* "push" notifications (ZMQ and `-instantsendnotify` cmd-line/config option);
* RPC commands.

#### ZMQ

When a "Transaction Lock" occurs the hash of the related transaction is broadcasted through ZMQ using both the `zmqpubrawtxlock` and `zmqpubhashtxlock` channels.

* `zmqpubrawtxlock`: publishes the raw transaction when locked via InstantSend
* `zmqpubhashtxlock`: publishes the transaction hash when locked via InstantSend

This mechanism has been integrated into Bitcore-Node-Shavermacoin which allows for notification to be broadcast through Insight API in one of two ways:
* WebSocket: [https://github.com/shavermacoinpay/insight-api-shavermacoin#web-socket-api](https://github.com/shavermacoinpay/insight-api-shavermacoin#web-socket-api)
* API: [https://github.com/shavermacoinpay/insight-api-shavermacoin#instantsend-transactions](https://github.com/shavermacoinpay/insight-api-shavermacoin#instantsend-transactions)

#### Command line option

When a wallet InstantSend transaction is successfully locked a shell command provided in this option is executed (`%s` in `<cmd>` is replaced by TxID):

```
-instantsendnotify=<cmd>
```

#### RPC

Details pertaining to an observed "Transaction Lock" can also be retrieved through RPC. There is a boolean field named `instantlock` which indicates whether a given transaction is locked via InstantSend. This field is present in the output of some wallet RPC commands e.g. `listsinceblock`, `gettransaction` etc. as well as in the output of some mempool RPC commands e.g. `getmempoolentry` and a couple of others like `getrawmempool` (for `verbose=true` only).
