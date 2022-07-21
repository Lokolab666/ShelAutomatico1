#! /bin/bash

declare -A map

map["shellAuto1"]="ShelAutomatico1"
map["shellAuto2"]="ShelAutomatico2"

git init

git add nuevo.txt
git commit -m "Commit auto"

for i in "${!map[@]}"
do
    git remote add $i git@github.com:Lokolab666/${map[$i]}.git
    git push -u $i RamaAuto
done
