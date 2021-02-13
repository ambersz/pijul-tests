pijul init a
cd a
touch file
pijul add file
pijul record -am "empty"
#Hash: CQQXDCQJA7EYLO37MQZMLNVI2LCTN5KPRLRUBS4T7JM3LMPG2NNAC
echo "a" >> file 
pijul record -am "a"
#Hash: ZQW6CSXTLNNISIGBWV6SAETJCDOLNZ2Z3PH3WEUB62HTKTC44EKQC
cat file
#a
pijul reset
cat file
#a
pijul unrecord ZQW
cat file
#a
pijul reset
cat file
pijul apply ZQW
#Error: No such file or directory (os error 2)
