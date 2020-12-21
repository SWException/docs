# use this script to delete all latex build files in the workspace
# for UNIX-like environments

find -type f -iname "*.aux" -exec rm -f {} \;
find -type f -iname "*latexmk" -exec rm -f {} \;
find -type f -iname "*.fls" -exec rm -f {} \;
find -type f -iname "*.log" -exec rm -f {} \;
find -type f -iname "*.pdf" -exec rm -f {} \;
find -type f -iname "*.gz" -exec rm -f {} \;
find -type f -iname "*.toc" -exec rm -f {} \;
find -type f -iname "*.out" -exec rm -f {} \;
find -type f -iname "*.orig" -exec rm -f {} \;
