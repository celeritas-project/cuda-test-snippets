#!/bin/sh -ex

CELERITAS=${HOME}/.local/src/celeritas
CUDA_FLAGS="-I ${CELERITAS}/app/demo-interactor" exec ../build.sh $*
