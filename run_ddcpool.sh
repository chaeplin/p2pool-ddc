#!/bin/sh

echo "open file error ? do : ulimit -n 16384"

SERVICE='python ./run_p2pool.py --net dokdocoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen -d -m -S P2P_DDC_DIFF python ./run_p2pool.py --net dokdocoin --give-author 0 --disable-upnp -f 0

	wait
fi
