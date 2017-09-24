#!/bin/bash

echo "



                           _   _  ___  ____ _____   _______   _______
                          | | | |/ _ \/ ___|_   _| | ____\ \ / / ____|
                          | |_| | | | \___ \ | |   |  _|  \ V /|  _|
                          |  _  | |_| |___) || |   | |___  | | | |___
                          |_| |_|\___/|____/ |_|___|_____| |_| |_____|
                                             |_____|

                                       By @Mahmoud0x00


"

read -p '[*] Enter The Path of the Targets List : ' Targets
read -p '[*] Enter The Path of Output Folder : ' Output
read -p '[*] Enter The File Name of Output File where the script will save the results (only .html) : ' Filename

touch $Output/$Filename

for Target in $(cat $Targets); do
  if [ "`ping -c 1 $Target`" ]; then

    echo "<a href=\"http://$Target\" target="_blank">$Target</a> : up!<br>" >> $Output/$Filename

  fi > /dev/null 2>&1

done


echo '[*] We Have Finished The Process'
