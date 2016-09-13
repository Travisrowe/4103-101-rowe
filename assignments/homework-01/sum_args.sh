#!/bin/bash
# demonstrate variable scope 1.
read var1 var2 var3 var4 var5 var6 var7 var8 var9

let "a = var1 + var2 + var3 + var4 + var5 + var6 + var7 + var8 + var9"
echo "$var1+$var2+$var3+$var4+$var5+$var6+$var7+$var8+$var9=$a"
