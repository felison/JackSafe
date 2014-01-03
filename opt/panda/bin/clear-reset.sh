#!/bin/bash

# 1 delete contents of panda homedirectory
##############################################################################################
cd /            ;
cd home/panda   ;
find -delete    ;

# 2 Give time for deletion
##############################################################################################
sleep 1         ;

# 3 Copy default configs into panda home-directory
##############################################################################################

cp -f /opt/panda/share/presets/.bash_logout          /home/panda ;
cp -f /opt/panda/share/presets/.bashrc               /home/panda ;
cp -f /opt/panda/share/presets/.profile              /home/panda ;
cp -f /opt/panda/share/presets/.Xdefaults            /home/panda ;
cp -f /opt/panda/share/presets/.xscreensaver         /home/panda ;

# 4 reset jacklinx configs
##############################################################################################
su panda -c opt/jacklinx/bin/set-presets.sh ;
su panda -c opt/jacklinx/bin/set-devilspie-1280x1024.sh ;
su panda -c devilspie -a

# End of script
##############################################################################################







