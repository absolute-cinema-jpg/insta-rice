#!/bin/bash
say "volume"
$BAR_NAME  --add item volume right \
            --set volume script="$PLUGIN_DIR/volume.sh" \
            --subscribe volume volume_change \
