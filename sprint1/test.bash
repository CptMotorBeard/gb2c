#! /bin/bash
echo "compiling reader.c"
gcc -Wall reader.c -o reader
echo "running reader on test case"
./reader Tetris.gb > output.asm
echo "run complete. Output found in output.asm"