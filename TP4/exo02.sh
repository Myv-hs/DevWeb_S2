read ligne; echo $ligne #lis stdin et met dans ligne, affiche ligne
read ligne; echo $ligne | tr '[A-Z]' '[a-z]'
read ligne; echo $ligne | tr -c '[a-z]' '-'
read ligne; echo $ligne | tr -s ' '
tr -cs 'a-zA-Z0-9' '\n' < fich1 | sort | uniq > fich2
# tr prends tout ce qui n'est pas alphnum (-c 'a-zA-Z0-9'),
# elimine les multiples (-s) et remplace par un '\n'
# ensuite sorte range tout les lignes
# ensuite unique retire les lignes multiples
# finalement on cree fich2 avec les lignes qui restent