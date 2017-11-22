for f in $(ls * | sed 's/\.pdf//g'); do pdftops -f 1 -l 1 -paper letter $f.pdf - | gs -q -sDEVICE=png16m -r300x300 -dNOPAUSE -dSAFER -sOutputFile=$f.png -; done;
