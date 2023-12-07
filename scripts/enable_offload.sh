#!/bin/bash

set -xe

#ifconfig $1 multicast allmulti promisc mtu 1500 up
ethtool -K $1 rx on		# RX checksumming
ethtool -K $1 tx on		# TX checksumming
ethtool -K $1 sg on		# scatter gather
ethtool -K $1 tso on		# TCP segmentation offload
ethtool -K $1 ufo on		# UDP fragmentation offload
ethtool -K $1 gso on		# generic segmentation offload
ethtool -K $1 gro on		# generic receive offload
ethtool -K $1 lro on		# large receive offload
ethtool -K $1 rxvlan on	# RX Vlan acceleration
ethtool -K $1 txvlan on	# TX vlan acceleration
ethtool -K $1 ntuple on	# RX ntuple filters and actions
ethtool -K $1 rxhash on	# RX hashing offload
ethtool --set-eee $1 eee on	# Energy Efficient Ethernet
