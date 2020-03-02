#!/bin/sh -ex
###############################################################################
# File  : build.sh
###############################################################################

tempdirname=$(mktemp -d)

PTXSTATS=$(dirname $0)/ptx-stats.py

for filename in $*; do
  basename="${filename%.*}"
  tempname=${tempdirname}/${basename##*/}.o
  nvcc -std=c++14 \
     -gencode arch=compute_35,code=compute_35 \
     -gencode arch=compute_35,code=sm_35 \
     -c \
     -o ${tempname} \
     ${filename}
  cuobjdump --dump-resource-usage ${tempname} \
    | tail -n +10 \
    > ${basename}.usage.txt
  cuobjdump --dump-ptx ${tempname} \
    > ${basename}.ptx
  $PTXSTATS ${basename}.ptx > ${basename}.ptx-stats.txt
  cuobjdump --dump-sass ${tempname} \
    | sed -e "s'\s*/\* 0x[a-f0-9]\+ \*/\s*$''" \
    > ${basename}.s
done

###############################################################################
# end of build.sh
###############################################################################
