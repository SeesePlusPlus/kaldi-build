#!/bin/bash

set -ex

pushd /opt/kaldi/src

make depend -j 2

make -j 2

popd
