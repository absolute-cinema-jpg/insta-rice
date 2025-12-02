#!/bin/bash

bottom_bar  --add item volume right \
            --set volume script="$PLUGIN_DIR/volume.sh" \
            --subscribe volume volume_change \
