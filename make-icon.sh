#!/bin/bash

SOURCE="/root/logo_transparent.png"

cd /home/myidcommunity_deploy/live/app/javascript/icons

for prefix in android-chrome apple-touch-icon favicon
do
  for icon in $prefix-*
  do
    suffix=${icon#$prefix-}
    resolution=${suffix%.png}
    echo -n "."
    convert -scale $resolution ${SOURCE} "${icon}"
  done
done
convert -scale 48x48 ${SOURCE} /home/myidcommunity_deploy/live/public/favicon.ico
echo " done"
