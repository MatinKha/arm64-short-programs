# description
short assembly programs written in aarch64 architecture
Tested With qemu 

## compiling
  simply assemble and link with gnu-aarch64-compiler 

## running with QEMU
  for systems which are not based on aarch64
  first you should provide your aarch64 gnu binaries root path 
  example:
  
  ```bash
    $ export QEMU_LD_PREFIX=/usr/aarch64-linux-gnu
  ```
  
  after that run the programs directly with qemu-aarch64 
  
  ```bash
    $ qemu-aarch64 PROGRAM
  ```
## Scripts
  there is also an script written for automatic compilation and execution for arch Linux
  Usage:
  ```bash
    $ execute.sh ASSEMBLYCODEPATH
  ```
