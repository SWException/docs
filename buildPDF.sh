#!/bin/sh
w_dir=$(pwd)
find . -name "main.tex" | sed -e 's/\/main.tex//g' | sed -e 's/\.\///g' > .filesList
mkdir PDF
while IFS= read -r path || [ -n "$path" ] 
do
    docName="${path%"${path##*[!/]}"}"
    docName="${docName##*/}"
    cd "$path"
    latexmk -pdf -interaction=nonstopmode main.tex
    cd "$w_dir"
    mv $path/main.pdf ./PDF/$docName.pdf
done <.filesList

