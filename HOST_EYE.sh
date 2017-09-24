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

touch $Output

for Target in $(cat $Targets); do
  if [ "`ping -c 1 $Target`" ]; then

    echo "<a href=\"http://$Target\" target="_blank">$Target</a> : up!<br>" >> $Output/subs.html

  else

    echo "<a href=\"http://$Target\" target="_blank">$Target</a> : down!!<br>" >> $Output/subs.html

  fi > /dev/null 2>&1

done


echo '[*] We Have Finished The Process'
