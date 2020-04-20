#!/bin/bash

set -ex

git clone --depth 1 https://github.com/kaldi-asr/kaldi.git /opt/kaldi

pushd /opt/kaldi/tools
./extras/install_mkl.sh
make -j 2
popd

pushd /opt/kaldi/src

./configure --static