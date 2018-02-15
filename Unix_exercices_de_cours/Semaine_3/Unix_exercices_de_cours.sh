#1. {Ctrl}+{Alt}+T

#2
pwd

#3 montre les fichiers contenant les programmes accessibles de n'importe ou dans le terminal.
echo $PATH

#4
echo Un ete a Paris > CeFichierAUnNomTresLong

#5
cat #CeF+{Tab}

#6 
cut -b 1-6 CeFichierAUnNomTresLong
# Les characteres a accent utilisent 2 ocets.

#7
ln -s CeFichierAUnNomTresLong lienSym
ln CeFichierAUnNomTresLong lienPhy
cp CeFichierAUnNomTresLong copie

#8
rm CeFichierAUnNomTresLong
#lienSym est mort, lienPhy + copie fonctionne encore

#9
rm *lien* copie

#10
alias bonjour='clear; echo Ce terminal a ete lance il y a $SECONDS secondes'

unalias bonjour