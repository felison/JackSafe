#!/bin/bash

#   Panda
#   Fred de Borst
#   april 2013
#   http://www.jacklinx.nl
#   felison@gmx.net
#
#   Script to be run by cronjob to reset default configurations in panda home directory
#

# Section 1 - Make directories
##############################################################################################

mkdir -p       home/panda ;
chmod -R 755   home/panda ;

# Section 2 - Copy preset files into panda home-directory
############################################################################################

cp -f /opt/panda/share/presets/.bash_logout          /home/panda ;
cp -f /opt/panda/share/presets/.bashrc               /home/panda ;
cp -f /opt/panda/share/presets/.profile              /home/panda ;
cp -f /opt/panda/share/presets/.Xdefaults            /home/panda ;
cp -f /opt/panda/share/presets/.xscreensaver         /home/panda ;

# End of script
#####################################################################################################






