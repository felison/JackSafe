#!/bin/bash

# 1 delete contents of jackuser homedirectory
##############################################################################################
cd /             ;
cd home/jackuser ;
find -delete     ;

# 2 Give time for deletion
##############################################################################################
sleep 1         ;

# 3 Copy default jacksafe configs into jackuser home-directory
##############################################################################################

cp -f /opt/jacksafe/share/presets/.bash_logout          /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.bashrc               /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.profile              /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.Xdefaults            /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.xscreensaver         /home/jackuser ;

# 4 reset jackuser configs
##############################################################################################
su jackuser -c opt/jacklinx/bin/set-presets.sh ;
su jackuser -c opt/jacklinx/bin/set-devilspie-1280x1024.sh ;
su jackuser -c devilspie -a

# End of script
##############################################################################################







