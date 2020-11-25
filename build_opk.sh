#!/bin/sh

make -j$(nproc) || exit

convert icon.png -resize 32x32! opk_data/icon.png

mksquashfs \
    opk_data/*         \
    nxengine \
    default.gcw0.desktop nxengine-$(date '+%s').opk -noappend
