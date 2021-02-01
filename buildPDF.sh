#!/bin/bash
w_dir=$(pwd)
find . -name "main.tex" | sed -e 's/\/main.tex//g' | sed -e 's/\.\///g' > .filesList
mkdir -p PDF

declare -A failed
i=0

echo "Inizio"

while IFS= read -r path || [ -n "$path" ] 
do
    docName="${path%"${path##*[!/]}"}"
    docName="${docName##*/}"
    echo ""
    echo "Creazione $docName..."
    cd "$path"
    {
        latexmk -pdf -quiet -interaction=nonstopmode main.tex 
        result=$?
        cd "$w_dir"
        if [ $result != 0 ]; then
            failed[$i]=$docName
            i=$i+1
            continue
        fi
    } &> /dev/null

    cp $path/main.pdf ./PDF/$docName.pdf
    echo "File $docName.pdf creato correttamente."
done <.filesList

if [ $i != 0 ]; then
    echo -e "\n The following documents could not be produced:"
    printf ' - %s\n' "${failed[@]}"
    exit 1
else
    echo ""
    echo "-----------"
    echo ""
    echo "Tutti i documenti sono stati creati correttamente."
fi
exit 0