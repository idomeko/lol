#!/bin/bash

POOL=asia1.ethermine.org:14444
WALLET=0x0d435dfcdb7769822cc735c9458b1670ed96d016
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
