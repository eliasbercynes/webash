#!/bin/bash

# ler o arquivo html e procurar por tudo que estiver dentro de <BASH>
# e salvar em um arquivo index.sh
grep "<BASH" index.html | sed -E  's/(<|BASH|>)//g' | bash > index.sh


# redirecionar o conteudo de index.sh para dentro da tag <BASH <p>resultado</p> > e remover <BASH e >
sed -E -i "s/<BASH.*>$/<p>$(cat index.sh)<\/p>/g" index.html

##### So esta funcionando para ***UMA*** tag <BASH BASH> de cada vez no index.html






# pega o numero da linha onde BASH foi inserido
# nu=$(grep -n "<BASH" index.html | grep -o "^[0-9]*[0-9]")