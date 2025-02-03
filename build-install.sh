#!/bin/bash

# Check if LOCALVERSION is provided as an argument, if not, default to an empty string
LOCALVERSION=${1:-}

# Build the kernel with the custom LOCALVERSION
time make CC="ccache gcc" KBUILD_BUILD_TIMESTAMP='' LOCALVERSION="$LOCALVERSION" -j8 && read -p "Press enter to continue"

# Install kernel modules and the kernel itself
sudo make modules_install && sudo make install
