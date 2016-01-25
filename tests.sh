#!/bin/bash
make abc

compare ()
{
if cmp $1 $2 >/dev/null 2>&1
then
    echo "pass $1 and $2 are the same"
else
    echo "fail $1 and $2 differ"
fi
}

time ./abc.x < fhd.d > fhd.new  
compare fhd.new fhd.out

time ./abc.x < clhd.d > clhd.new
compare clhd.new clhd.out

time ./abc.x < hd2.d > hd2.new
compare hd2.new hd2.out

