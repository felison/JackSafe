#!/bin/bash

#   JackSafe
#   Fred de Borst
#   april 2013
#   http://www.jacklinx.nl
#   felison@gmx.net
#
#   Script to be run by cronjob to reset default configurations in jackuser home directory
#

# Section 1 - Make directories
##############################################################################################

mkdir -p       home/jackuser ;
chmod -R 755   home/jackuser ;

# Section 2 - Copy jacksafe preset files into jackuse home-directory
############################################################################################

cp -f /opt/jacksafe/share/presets/.bash_logout          /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.bashrc               /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.profile              /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.Xdefaults            /home/jackuser ;
cp -f /opt/jacksafe/share/presets/.xscreensaver         /home/jackuser ;

# End of script
#####################################################################################################






