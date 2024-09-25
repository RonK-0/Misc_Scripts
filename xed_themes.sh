#!/bin/bash
echo "Additional Color Schemes for Xed Text Editor"
git clone "https://github.com/trusktr/gedit-color-schemes.git"
cp -r gedit-color-schemes/gtksourceview-3.0/styles/* ~/.local/share/xed/styles
rm -rf gedit-color-schemes
