#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.shavermacoincore/shavermacoind.pid file instead
shavermacoin_pid=$(<~/.shavermacoincore/testnet3/shavermacoind.pid)
sudo gdb -batch -ex "source debug.gdb" shavermacoind ${shavermacoin_pid}
