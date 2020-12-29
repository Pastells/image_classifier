#!/bin/bash
# bar over vowel takes extra character
tail -n +2 data.csv | while read line; do
    folder=${line:9:3}
    folder=${folder%\"*}
    mkdir -p $folder
    mv train_image_${line:1:5}.png $folder
done

# avoid problems with strange symbols in python
mv aā abar
mv eē ebar
mv iı̄ ibar
mv oō obar
mv uū ubar
