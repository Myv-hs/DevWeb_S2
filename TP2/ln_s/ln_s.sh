#1
ls -al ../../TP1/dirA/ > test1.txt

#2
ln -s test1.txt test2.txt

#3
rm test1.txt

#4
cat test2.txt
# cat: test2.txt: No such file or directory
# lien symbolique mort

#5
mkdir test3

#6
ln -s test3 test4

#7
rmdir test3
#rm -r test3

#8
cd test4
#cat: test2.txt: No such file or directory