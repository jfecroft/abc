#!/bin/bash
make abc

time ./abc.x < fhd.d > fhd.new  
diff fhd.new fhd.out

time ./abc.x < clhd.d > clhd.new
diff clhd.new clhd.out

time ./abc.x < hd2.d > hd2.new
diff hd2.new hd2.out

