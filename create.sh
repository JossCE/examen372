#! /bin/bash

rm -rf webapp

read -p "Introduce la cantidad de archivos a crear:" numfiles

mkdir -p webapp 
cd webapp

for x in $( seq 1 $numfiles )
do
    echo "Archivo ${x}" > "file${x}.txt"
done

for file in index.html style.css app.js main.py
do
    touch ./"${file}"
done

curl -o meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"

mkdir css
mkdir js
mkdir docs
mkdir img

mv style.css css/
mv app.js js/
mv meme.jpg img/

cd docs
mkdir text
mkdir python
cd ..
mv main.py ./docs/python/
mv file*.txt ./docs/text/




