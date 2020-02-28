#!/bin/sh -ex
###############################################################################
# File  : build.sh
###############################################################################

tempdirname=$(mktemp -d)

for filename in $*; do
  basename="${filename%.*}"
  tempname=${tempdirname}/${basename}.o
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
    | sed -e "/^$/d" | tail -n +14 \
    > ${basename}.ptx
  cuobjdump --dump-sass ${tempname} \
    | sed -e "s'\s*/\* 0x[a-f0-9]\+ \*/\s*$''" \
    > ${basename}.s
done

###############################################################################
# end of build.sh
###############################################################################
