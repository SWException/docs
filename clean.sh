# use this script to delete all latex build files in the workspace
# for UNIX-like environments

find . -type f -name "*.aux" -delete;
find . -type f -name "*latexmk" -delete;
find . -type f -name "*.fls" -delete;
find . -type f -name "*.log" -delete;
find . -type f -name "*.pdf" -delete;
find . -type f -name "*.gz" -delete;
find . -type f -name "*.toc" -delete;
find . -type f -name "*.out" -delete;
find . -type f -name "*.orig" -delete;