#!/bin/bash

set -ex

git clone --depth 1 https://github.com/kaldi-asr/kaldi.git /opt/kaldi

pushd /opt/kaldi
git checkout $1
popd

pushd /opt/kaldi/tools
./extras/install_mkl.sh -sp debian intel-mkl-64bit-2020.0-088
make -j 2
popd

pushd /opt/kaldi/src

./configure --static

popd
