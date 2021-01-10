# use this script to delete all latex build files in the workspace
# for UNIX-like environments

<<<<<<< HEAD
find -type f -iname "*.aux" -exec rm -f {} \;
find -type f -iname "*latexmk" -exec rm -f {} \;
find -type f -iname "*.fls" -exec rm -f {} \;
find -type f -iname "*.log" -exec rm -f {} \;
find -type f -iname "*.pdf" -exec rm -f {} \;
find -type f -iname "*.gz" -exec rm -f {} \;
find -type f -iname "*.toc" -exec rm -f {} \;
find -type f -iname "*.out" -exec rm -f {} \;
find -type f -iname "*.orig" -exec rm -f {} \;
find -type f -iname "*.glsdefs" -exec rm -f {} \;
=======
find . -type f -name "*.aux" -delete;
find . -type f -name "*latexmk" -delete;
find . -type f -name "*.fls" -delete;
find . -type f -name "*.log" -delete;
find . -type f -name "*.pdf" -delete;
find . -type f -name "*.gz" -delete;
find . -type f -name "*.toc" -delete;
find . -type f -name "*.out" -delete;
find . -type f -name "*.orig" -delete;
find . -type f -name "*.lof" -delete;
find . -type f -name "*.lot" -delete;
>>>>>>> develop
