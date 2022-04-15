# Learning assembly [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://github.com/hchiam/learning-assembly/blob/main/LICENSE)

Just one of the things I'm learning. https://github.com/hchiam/learning

https://www.youtube.com/watch?v=4gwYkEK0gOk

https://www.nasm.us

https://github.com/netwide-assembler/nasm

## To compile/assemble code into an object file:

```sh
nasm -felf64 app.asm
ld app.o -o app
```

## To run the output executable:

```sh
./app
```
