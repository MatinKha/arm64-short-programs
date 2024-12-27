#!/bin/bash

aarch64-linux-gnu-as $1 -o $1.out &&
  aarch64-linux-gnu-ld $1.out -o $1.o &&
  qemu-aarch64 -L /usr/aarch64-linux-gnu/ $1.o
