# Hello World in x86 Assembly (16-bit DOS)

A minimal Hello World implementation in x86 16-bit assembly targeting DOS and compatible operating systems.

## Installation

Install Open Watcom from http://www.openwatcom.org/

## Building and Running

```cmd
:: Assemble and link
wasm -ms hello.asm
wlink system dos file hello.obj

:: Run
hello.exe
```

## Testing Environments

This program has been tested and works in:

- FreeDOS 1.3
- MS-DOS 6.22 or later
- DOSBox 0.74-3
- Windows DOS prompt (Windows 98/ME and earlier)
- QEMU with FreeDOS
- VirtualBox with FreeDOS

For FreeDOS, you can test using either:
1. A real computer with FreeDOS installed
2. QEMU with FreeDOS:
   ```bash
   qemu-system-i386 -hda freedos.img -drive file=hello.exe,format=raw
   ```
3. VirtualBox with FreeDOS:
   - Create new VM
   - Select "Other DOS" as OS type
   - Mount hello.exe via shared folder or disk image

## Code Explanation

Uses DOS INT 21h services:
- Function 40h (Write to File Handle)
- Function 4Ch (Terminate Program)

All functions used are part of the original DOS API specification and are fully supported by FreeDOS, ensuring maximum compatibility across DOS implementations.
