#!/bin/bash

for i in *.odg; 
do name=`echo $i | cut -d'.' -f1`; 
libreoffice --headless --convert-to pdf $i
pdfcrop "$name.pdf"
rm "$name.pdf"
done

for i in *.pdf; 
do name=`echo $i | cut -d'.' -f1`; 
convert -density 300 "$i" "$name.png"; 
done
