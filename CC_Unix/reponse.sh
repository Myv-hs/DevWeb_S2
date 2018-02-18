mkdir rep
tar -zxvf archive.tar.gz -C rep/
ls -R rep/
rm -r rep/dir1/
find -name hello -exec stat {} \;
find -name hello -exec chmod g-x,o-x {} \;
wc -l rep/appel
grep 'France' rep/appel
find \( -name *.jp*g -a -size -450k \) -print
grep '[a-zA-Z][a-zA-Z]\s*[0-9]\{1,3\}\s*[a-zA-Z][a-zA-Z]' rep/immatriculations_vehicules
paste <(cut -d $'\t' -f2 rep/dir2/data) <(cut -d $'\t' -f1,3 rep/dir2/data) > rep/dir2/villes
paste <(cat rep/dir2/data2 | tr -s $'\t' | cut -d $'\t' -f2) <(cat rep/dir2/data2 |tr -s $'\t'| cut -d $'\t' -f1,3) > rep/dir2/villes2
diff rep/dir2/data rep/dir2/data2
sort rep/dir2/data -t $'\t' -k2
sort rep/dir2/data -nt $'\t' -k3 | cut -d $'\n' -f1-3 > resultat
alias bonjour='clear; echo Bonjour $USER, ce terminal est ouvert depuis $SECONDS secondes.'