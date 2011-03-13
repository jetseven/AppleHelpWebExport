#!/bin/bash

SRC_DIR=$(dirname "${0}")
DEST_DIR=$(basename ${VPWebExportOutputDirectory})
#PRODUCT_NAME is used in a sed expressions, so any spaces will have to be escaped
PRODUCT_NAME='ProductName'
ICON_FILE='generic.png'

cp "${SRC_DIR}/style.css" "${VPWebExportOutputDirectory}/"

#'/Developer/Applications/Utilities/Help Indexer.app/Contents/MacOS/Help Indexer' ${VPWebExportOutputDirectory} &

/usr/bin/hiutil -Cf "${VPWebExportOutputDirectory}/${DEST_DIR}.helpindex" "${VPWebExportOutputDirectory}"

sed -i~ s:^\<\!--\ AppleTitle\ --\>$:\<meta\ name=\"AppleTitle\"\ content=\"${PRODUCT_NAME}\ Help\"\ /\>: ${VPWebExportOutputDirectory}/index.html
sed -i~ s:^\<\!--\ AppleIcon\ --\>$:\<meta\ name=\"AppleIcon\"\ content=\"${ICON_FILE}\"\ /\>: ${VPWebExportOutputDirectory}/index.html

rm ${VPWebExportOutputDirectory}/category_*

open ${VPWebExportOutputDirectory}/index.html
open ${VPWebExportOutputDirectory}
