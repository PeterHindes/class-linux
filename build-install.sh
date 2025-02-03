#!/bin/bash
make LOCALVERSION= -j8 && read -p "Press enter to continue"
sudo make modules_install && sudo make install
