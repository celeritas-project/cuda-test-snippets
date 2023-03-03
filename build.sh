#!/bin/sh -ex
###############################################################################
# File  : build.sh
###############################################################################

tempdirname=$(mktemp -d)

PTXSTATS=$(dirname $0)/ptx-stats.py
ARCH=70
CELERITAS=${HOME}/.local/src/celeritas
if [ -e ${CELERITAS} ]; then
  CUDA_FLAGS="${CUDA_FLAGS} -I${CELERITAS}/src -I${CELERITAS}/test
  -I${CELERITAS}/build-ndebug/include"
fi
CUDA_FLAGS="${CUDA_FLAGS} -use_fast_math -O3"

for filename in $*; do
  basename="${filename%.*}"
  tempname=${tempdirname}/${basename##*/}.o
  time nvcc -std=c++17 \
     --gpu-architecture compute_${ARCH} \
     ${CUDA_FLAGS} \
     -c \
     -o ${tempname} \
     ${filename}
  cuobjdump --dump-ptx ${tempname} \
    > ${basename}.ptx
  $PTXSTATS ${basename}.ptx > ${basename}.ptx-stats.txt
  cubinname=${tempdirname}/${basename##*/}.cubin
  time nvcc -std=c++17 \
     --gpu-architecture compute_${ARCH} \
     --gpu-code sm_${ARCH} \
     --cubin  --relocatable-device-code=true \
     ${CUDA_FLAGS} -G \
     -c \
     -o ${cubinname} \
     ${filename}
  cuobjdump --dump-resource-usage ${cubinname} \
    | tail -n +10 \
    > ${basename}.usage.txt
  nvdisasm --print-line-info --print-line-info-inline --print-code \
    ${cubinname} \
    | sed -e "s'\s*/\* 0x[a-f0-9]\+ \*/\s*$''" \
    > ${basename}.s
done

###############################################################################
# end of build.sh
###############################################################################
