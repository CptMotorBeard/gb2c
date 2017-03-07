#! /bin/bash
echo "compiling"
gcc -Wall -Iinclude *.c -o gb2c lib/*.a
echo "done: running"
./gb2c Tetris.gb