#!/bin/sh -ex
###############################################################################
# File  : build.sh
###############################################################################

tempdirname=$(mktemp -d)

PTXSTATS=$(dirname $0)/ptx-stats.py
ARCH=35
CELERITAS=${HOME}/.local/src/celeritas
if [ -e ${CELERITAS} ]; then
  CUDA_FLAGS="${CUDA_FLAGS} -I ${CELERITAS}/src -I ${CELERITAS}/build/src"
fi

for filename in $*; do
  basename="${filename%.*}"
  tempname=${tempdirname}/${basename##*/}.o
  time nvcc -std=c++14 \
     -gencode arch=compute_${ARCH},code=compute_${ARCH} \
     -gencode arch=compute_${ARCH},code=sm_${ARCH} \
     -use_fast_math \
     ${CUDA_FLAGS} \
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
