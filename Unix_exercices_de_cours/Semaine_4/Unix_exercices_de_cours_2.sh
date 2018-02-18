#1
echo $((5*(7-3)+4))

#2
x=8;y=9
echo $((x+y))
unset x y

#3
cd ..
cd /export

#4
nano fable.txt
tar -zcvf fable.tar.gz fable.txt
stat fable.txt #Size: 545
stat fable.tar.gz #Size: 472

#5
mkdir decompression
tar zxvf fable.tar.gz -C $PWD/decompression/
