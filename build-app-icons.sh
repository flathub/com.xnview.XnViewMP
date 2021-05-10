#!/bin/bash
# Single use script to update program icons

wget https://www.xnview.com/assets/img/app-xnviewmp-512.png

icon_in="app-xnviewmp-512.png"
icon_out="com.xnview.XnViewMP.png"
for s in {16,22,24,32,36,48,64,72,96,128,192,256}; do
	target_dir="share/icons/hicolor/${s}x${s}/apps/"
	mkdir -p ${target_dir}
	convert -background none -density 1024 -resize "${s}x${s}" "${icon_in}" "${target_dir}${icon_out}"
done;
mkdir -p "share/icons/hicolor/512x512/apps/"
mv ${icon_in} "share/icons/hicolor/512x512/apps/${icon_out}"
