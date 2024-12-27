# description
Short assembly programs written for the AArch64 architecture. These programs have been tested with QEMU for systems that are not natively AArch64-based. 
### assembly codes are explained in [This File](persionExplanation.md).

## compiling
To assemble and link the programs, use the GNU AArch64 toolchain. For example:
```bash
$ aarch64-linux-gnu-as -o program.o program.s
$ aarch64-linux-gnu-ld -o program program.o
```
## Running with QEMU

For systems that are not based on AArch64, ensure the following steps are completed:

1.Provide the root path of your AArch64 GNU binaries:
```bash
$ export QEMU_LD_PREFIX=/usr/aarch64-linux-gnu
```
Run the programs directly using qemu-aarch64:
```bash
$ qemu-aarch64 program
```

## Scripts

A helper script (execute.sh) is provided for automatic compilation and execution on Arch Linux systems.
Usage:
```bash
$ ./execute.sh ASSEMBLYCODEPATH
```
The script automates the process of assembling, linking, and running the specified assembly code.
