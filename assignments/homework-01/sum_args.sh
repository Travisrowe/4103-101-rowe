#!/bin/bash
# demonstrate variable scope 1.
#read var1 var2 var3 var4 var5 var6 var7 var8 var9

if [$# -eq 1]
then
let a=$1
echo $1=$a
fi

if [$# -eq 2]
then
let a=$1+$2
echo $1+$2=$a
fi

if [$# -eq 3]
then
let a=$1+$2+$3
echo $1+$2+$3=$a
fi

if [$# -eq 4]
then
let a=$1+$2+$3+$4
echo $1+$2+$3+$4=$a
fi

if [$# -eq 5]
then
let a=$1+$2+$3+$4+$5
echo $1+$2+$3+$4+$5=$a
fi

if [$# -eq 6]
then
let a=$1+$2+$3+$4+$5+$6
echo $1+$2+$3+$4+$5+$6=$a
fi

if [$# -eq 7]
then
let a=$1+$2+$3+$4+$5+$6+$7
echo $1+$2+$3+$4+$5+$6+$7=$a
fi

if [$# -eq 8]
then
let a=$1+$2+$3+$4+$5+$6+$7+$8
echo $1+$2+$3+$4+$5+$6+$7+$8=$a
fi

if [$# -eq 9]
then
let a=$1+$2+$3+$4+$5+$6+$7+$8+$9
echo $1+$2+$3+$4+$5+$6+$7+$8+$9=$a
fi
