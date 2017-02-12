--reader execution
./reader [input file]

--header validator execution
python header.py

reader will print the output right now to standard output.
reader ignores the header, right now we have seperate code to parse the header.

header.py parses the header. The header is of different format than the rest of the rom and is only required later on to validate input.


We have included the asm that was dumped from another emulator to compare the data to.
The JR commands will differ slightly only because they jump from the current address. Our parser will not be taking care of that, and it will be addressed in the code for the JR commands.


