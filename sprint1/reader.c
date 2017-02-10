#include <stdio.h>

struct instruction {
	char inst[30]; 
	int operands;
};

struct instruction instructions[256] = {
	{ "nop", 0 },                           // 00
	{ "ld bc, %04x", 2 },            // 01
	{ "ld (bc), a", 0 },               // 02
	{ "inc bc", 0 },                     // 03
	{ "inc b", 0 },                       // 04
	{ "dec b", 0 },                       // 05
	{ "ld b, %02x", 1 },               // 06
	{ "rlca", 0 },                         // 07
	{ "ld (%04x), sp", 2 },         // 08
	{ "add hl, bc", 0 },              // 09
	{ "ld a, (bc)", 0 },               // 0a
	{ "dec bc", 0 },                     // 0b
	{ "inc c", 0 },                       // 0c
	{ "dec c", 0 },                       // 0d
	{ "ld c, %02x", 1 },               // 0e
	{ "rrca", 0 },                         // 0f
	{ "stop", 1 },                         // 10
	{ "ld de, %04x", 2 },            // 11
	{ "ld (de), a", 0 },               // 12
	{ "inc de", 0 },                     // 13
	{ "inc d", 0 },                       // 14
	{ "dec d", 0 },                       // 15
	{ "ld d, %02x", 1 },               // 16
	{ "rla", 0 },                           // 17
	{ "jr %02x", 1 },                    // 18
	{ "add hl, de", 0 },              // 19
	{ "ld a, (de)", 0 },               // 1a
	{ "dec de", 0 },                     // 1b
	{ "inc e", 0 },                       // 1c
	{ "dec e", 0 },                       // 1d
	{ "ld e, %02x", 1 },               // 1e
	{ "rra", 0 },                           // 1f
	{ "jr nz, %02x", 1 },             // 20
	{ "ld hl, %04x", 2 },            // 21
	{ "ldi (hl), a", 0 },             // 22
	{ "inc hl", 0 },                     // 23
	{ "inc h", 0 },                       // 24
	{ "dec h", 0 },                       // 25
	{ "ld h, %02x", 1 },               // 26
	{ "daa", 0 },                           // 27
	{ "jr z, %02x", 1 },               // 28
	{ "add hl, hl", 0 },              // 29
	{ "ldi a, (hl)", 0 },             // 2a
	{ "dec hl", 0 },                     // 2b
	{ "inc l", 0 },                       // 2c
	{ "dec l", 0 },                       // 2d
	{ "ld l, %02x", 1 },               // 2e
	{ "cpl", 0 },                           // 2f
	{ "jr nc, %02x", 1 },             // 30
	{ "ld sp, %04x", 2 },            // 31
	{ "ldd (hl), a", 0 },             // 32
	{ "inc sp", 0 },                     // 33
	{ "inc (hl)", 0 },                  // 34
	{ "dec (hl)", 0 },                  // 35
	{ "ld (hl), %02x", 1 },          // 36
	{ "scf", 0 },                           // 37
	{ "jr c, %02x", 1 },               // 38
	{ "add hl, sp", 0 },              // 39
	{ "ldd a, (hl)", 0 },             // 3a
	{ "dec sp", 0 },                     // 3b
	{ "inc a", 0 },                       // 3c
	{ "dec a", 0 },                       // 3d
	{ "ld a, %02x", 1 },               // 3e
	{ "ccf", 0 },                           // 3f
	{ "ld b, b", 0 },                       // 40
	{ "ld b, c", 0 },                    // 41
	{ "ld b, d", 0 },                    // 42
	{ "ld b, e", 0 },                    // 43
	{ "ld b, h", 0 },                    // 44
	{ "ld b, l", 0 },                    // 45
	{ "ld b, (hl)", 0 },               // 46
	{ "ld b, a", 0 },                    // 47
	{ "ld c, b", 0 },                    // 48
	{ "ld c, c", 0 },                       // 49
	{ "ld c, d", 0 },                    // 4a
	{ "ld c, e", 0 },                    // 4b
	{ "ld c, h", 0 },                    // 4c
	{ "ld c, l", 0 },                    // 4d
	{ "ld c, (hl)", 0 },               // 4e
	{ "ld c, a", 0 },                    // 4f
	{ "ld d, b", 0 },                    // 50
	{ "ld d, c", 0 },                    // 51
	{ "ld d, d", 0 },                       // 52
	{ "ld d, e", 0 },                    // 53
	{ "ld d, h", 0 },                    // 54
	{ "ld d, l", 0 },                    // 55
	{ "ld d, (hl)", 0 },               // 56
	{ "ld d, a", 0 },                    // 57
	{ "ld e, b", 0 },                    // 58
	{ "ld e, c", 0 },                    // 59
	{ "ld e, d", 0 },                    // 5a
	{ "ld e, e", 0 },                       // 5b
	{ "ld e, h", 0 },                    // 5c
	{ "ld e, l", 0 },                    // 5d
	{ "ld e, (hl)", 0 },               // 5e
	{ "ld e, a", 0 },                    // 5f
	{ "ld h, b", 0 },                    // 60
	{ "ld h, c", 0 },                    // 61
	{ "ld h, d", 0 },                    // 62
	{ "ld h, e", 0 },                    // 63
	{ "ld h, h", 0 },                       // 64
	{ "ld h, l", 0 },                    // 65
	{ "ld h, (hl)", 0 },               // 66
	{ "ld h, a", 0 },                    // 67
	{ "ld l, b", 0 },                    // 68
	{ "ld l, c", 0 },                    // 69
	{ "ld l, d", 0 },                    // 6a
	{ "ld l, e", 0 },                    // 6b
	{ "ld l, h", 0 },                    // 6c
	{ "ld l, l", 0 },                       // 6d
	{ "ld l, (hl)", 0 },               // 6e
	{ "ld l, a", 0 },                    // 6f
	{ "ld (hl), b", 0 },               // 70
	{ "ld (hl), c", 0 },               // 71
	{ "ld (hl), d", 0 },               // 72
	{ "ld (hl), e", 0 },               // 73
	{ "ld (hl), h", 0 },               // 74
	{ "ld (hl), l", 0 },               // 75
	{ "halt", 0 },                         // 76
	{ "ld (hl), a", 0 },               // 77
	{ "ld a, b", 0 },                    // 78
	{ "ld a, c", 0 },                    // 79
	{ "ld a, d", 0 },                    // 7a
	{ "ld a, e", 0 },                    // 7b
	{ "ld a, h", 0 },                    // 7c
	{ "ld a, l", 0 },                    // 7d
	{ "ld a, (hl)", 0 },               // 7e
	{ "ld a, a", 0 },                       // 7f
	{ "add a, b", 0 },                  // 80
	{ "add a, c", 0 },                  // 81
	{ "add a, d", 0 },                  // 82
	{ "add a, e", 0 },                  // 83
	{ "add a, h", 0 },                  // 84
	{ "add a, l", 0 },                  // 85
	{ "add a, (hl)", 0 },             // 86
	{ "add a", 0 },                     // 87
	{ "adc b", 0 },                       // 88
	{ "adc c", 0 },                       // 89
	{ "adc d", 0 },                       // 8a
	{ "adc e", 0 },                       // 8b
	{ "adc h", 0 },                       // 8c
	{ "adc l", 0 },                       // 8d
	{ "adc (hl)", 0 },                  // 8e
	{ "adc a", 0 },                       // 8f
	{ "sub b", 0 },                       // 90
	{ "sub c", 0 },                       // 91
	{ "sub d", 0 },                       // 92
	{ "sub e", 0 },                       // 93
	{ "sub h", 0 },                       // 94
	{ "sub l", 0 },                       // 95
	{ "sub (hl)", 0 },                  // 96
	{ "sub a", 0 },                       // 97
	{ "sbc b", 0 },                       // 98
	{ "sbc c", 0 },                       // 99
	{ "sbc d", 0 },                       // 9a
	{ "sbc e", 0 },                       // 9b
	{ "sbc h", 0 },                       // 9c
	{ "sbc l", 0 },                       // 9d
	{ "sbc (hl)", 0 },                  // 9e
	{ "sbc a", 0 },                       // 9f
	{ "and b", 0 },                       // a0
	{ "and c", 0 },                       // a1
	{ "and d", 0 },                       // a2
	{ "and e", 0 },                       // a3
	{ "and h", 0 },                       // a4
	{ "and l", 0 },                       // a5
	{ "and (hl)", 0 },                  // a6
	{ "and a", 0 },                       // a7
	{ "xor b", 0 },                       // a8
	{ "xor c", 0 },                       // a9
	{ "xor d", 0 },                       // aa
	{ "xor e", 0 },                       // ab
	{ "xor h", 0 },                       // ac
	{ "xor l", 0 },                       // ad
	{ "xor (hl)", 0 },                  // ae
	{ "xor a", 0 },                       // af
	{ "or b", 0 },                         // b0
	{ "or c", 0 },                         // b1
	{ "or d", 0 },                         // b2
	{ "or e", 0 },                         // b3
	{ "or h", 0 },                         // b4
	{ "or l", 0 },                         // b5
	{ "or (hl)", 0 },                    // b6
	{ "or a", 0 },                         // b7
	{ "cp b", 0 },                         // b8
	{ "cp c", 0 },                         // b9
	{ "cp d", 0 },                         // ba
	{ "cp e", 0 },                         // bb
	{ "cp h", 0 },                         // bc
	{ "cp l", 0 },                         // bd
	{ "cp (hl)", 0 },                    // be
	{ "cp a", 0 },                         // bf
	{ "ret nz", 0 },                     // c0
	{ "pop bc", 0 },                     // c1
	{ "jp nz, %04x", 2 },            // c2
	{ "jp %04x", 2 },                   // c3
	{ "call nz, %04x", 2 },        // c4
	{ "push bc", 0 },                   // c5
	{ "add a, %02x", 1 },             // c6
	{ "rst 00", 0 },                    // c7
	{ "ret z", 0 },                       // c8
	{ "ret", 0 },                           // c9
	{ "jp z, %04x", 2 },              // ca
	{ "cb %02x", 1 },                      // cb
	{ "call z, %04x", 2 },          // cc
	{ "call %04x", 2 },               // cd
	{ "adc %02x", 1 },                  // ce
	{ "rst 08", 0 },                   // cf
	{ "ret nc", 0 },                     // d0
	{ "pop de", 0 },                     // d1
	{ "jp nc, %04x", 2 },            // d2
	{ "unknown", 0 },                 // d3
	{ "call nc, %04x", 2 },        // d4
	{ "push de", 0 },                   // d5
	{ "sub %02x", 1 },                  // d6
	{ "rst 10", 0 },                   // d7
	{ "ret c", 0 },                       // d8
	{ "reti", 0 },          // d9
	{ "jp c, %04x", 2 },              // da
	{ "unknown", 0 },                 // db
	{ "call c, %04x", 2 },          // dc
	{ "unknown", 0 },                 // dd
	{ "sbc %02x", 1 },                  // de
	{ "rst 18", 0 },                   // df
	{ "ld (ff00 + %02x), a", 1 },// e0
	{ "pop hl", 0 },                     // e1
	{ "ld (ff00 + c), a", 0 },      // e2
	{ "unknown", 0 },                 // e3
	{ "unknown", 0 },                 // e4
	{ "push hl", 0 },                   // e5
	{ "and %02x", 1 },                  // e6
	{ "rst 20", 0 },                   // e7
	{ "add sp,%02x", 1 },            // e8
	{ "jp hl", 0 },                       // e9
	{ "ld (%04x), a", 2 },           // ea
	{ "unknown", 0 },                 // eb
	{ "unknown", 0 },                 // ec
	{ "unknown", 0 },                 // ed
	{ "xor %02x", 1 },                  // ee
	{ "rst 28", 0 },                   // ef
	{ "ld a, (ff00 + %02x)", 1 },// f0
	{ "pop af", 0 },                     // f1
	{ "ld a, (ff00 + c)", 0 },      // f2
	{ "di", 0 },                        // f3
	{ "unknown", 0 },                 // f4
	{ "push af", 0 },                   // f5
	{ "or %02x", 1 },                    // f6
	{ "rst 30", 0 },                   // f7
	{ "ld hl, sp+%02x", 1 },       // f8
	{ "ld sp, hl", 0 },                // f9
	{ "ld a, (%04x)", 2 },           // fa
	{ "ei", 0 },                             // fb
	{ "unknown", 0 },                 // fc
	{ "unknown", 0 },                 // fd
	{ "cp %02x", 1 },                    // fe
	{ "rst 38", 0 },                   // ff
};

int main ( int argc, char *argv[] ) {
	if ( argc != 2 ) {
		printf( "Usage: %s filename\n", argv[0] );

	} else {
		FILE *rom = fopen( argv[1], "r" );
		if ( rom == 0) {
			printf( "Could not open file\n" );
		} else {
			int meta = 0;
			int pc = 0;
			int operands;
			int x;
			char* inst;
			while (( x = fgetc (rom) ) != EOF ) {
				if (pc == 256) { meta = 1; }
				if (pc == 336) { meta = 0; }
				if (meta==1) {
					printf("Header\n");
				} else {
					operands=instructions[x].operands;
					if (operands == 1) {
						pc++;
						inst = instructions[x].inst;
						x = fgetc(rom);
						printf(inst,x);
						printf("\n");
					}
					else if (operands == 2) {
						pc+=2;
						inst = instructions[x].inst;
						int op;				
						x = fgetc(rom);
						op = (x);
						x = fgetc(rom);
						op = op | (x<<8);
						printf(inst,op);
						printf("\n");
					} else {					
						printf("%s\n", instructions[x].inst);
					}
				}
				pc ++;								
			}
			fclose( rom );
		}
	}
	return 0;
}