pijul init repo
cd repo
touch file 
pijul add file
pijul record -am "empty file"
pijul fork a2
echo "A" >> file
export HASH="$(pijul record -am "A1" 2>&1 | cut -d' ' -f2)"
echo "$HASH"
pijul channel switch a2
echo "A" >> file
pijul record -am "A2"
pijul apply $HASH
pijul unrecord $HASH
pijul reset
cat file
# expected:
# A

# actual:
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# ================================
# A
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
