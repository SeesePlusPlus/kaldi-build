#!/bin/bash

set -ex

sudo apt-get update

sudo apt-get install -y --no-install-recommends \
  g++ \
  make \
  automake \
  autoconf \
  bzip2 \
  unzip \
  wget \
  sox \
  libtool \
  git \
  subversion \
  python2.7 \
  python3 \
  zlib1g-dev \
  ca-certificates \
  gfortran \
  patch \
  ffmpeg \
  vim

sudo rm -rf /var/lib/apt/lists/*

sudo unlink /usr/bin/python
sudo ln -s /usr/bin/python2.7 /usr/bin/python
