#!/bin/bash
make abc

compare ()
{
if cmp $1 $2 >/dev/null 2>&1
then
    echo "Pass $1 and $2 are the same"
else
    echo "FAIL $1 and $2 differ"
    STR="******at least one test FAILS*******"
fi
}
# initialise as pass will be set to fail if any tests fail
STR="*******all tests PASS*******"

time ./abc.x < fhd.d > fhd.new  
compare fhd.new fhd.out

time ./abc.x < clhd.d > clhd.new
compare clhd.new clhd.out

time ./abc.x < hd2.d > hd2.new
compare hd2.new hd2.out

echo $STR
