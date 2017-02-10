#! /bin/bash
echo "compiling reader.c"
gcc -Wall reader.c -o reader
echo "running reader on test case"
./reader Tetris.gb > output.asm
echo "run complete. Output found in output.asm"
echo "compiling comparer"
gcc -Wall compare.c -o compare
echo "comparing our output to suggested output"
./compare output.asm Tetris.asm
echo "comparing done, output found in differences.txt"