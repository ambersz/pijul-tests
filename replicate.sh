#!/bin/bash

pwd
pijul init repo
cd repo
touch file
pijul add file
pijul record -a -m "empty file"
pijul fork empty
echo "a" >> file
pijul record -am "a" && echo "b" >> file
pijul record -m "b"



pwd