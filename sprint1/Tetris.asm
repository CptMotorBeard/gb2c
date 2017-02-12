jp   028B
nop  
nop  
nop  
nop  
nop  
jp   028B
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
add  a
pop  hl
ld   e,a
ld   d,00
add  hl,de
ld   e,(hl)
inc  hl
ld   d,(hl)
push de
pop  hl
jp   hl
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
jp   01FD
rst  38
rst  38
rst  38
rst  38
rst  38
jp   2712
rst  38
rst  38
rst  38
rst  38
rst  38
jp   2712
rst  38
rst  38
rst  38
rst  38
rst  38
jp   017E
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
jp   028B
call 2A2B
ld   a,(ff00+41)
and  a,03
jr   nz,0156
ld   b,(hl)
ld   a,(ff00+41)
and  a,03
jr   nz,015D
ld   a,(hl)
and  b
ret  
ld   a,e
add  (hl)
daa  
ldi  (hl),a
ld   a,d
adc  (hl)
daa  
ldi  (hl),a
ld   a,00
adc  (hl)
daa  
ld   (hl),a
ld   a,01
ld   (ff00+E0),a
ret  nc
ld   a,99
ldd  (hl),a
ldd  (hl),a
ld   (hl),a
ret  
push af
push hl
push de
push bc
call 018E
ld   a,01
ld   (ff00+CC),a
pop  bc
pop  de
pop  hl
pop  af
reti 
ld   a,(ff00+CD)
rst  28
sbc  e
ld   bc,01C2
rst  00
ld   bc,01DD
ld   a,28
ld   a,(ff00+E1)
cp   a,07
jr   z,01A9
cp   a,06
ret  z
ld   a,06
ld   (ff00+E1),a
ret  
ld   a,(ff00+01)
cp   a,55
jr   nz,01B7
ld   a,29
ld   (ff00+CB),a
ld   a,01
jr   01BF
cp   a,29
ret  nz
ld   a,55
ld   (ff00+CB),a
xor  a
ld   (ff00+02),a
ret  
ld   a,(ff00+01)
ld   (ff00+D0),a
ret  
ld   a,(ff00+01)
ld   (ff00+D0),a
ld   a,(ff00+CB)
cp   a,29
ret  z
ld   a,(ff00+CF)
ld   (ff00+01),a
ld   a,FF
ld   (ff00+CF),a
ld   a,80
ld   (ff00+02),a
ret  
ld   a,(ff00+01)
ld   (ff00+D0),a
ld   a,(ff00+CB)
cp   a,29
ret  z
ld   a,(ff00+CF)
ld   (ff00+01),a
ei   
call 0B07
ld   a,80
ld   (ff00+02),a
ret  
ld   a,(ff00+CD)
cp   a,02
ret  nz
xor  a
ld   (ff00+0F),a
ei   
ret  
push af
push bc
push de
push hl
ld   a,(ff00+CE)
and  a
jr   z,0218
ld   a,(ff00+CB)
cp   a,29
jr   nz,0218
xor  a
ld   (ff00+CE),a
ld   a,(ff00+CF)
ld   (ff00+01),a
ld   hl,FF02
ld   (hl),81
call 2240
call 242C
call 2417
call 23FE
call 23EC
call 23DD
call 23CE
call 23BF
call 23B0
call 23A1
call 2392
call 2383
call 2358
call 2349
call 233A
call 232B
call 231C
call 230D
call 22FE
call 1F32
call FFB6
call 192E
ld   a,(C0CE)
and  a
jr   z,027A
ld   a,(ff00+98)
cp   a,03
jr   nz,027A
ld   hl,986D
call 249B
ld   a,01
ld   (ff00+E0),a
ld   hl,9C6D
call 249B
xor  a
ld   (C0CE),a
ld   hl,FFE2
inc  (hl)
xor  a
ld   (ff00+43),a
ld   (ff00+42),a
inc  a
ld   (ff00+85),a
pop  hl
pop  de
pop  bc
pop  af
reti 
xor  a
ld   hl,DFFF
ld   c,10
ld   b,00
ldd  (hl),a
dec  b
jr   nz,0293
dec  c
jr   nz,0293
ld   a,01
di   
ld   (ff00+0F),a
ld   (ff00+FF),a
xor  a
ld   (ff00+42),a
ld   (ff00+43),a
ld   (ff00+A4),a
ld   (ff00+41),a
ld   (ff00+01),a
ld   (ff00+02),a
ld   a,80
ld   (ff00+40),a
ld   a,(ff00+44)
cp   a,94
jr   nz,02B2
ld   a,03
ld   (ff00+40),a
ld   a,E4
ld   (ff00+47),a
ld   (ff00+48),a
ld   a,C4
ld   (ff00+49),a
ld   hl,FF26
ld   a,80
ldd  (hl),a
ld   a,FF
ldd  (hl),a
ld   (hl),77
ld   a,01
ld   (2000),a
ld   sp,CFFF
xor  a
ld   hl,DFFF
ld   b,00
ldd  (hl),a
dec  b
jr   nz,02DF
ld   hl,CFFF
ld   c,10
ld   b,00
ldd  (hl),a
dec  b
jr   nz,02EA
dec  c
jr   nz,02EA
ld   hl,9FFF
ld   c,20
xor  a
ld   b,00
ldd  (hl),a
dec  b
jr   nz,02F9
dec  c
jr   nz,02F9
ld   hl,FEFF
ld   b,00
ldd  (hl),a
dec  b
jr   nz,0305
ld   hl,FFFE
ld   b,80
ldd  (hl),a
dec  b
jr   nz,030E
ld   c,B6
ld   b,0C
ld   hl,2AC7
ldi  a,(hl)
ld   (ff00+c),a
inc  c
dec  b
jr   nz,0319
call 27E9
call 7FF3
ld   a,09
ld   (ff00+FF),a
ld   a,37
ld   (ff00+C0),a
ld   a,1C
ld   (ff00+C1),a
ld   a,24
ld   (ff00+E1),a
ld   a,80
ld   (ff00+40),a
ei   
xor  a
ld   (ff00+0F),a
ld   (ff00+4A),a
ld   (ff00+4B),a
ld   (ff00+06),a
call 29FA
call 0377
call 7FF0
ld   a,(ff00+80)
and  a,0F
cp   a,0F
jp   z,029A
ld   hl,FFA6
ld   b,02
ld   a,(hl)
and  a
jr   z,035F
dec  (hl)
inc  l
dec  b
jr   nz,035A
ld   a,(ff00+C5)
and  a
jr   z,036C
ld   a,09
ld   (ff00+FF),a
ld   a,(ff00+85)
and  a
jr   z,036C
xor  a
ld   (ff00+85),a
jp   0343
ld   a,(ff00+E1)
rst  28
add  hl,hl
inc  e
dec  a
dec  e
xor  b
ld   (de),a
rst  18
ld   (de),a
ld   h,c
dec  e
add  c
dec  e
add  hl,de
inc  b
and  a,04
xor  b
inc  d
ld   a,(ff00+14)
ld   l,e
ld   a,(de)
dec  de
ld   e,71
rra  
ld   a,d
rra  
adc  c
dec  d
inc  d
dec  d
rst  18
dec  d
inc  hl
ld   d,8D
ld   d,DE
ld   d,4F
rla  
ld   (hl),a
add  hl,de
-    
ld   b,99
rlca 
sub  d
ld   (0953),sp
sub  l
dec  bc
ld   c,a
dec  c
ld   b,c
dec  bc
sub  (hl)
dec  c
add  a
ld   c,76
ld   de,0DFD
xor  a,0E
add  hl,hl
ld   e,9C
ld   e,E6
inc  bc
<corrupted stop>
rl   c
ld   c,d
ld   (de),a
ld   h,b
ld   (de),a
add  b
ld   (de),a
inc  (hl)
ld   b,64
ld   b,17
inc  de
ld   l,c
inc  de
adc  b
inc  de
or   l
inc  de
rl   e
ld   (ff00+c),a
inc  de
add  hl,de
inc  d
ld   c,c
inc  d
ld   a,a
inc  de
ld   a,28
call 2874
call 282B
ld   de,4A4F
call 283F
call 17EE
ld   hl,C300
ld   de,64D0
ld   a,(de)
ldi  (hl),a
inc  de
ld   a,h
cp   a,C4
jr   nz,03FB
ld   a,D3
ld   (ff00+40),a
ld   a,7D
ld   (ff00+A6),a
ld   a,25
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,06
ld   (ff00+E1),a
ret  
call 2874
xor  a
ld   (ff00+E9),a
ld   (ff00+98),a
ld   (ff00+9C),a
ld   (ff00+9B),a
ld   (ff00+FB),a
ld   (ff00+9F),a
ld   (ff00+E3),a
ld   (ff00+E7),a
ld   (ff00+C7),a
call 22F3
call 26A5
call 282B
ld   hl,C800
ld   a,2F
ldi  (hl),a
ld   a,h
cp   a,CC
jr   nz,043B
ld   hl,C801
call 26FD
ld   hl,C80C
call 26FD
ld   hl,CA41
ld   b,0C
ld   a,8E
ldi  (hl),a
dec  b
jr   nz,0456
ld   de,4BB7
call 283F
call 17EE
ld   hl,C000
ld   (hl),80
inc  l
ld   (hl),10
inc  l
ld   (hl),58
ld   a,03
ld   (DFE8),a
ld   a,D3
ld   (ff00+40),a
ld   a,07
ld   (ff00+E1),a
ld   a,7D
ld   (ff00+A6),a
ld   a,04
ld   (ff00+C6),a
ld   a,(ff00+E4)
and  a
ret  nz
ld   a,13
ld   (ff00+C6),a
ret  
ld   a,37
ld   (ff00+C0),a
ld   a,09
ld   (ff00+C2),a
xor  a
ld   (ff00+C5),a
ld   (ff00+B0),a
ld   (ff00+ED),a
ld   (ff00+EA),a
ld   a,63
ld   (ff00+EB),a
ld   a,30
ld   (ff00+EC),a
ld   a,(ff00+E4)
cp   a,02
ld   a,02
jr   nz,04C7
ld   a,77
ld   (ff00+C0),a
ld   a,09
ld   (ff00+C3),a
ld   a,02
ld   (ff00+C4),a
ld   a,64
ld   (ff00+EB),a
ld   a,30
ld   (ff00+EC),a
ld   a,11
ld   (ff00+B0),a
ld   a,01
ld   (ff00+E4),a
ld   a,0A
ld   (ff00+E1),a
call 2874
call 2801
ld   de,4D1F
call 283F
call 17EE
ld   a,D3
ld   (ff00+40),a
ret  
ld   a,FF
ld   (ff00+E9),a
ret  
ld   a,(ff00+A6)
and  a
jr   nz,04F5
ld   hl,FFC6
dec  (hl)
jr   z,048C
ld   a,7D
ld   (ff00+A6),a
call 0B07
ld   a,55
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,050F
ld   a,(ff00+CB)
and  a
jr   nz,0544
xor  a
ld   (ff00+CC),a
jr   0576
ld   a,(ff00+81)
ld   b,a
ld   a,(ff00+C5)
bit  2,b
jr   nz,0560
bit  4,b
jr   nz,056F
bit  5,b
jr   nz,0574
bit  3,b
ret  z
and  a
ld   a,08
jr   z,0554
ld   a,b
cp   a,08
ret  nz
ld   a,(ff00+CB)
cp   a,29
jr   z,0544
ld   a,29
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,053A
ld   a,(ff00+CB)
and  a
jr   z,0576
ld   a,2A
ld   (ff00+E1),a
xor  a
ld   (ff00+A6),a
ld   (ff00+C2),a
ld   (ff00+C3),a
ld   (ff00+C4),a
ld   (ff00+E4),a
ret  
push af
ld   a,(ff00+80)
bit  7,a
jr   z,055D
ld   (ff00+F4),a
pop  af
jr   0546
xor  a,01
ld   (ff00+C5),a
and  a
ld   a,10
jr   z,056B
ld   a,60
ld   (C001),a
ret  
and  a
ret  nz
xor  a
jr   0560
and  a
ret  z
xor  a
jr   0562
ld   a,(ff00+E4)
and  a
ret  z
call 0B07
xor  a
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+81)
bit  3,a
jr   z,059A
ld   a,33
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,06
ld   (ff00+E1),a
ret  
ld   hl,FFB0
ld   a,(ff00+E4)
cp   a,02
ld   b,10
jr   z,05A7
ld   b,1D
ld   a,(hl)
cp   b
ret  nz
ld   a,06
ld   (ff00+E1),a
ret  
ld   a,(ff00+E4)
and  a
ret  z
ld   a,(ff00+E9)
cp   a,FF
ret  z
ld   a,(ff00+EA)
and  a
jr   z,05C2
dec  a
ld   (ff00+EA),a
jr   05DE
ld   a,(ff00+EB)
ld   h,a
ld   a,(ff00+EC)
ld   l,a
ldi  a,(hl)
ld   b,a
ld   a,(ff00+ED)
xor  b
and  b
ld   (ff00+81),a
ld   a,b
ld   (ff00+ED),a
ldi  a,(hl)
ld   (ff00+EA),a
ld   a,h
ld   (ff00+EB),a
ld   a,l
ld   (ff00+EC),a
jr   05E1
xor  a
ld   (ff00+81),a
ld   a,(ff00+80)
ld   (ff00+EE),a
ld   a,(ff00+ED)
ld   (ff00+80),a
ret  
xor  a
ld   (ff00+ED),a
jr   05DE
ret  
ld   a,(ff00+E4)
and  a
ret  z
ld   a,(ff00+E9)
cp   a,FF
ret  nz
ld   a,(ff00+80)
ld   b,a
ld   a,(ff00+ED)
cp   b
jr   z,061A
ld   a,(ff00+EB)
ld   h,a
ld   a,(ff00+EC)
ld   l,a
ld   a,(ff00+ED)
ldi  (hl),a
ld   a,(ff00+EA)
ldi  (hl),a
ld   a,h
ld   (ff00+EB),a
ld   a,l
ld   (ff00+EC),a
ld   a,b
ld   (ff00+ED),a
xor  a
ld   (ff00+EA),a
ret  
ld   a,(ff00+EA)
inc  a
ld   (ff00+EA),a
ret  
ld   a,(ff00+E4)
and  a
ret  z
ld   a,(ff00+E9)
and  a
ret  nz
ld   a,(ff00+EE)
ld   (ff00+80),a
ret  
ld   hl,FF02
set  7,(hl)
jr   063E
ld   a,03
ld   (ff00+CD),a
ld   a,(ff00+CB)
cp   a,29
jr   nz,062D
call 14B3
ld   a,80
ld   (C210),a
call 26C5
ld   (ff00+CE),a
xor  a
ld   (ff00+01),a
ld   (ff00+CF),a
ld   (ff00+DC),a
ld   (ff00+D2),a
ld   (ff00+D3),a
ld   (ff00+D4),a
ld   (ff00+D5),a
ld   (ff00+E3),a
call 7FF3
ld   a,2B
ld   (ff00+E1),a
ret  
ld   a,(ff00+CB)
cp   a,29
jr   z,0680
ld   a,(ff00+F0)
and  a
jr   z,068D
xor  a
ld   (ff00+F0),a
ld   de,C201
call 14F6
call 157B
call 26C5
jr   068D
ld   a,(ff00+81)
bit  0,a
jr   nz,068D
bit  3,a
jr   nz,068D
call 1514
ld   a,(ff00+CB)
cp   a,29
jr   z,06B1
ld   a,(ff00+CC)
and  a
ret  z
xor  a
ld   (ff00+CC),a
ld   a,39
ld   (ff00+CF),a
ld   a,(ff00+D0)
cp   a,50
jr   z,06D1
ld   b,a
ld   a,(ff00+C1)
cp   b
ret  z
ld   a,b
ld   (ff00+C1),a
ld   a,01
ld   (ff00+F0),a
ret  
ld   a,(ff00+81)
bit  3,a
jr   nz,06D9
bit  0,a
jr   nz,06D9
ld   a,(ff00+CC)
and  a
ret  z
xor  a
ld   (ff00+CC),a
ld   a,(ff00+CF)
cp   a,50
jr   z,06D1
ld   a,(ff00+C1)
ld   (ff00+CF),a
ld   a,01
ld   (ff00+CE),a
ret  
call 17EE
ld   a,16
ld   (ff00+E1),a
ret  
ld   a,50
jr   06CA
ld   hl,FF02
set  7,(hl)
jr   0703
ld   a,03
ld   (ff00+CD),a
ld   a,(ff00+CB)
cp   a,29
jr   nz,06DD
call 0B10
call 0B10
call 0B10
ld   b,00
ld   hl,C300
call 0B10
ldi  (hl),a
dec  b
jr   nz,06FC
call 2874
call 2801
ld   de,525C
call 283F
call 17EE
ld   a,2F
call 2038
ld   a,03
ld   (ff00+CE),a
xor  a
ld   (ff00+01),a
ld   (ff00+CF),a
ld   (ff00+DC),a
ld   (ff00+D2),a
ld   (ff00+D3),a
ld   (ff00+D4),a
ld   (ff00+D5),a
ld   (ff00+E3),a
ld   (ff00+CC),a
ld   hl,C400
ld   b,0A
ld   a,28
ldi  (hl),a
dec  b
jr   nz,0735
ld   a,(ff00+D6)
and  a
jp   nz,07DA
call 157B
ld   a,D3
ld   (ff00+40),a
ld   hl,C080
ld   de,0772
ld   b,20
call 0792
ld   hl,C200
ld   de,2741
ld   c,02
call 17DA
call 087B
call 26C5
xor  a
ld   (ff00+D7),a
ld   (ff00+D8),a
ld   (ff00+D9),a
ld   (ff00+DA),a
ld   (ff00+DB),a
ld   a,17
ld   (ff00+E1),a
ret  
ld   b,b
jr   z,0723
nop  
ld   b,b
jr   nc,0727
jr   nz,07C3
jr   z,072C
nop  
ld   c,b
jr   nc,0730
jr   nz,07FB
jr   z,0745
nop  
ld   a,b
jr   nc,0749
jr   nz,070B
jr   z,074E
nop  
add  b
jr   nc,0752
jr   nz,07AD
ldi  (hl),a
inc  de
dec  b
jr   nz,0792
ret  
ld   a,(ff00+CB)
cp   a,29
jr   z,07C2
ld   a,(ff00+CC)
and  a
jr   z,07B7
ld   a,(ff00+D0)
cp   a,60
jr   z,07D7
cp   a,06
jr   nc,07B0
ld   (ff00+AC),a
ld   a,(ff00+AD)
ld   (ff00+CF),a
xor  a
ld   (ff00+CC),a
ld   de,C210
call 17CA
ld   hl,FFAD
jr   082A
ld   a,(ff00+81)
bit  3,a
jr   z,07CC
ld   a,60
jr   0819
ld   a,(ff00+CC)
and  a
jr   z,0821
ld   a,(ff00+CF)
cp   a,60
jr   nz,080F
call 17EE
ld   a,(ff00+D6)
and  a
jr   nz,07F7
ld   a,18
ld   (ff00+E1),a
ld   a,(ff00+CB)
cp   a,29
ret  nz
xor  a
ld   (ff00+A0),a
ld   a,06
ld   de,FFE0
ld   hl,C9A2
call 1BC3
ret  
ld   a,(ff00+CB)
cp   a,29
jp   nz,0895
xor  a
ld   (ff00+A0),a
ld   a,06
ld   de,FFE0
ld   hl,C9A2
call 1BC3
jp   0895
ld   a,(ff00+D0)
cp   a,06
jr   nc,0817
ld   (ff00+AD),a
ld   a,(ff00+AC)
ld   (ff00+CF),a
xor  a
ld   (ff00+CC),a
inc  a
ld   (ff00+CE),a
ld   de,C200
call 17CA
ld   hl,FFAC
ld   a,(hl)
bit  4,b
jr   nz,0843
bit  5,b
jr   nz,0855
bit  6,b
jr   nz,085B
bit  7,b
jr   z,084E
cp   a,03
jr   nc,084E
add  a,03
jr   0848
cp   a,05
jr   z,084E
inc  a
ld   (hl),a
ld   a,01
ld   (DFE0),a
call 087B
call 26C5
ret  
and  a
jr   z,084E
dec  a
jr   0848
cp   a,03
jr   c,084E
sub  a,03
jr   0848
ld   b,b
ld   h,b
ld   b,b
ld   (hl),b
ld   b,b
add  b
ld   d,b
ld   h,b
ld   d,b
ld   (hl),b
ld   d,b
add  b
ld   a,b
ld   h,b
ld   a,b
ld   (hl),b
ld   a,b
add  b
adc  b
ld   h,b
adc  b
ld   (hl),b
adc  b
add  b
ld   a,(ff00+AC)
ld   de,C201
ld   hl,0863
call 17B9
ld   a,(ff00+AD)
ld   de,C211
ld   hl,086F
call 17B9
ret  
call 2874
xor  a
ld   (C210),a
ld   (ff00+98),a
ld   (ff00+9C),a
ld   (ff00+9B),a
ld   (ff00+FB),a
ld   (ff00+9F),a
ld   (ff00+CC),a
ld   (ff00+01),a
ld   (ff00+CE),a
ld   (ff00+D0),a
ld   (ff00+CF),a
ld   (ff00+D1),a
call 26A5
call 22F3
call 204D
xor  a
ld   (ff00+E3),a
ld   (ff00+E7),a
call 17EE
ld   de,53C4
push de
ld   a,01
ld   (ff00+A9),a
ld   (ff00+C5),a
call 283F
pop  de
ld   hl,9C00
call 2842
ld   de,288D
ld   hl,9C63
ld   c,0A
call 1FD8
ld   hl,C200
ld   de,2713
call 270A
ld   hl,C210
ld   de,271B
call 270A
ld   hl,9951
ld   a,30
ld   (ff00+9E),a
ld   (hl),00
dec  l
ld   (hl),03
call 1B43
xor  a
ld   (ff00+A0),a
ld   a,(ff00+CB)
cp   a,29
ld   de,0943
ld   a,(ff00+AC)
jr   z,0913
ld   de,0933
ld   a,(ff00+AD)
ld   hl,98B0
ld   (hl),a
ld   h,9C
ld   (hl),a
ld   hl,C080
ld   b,10
call 0792
ld   a,77
ld   (ff00+C0),a
ld   a,D3
ld   (ff00+40),a
ld   a,19
ld   (ff00+E1),a
ld   a,01
ld   (ff00+CD),a
ret  
jr   08B9
ret  nz
nop  
jr   08C5
ret  nz
jr   nz,095C
add  h
pop  bc
nop  
jr   nz,08CD
pop  bc
jr   nz,095C
add  h
xor  (hl)
nop  
jr   08D5
xor  (hl)
jr   nz,096C
add  h
xor  a
nop  
jr   nz,08DD
xor  a
jr   nz,0992
ld   (FFE0),sp
xor  a
ld   (ff00+0F),a
ld   a,(ff00+CB)
cp   a,29
jp   nz,0A65
call 0B07
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,29
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0972
ld   a,(ff00+01)
cp   a,55
jr   nz,0961
ld   de,0016
ld   c,0A
ld   hl,C902
ld   b,0A
xor  a
ld   (ff00+CC),a
call 0B07
ldi  a,(hl)
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0994
dec  b
jr   nz,0987
add  hl,de
dec  c
jr   nz,0985
ld   a,(ff00+AC)
cp   a,05
jr   z,09E3
ld   hl,CA22
ld   de,0040
add  hl,de
inc  a
cp   a,05
jr   nz,09AC
ld   de,CA22
ld   c,0A
ld   b,0A
ld   a,(de)
ldi  (hl),a
inc  e
dec  b
jr   nz,09B9
push de
ld   de,FFD6
add  hl,de
pop  de
push hl
ld   hl,FFD6
add  hl,de
push hl
pop  de
pop  hl
dec  c
jr   nz,09B7
ld   de,FFD6
ld   b,0A
ld   a,h
cp   a,C8
jr   z,09E3
ld   a,2F
ldi  (hl),a
dec  b
jr   nz,09DC
add  hl,de
jr   09D3
call 0B07
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,29
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,09F4
ld   a,(ff00+01)
cp   a,55
jr   nz,09E3
ld   hl,C300
ld   b,00
xor  a
ld   (ff00+CC),a
ldi  a,(hl)
call 0B07
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0A11
inc  b
jr   nz,0A04
call 0B07
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,30
ld   (ff00+01),a
ld   a,81
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0A2A
ld   a,(ff00+01)
cp   a,56
jr   nz,0A19
call 0AFB
ld   a,09
ld   (ff00+FF),a
ld   a,1C
ld   (ff00+E1),a
ld   a,02
ld   (ff00+E3),a
ld   a,03
ld   (ff00+CD),a
ld   a,(ff00+CB)
cp   a,29
jr   z,0A53
ld   hl,FF02
set  7,(hl)
ld   hl,C300
ldi  a,(hl)
ld   (C203),a
ldi  a,(hl)
ld   (C213),a
ld   a,h
ld   (ff00+AF),a
ld   a,l
ld   (ff00+B0),a
ret  
ld   a,(ff00+AD)
inc  a
ld   b,a
ld   hl,CA42
ld   de,FFC0
dec  b
jr   z,0A75
add  hl,de
jr   0A6F
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,55
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0A83
ld   a,(ff00+01)
cp   a,29
jr   nz,0A75
ld   de,0016
ld   c,0A
ld   b,0A
xor  a
ld   (ff00+CC),a
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0A9E
ld   a,(ff00+01)
ldi  (hl),a
dec  b
jr   nz,0A95
add  hl,de
dec  c
jr   nz,0A93
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,55
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0ABB
ld   a,(ff00+01)
cp   a,29
jr   nz,0AAD
ld   b,00
ld   hl,C300
xor  a
ld   (ff00+CC),a
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0AD4
ld   a,(ff00+01)
ldi  (hl),a
inc  b
jr   nz,0ACB
call 0B07
xor  a
ld   (ff00+CC),a
ld   a,56
ld   (ff00+01),a
ld   a,80
ld   (ff00+02),a
ld   a,(ff00+CC)
and  a
jr   z,0AED
ld   a,(ff00+01)
cp   a,30
jr   nz,0ADF
jp   0A35
ld   hl,CA42
ld   a,80
ld   b,0A
ldi  (hl),a
dec  b
jr   nz,0B02
ret  
push bc
ld   b,FA
ld   b,b
dec  b
jr   nz,0B0A
pop  bc
ret  
push hl
push bc
ld   a,(ff00+FC)
and  a,FC
ld   c,a
ld   h,03
ld   a,(ff00+04)
ld   b,a
xor  a
dec  b
jr   z,0B2A
inc  a
inc  a
inc  a
inc  a
cp   a,1C
jr   z,0B1C
jr   0B1D
ld   d,a
ld   a,(ff00+AE)
ld   e,a
dec  h
jr   z,0B38
or   d
or   c
and  a,FC
cp   c
jr   z,0B19
ld   a,d
ld   (ff00+AE),a
ld   a,e
ld   (ff00+FC),a
pop  bc
pop  hl
ret  
ld   a,01
ld   (ff00+FF),a
ld   a,(ff00+E3)
and  a
jr   nz,0B66
ld   b,44
ld   c,20
call 11A3
ld   a,02
ld   (ff00+CD),a
call 26D7
call 26EA
call 157B
xor  a
ld   (ff00+D6),a
ld   a,1A
ld   (ff00+E1),a
ret  
cp   a,05
ret  nz
ld   hl,C030
ld   b,12
ld   (hl),F0
inc  hl
ld   (hl),10
inc  hl
ld   (hl),B6
inc  hl
ld   (hl),80
inc  hl
dec  b
jr   nz,0B6E
ld   a,(C3FF)
ld   b,0A
ld   hl,C400
dec  a
jr   z,0B8E
inc  l
dec  b
jr   nz,0B85
jr   0B80
ld   (hl),2F
ld   a,03
ld   (ff00+CE),a
ret  
ld   a,01
ld   (ff00+FF),a
ld   hl,C09C
xor  a
ldi  (hl),a
ld   (hl),50
inc  l
ld   (hl),27
inc  l
ld   (hl),00
call 1C68
call 1CE3
call 2515
call 20F7
call 2199
call 25F5
call 22AD
call 0BFF
ld   a,(ff00+D5)
and  a
jr   z,0BD7
ld   a,77
ld   (ff00+CF),a
ld   (ff00+B1),a
ld   a,AA
ld   (ff00+D1),a
ld   a,1B
ld   (ff00+E1),a
ld   a,05
ld   (ff00+A7),a
jr   0BE7
ld   a,(ff00+E1)
cp   a,01
jr   nz,0BF8
ld   a,AA
ld   (ff00+CF),a
ld   (ff00+B1),a
ld   a,77
ld   (ff00+D1),a
xor  a
ld   (ff00+DC),a
ld   (ff00+D2),a
ld   (ff00+D3),a
ld   (ff00+D4),a
ld   a,(ff00+CB)
cp   a,29
jr   nz,0BF8
ld   (ff00+CE),a
call 0C54
call 0CF0
ret  
ld   de,0020
ld   hl,C802
ld   a,2F
ld   c,12
ld   b,0A
push hl
cp   (hl)
jr   nz,0C19
inc  hl
dec  b
jr   nz,0C0C
pop  hl
add  hl,de
dec  c
jr   nz,0C09
push hl
pop  hl
ld   a,c
ld   (ff00+B1),a
cp   a,0C
ld   a,(DFE9)
jr   nc,0C2B
cp   a,08
ret  nz
call 157B
ret  
cp   a,08
ret  z
ld   a,(DFF0)
cp   a,02
ret  z
ld   a,08
ld   (DFE8),a
ret  
ld   a,(ff00+CB)
cp   a,29
jr   z,0C92
ld   a,01
ld   (DF7F),a
ld   (ff00+AB),a
ld   a,(ff00+CF)
ld   (ff00+F1),a
xor  a
ld   (ff00+F2),a
ld   (ff00+CF),a
call 1D26
ret  
ld   a,(ff00+CC)
and  a
ret  z
ld   hl,C030
ld   de,0004
xor  a
ld   (ff00+CC),a
ld   a,(ff00+D0)
cp   a,AA
jr   z,0CC8
cp   a,77
jr   z,0CB4
cp   a,94
jr   z,0C3A
ld   b,a
and  a
jr   z,0CC4
bit  7,a
jr   nz,0CE6
cp   a,13
jr   nc,0C92
ld   a,12
sub  b
ld   c,a
inc  c
ld   a,98
ld   (hl),a
add  hl,de
sub  a,08
dec  b
jr   nz,0C82
ld   a,F0
dec  c
jr   z,0C92
ld   (hl),a
add  hl,de
jr   0C8B
ld   a,(ff00+DC)
and  a
jr   z,0C9E
or   a,80
ld   (ff00+B1),a
xor  a
ld   (ff00+DC),a
ld   a,FF
ld   (ff00+D0),a
ld   a,(ff00+CB)
cp   a,29
ld   a,(ff00+B1)
jr   nz,0CB1
ld   (ff00+CF),a
ld   a,01
ld   (ff00+CE),a
ret  
ld   (ff00+CF),a
ret  
ld   a,(ff00+D1)
cp   a,AA
jr   z,0CE0
ld   a,77
ld   (ff00+D1),a
ld   a,01
ld   (ff00+E1),a
jr   0C92
ld   c,13
jr   0C89
ld   a,(ff00+D1)
cp   a,77
jr   z,0CE0
ld   a,AA
ld   (ff00+D1),a
ld   a,1B
ld   (ff00+E1),a
ld   a,05
ld   (ff00+A7),a
ld   c,01
ld   b,12
jr   0C80
ld   a,01
ld   (ff00+EF),a
jr   0C92
and  a,7F
cp   a,05
jr   nc,0C92
ld   (ff00+D2),a
jr   0C9E
ld   a,(ff00+D3)
and  a
jr   z,0CFC
bit  7,a
ret  z
and  a,07
jr   0D06
ld   a,(ff00+D2)
and  a
ret  z
ld   (ff00+D3),a
xor  a
ld   (ff00+D2),a
ret  
ld   c,a
push bc
ld   hl,C822
ld   de,FFE0
add  hl,de
dec  c
jr   nz,0D0E
ld   de,C822
ld   c,11
ld   b,0A
ld   a,(de)
ldi  (hl),a
inc  e
dec  b
jr   nz,0D19
push de
ld   de,0016
add  hl,de
pop  de
push hl
ld   hl,0016
add  hl,de
push hl
pop  de
pop  hl
dec  c
jr   nz,0D17
pop  bc
ld   de,C400
ld   b,0A
ld   a,(de)
ldi  (hl),a
inc  de
dec  b
jr   nz,0D36
push de
ld   de,0016
add  hl,de
pop  de
dec  c
jr   nz,0D31
ld   a,02
ld   (ff00+E3),a
ld   (ff00+D4),a
xor  a
ld   (ff00+D3),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,01
ld   (ff00+FF),a
ld   a,03
ld   (ff00+CD),a
ld   a,(ff00+D1)
cp   a,77
jr   nz,0D6D
ld   a,(ff00+D0)
cp   a,AA
jr   nz,0D77
ld   a,01
ld   (ff00+EF),a
jr   0D77
cp   a,AA
jr   nz,0D77
ld   a,(ff00+D0)
cp   a,77
jr   z,0D67
ld   b,34
ld   c,43
call 11A3
xor  a
ld   (ff00+E3),a
ld   a,(ff00+D1)
cp   a,AA
ld   a,1E
jr   nz,0D8B
ld   a,1D
ld   (ff00+E1),a
ld   a,28
ld   (ff00+A6),a
ld   a,1D
ld   (ff00+C6),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,(ff00+EF)
and  a
jr   nz,0DA4
ld   a,(ff00+D7)
inc  a
ld   (ff00+D7),a
call 0FD3
ld   de,274D
ld   a,(ff00+CB)
cp   a,29
jr   z,0DB3
ld   de,275F
ld   hl,C200
ld   c,03
call 17DA
ld   a,19
ld   (ff00+A6),a
ld   a,(ff00+EF)
and  a
jr   z,0DC9
ld   hl,C220
ld   (hl),80
ld   a,03
call 26C7
ld   a,20
ld   (ff00+E1),a
ld   a,09
ld   (DFE8),a
ld   a,(ff00+D7)
cp   a,05
ret  nz
ld   a,11
ld   (DFE8),a
ret  
ld   a,(ff00+D7)
cp   a,05
jr   nz,0DEF
ld   a,(ff00+C6)
and  a
jr   z,0DF5
jr   0E11
ld   a,(ff00+81)
bit  3,a
jr   z,0E11
ld   a,60
ld   (ff00+CF),a
ld   (ff00+CE),a
jr   0E1A
ld   a,01
ld   (ff00+FF),a
ld   a,(ff00+CC)
jr   z,0E11
ld   a,(ff00+CB)
cp   a,29
jr   z,0DE2
ld   a,(ff00+D0)
cp   a,60
jr   z,0E1A
call 0E21
ld   a,03
call 26C7
ret  
ld   a,1F
ld   (ff00+E1),a
ld   (ff00+CC),a
ret  
ld   a,(ff00+A6)
and  a
jr   nz,0E49
ld   hl,FFC6
dec  (hl)
ld   a,19
ld   (ff00+A6),a
call 0FC4
ld   hl,C201
ld   a,(hl)
xor  a,30
ldi  (hl),a
cp   a,60
call z,0F7B
inc  l
push af
ld   a,(hl)
xor  a,01
ld   (hl),a
ld   l,13
ldd  (hl),a
pop  af
dec  l
ld   (hl),a
ld   a,(ff00+D7)
cp   a,05
jr   nz,0E77
ld   a,(ff00+C6)
ld   hl,C221
cp   a,06
jr   z,0E73
cp   a,08
jr   nc,0E77
ld   a,(hl)
cp   a,72
jr   nc,0E67
cp   a,69
ret  z
inc  (hl)
inc  (hl)
ret  
ld   (hl),69
inc  l
inc  l
ld   (hl),57
ld   a,06
ld   (DFE0),a
ret  
dec  l
ld   (hl),80
ret  
ld   a,(ff00+A7)
and  a
ret  nz
ld   a,0F
ld   (ff00+A7),a
ld   hl,C223
ld   a,(hl)
xor  a,01
ld   (hl),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,(ff00+EF)
and  a
jr   nz,0E95
ld   a,(ff00+D8)
inc  a
ld   (ff00+D8),a
call 0FD3
ld   de,2771
ld   a,(ff00+CB)
cp   a,29
jr   z,0EA4
ld   de,277D
ld   hl,C200
ld   c,02
call 17DA
ld   a,19
ld   (ff00+A6),a
ld   a,(ff00+EF)
and  a
jr   z,0EBA
ld   hl,C210
ld   (hl),80
ld   a,02
call 26C7
ld   a,21
ld   (ff00+E1),a
ld   a,09
ld   (DFE8),a
ld   a,(ff00+D8)
cp   a,05
ret  nz
ld   a,11
ld   (DFE8),a
ret  
ld   a,(ff00+D8)
cp   a,05
jr   nz,0EE0
ld   a,(ff00+C6)
and  a
jr   z,0EE6
jr   0F02
ld   a,(ff00+81)
bit  3,a
jr   z,0F02
ld   a,60
ld   (ff00+CF),a
ld   (ff00+CE),a
jr   0F0B
ld   a,01
ld   (ff00+FF),a
ld   a,(ff00+CC)
jr   z,0F02
ld   a,(ff00+CB)
cp   a,29
jr   z,0ED3
ld   a,(ff00+D0)
cp   a,60
jr   z,0F0B
call 0F12
ld   a,02
call 26C7
ret  
ld   a,1F
ld   (ff00+E1),a
ld   (ff00+CC),a
ret  
ld   a,(ff00+A6)
and  a
jr   nz,0F33
ld   hl,FFC6
dec  (hl)
ld   a,19
ld   (ff00+A6),a
call 0FC4
ld   hl,C211
ld   a,(hl)
xor  a,08
ldi  (hl),a
cp   a,68
call z,0F7B
inc  l
ld   a,(hl)
xor  a,01
ld   (hl),a
ld   a,(ff00+D8)
cp   a,05
jr   nz,0F6B
ld   a,(ff00+C6)
ld   hl,C201
cp   a,05
jr   z,0F67
cp   a,06
jr   z,0F57
cp   a,08
jr   nc,0F6B
ld   a,(hl)
cp   a,72
jr   nc,0F67
cp   a,61
ret  z
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
ret  
dec  l
ld   (hl),00
inc  l
ld   (hl),61
inc  l
inc  l
ld   (hl),56
ld   a,06
ld   (DFE0),a
ret  
dec  l
ld   (hl),80
ret  
ld   a,(ff00+A7)
and  a
ret  nz
ld   a,0F
ld   (ff00+A7),a
ld   hl,C203
ld   a,(hl)
xor  a,01
ld   (hl),a
ret  
push af
push hl
ld   a,(ff00+D7)
cp   a,05
jr   z,0F9D
ld   a,(ff00+D8)
cp   a,05
jr   z,0F9D
ld   a,(ff00+CB)
cp   a,29
jr   nz,0F9D
ld   hl,C060
ld   b,24
ld   de,0FA0
ld   a,(de)
ldi  (hl),a
inc  de
dec  b
jr   nz,0F97
pop  hl
pop  af
ret  
ld   b,d
jr   nc,0FB0
nop  
ld   b,d
jr   c,0F59
nop  
ld   b,d
ld   b,b
ld   c,00
ld   b,d
ld   c,b
inc  e
nop  
ld   b,d
ld   e,b
ld   c,00
ld   b,d
ld   h,b
dec  e
nop  
ld   b,d
ld   l,b
or   l
nop  
ld   b,d
ld   (hl),b
cp   e
nop  
ld   b,d
ld   a,b
dec  e
nop  
ld   hl,C060
ld   de,0004
ld   b,09
xor  a
ld   (hl),a
add  hl,de
dec  b
jr   nz,0FCD
ret  
call 2874
ld   hl,55F4
ld   bc,1000
call 2838
call 27E9
ld   hl,9800
ld   de,552C
ld   b,04
call 2844
ld   hl,9980
ld   b,06
call 2844
ld   a,(ff00+CB)
cp   a,29
jr   nz,101D
ld   hl,9841
ld   (hl),BD
inc  l
ld   (hl),B2
inc  l
ld   (hl),2E
inc  l
ld   (hl),BE
inc  l
ld   (hl),2E
ld   hl,9A01
ld   (hl),B4
inc  l
ld   (hl),B5
inc  l
ld   (hl),BB
inc  l
ld   (hl),2E
inc  l
ld   (hl),BC
ld   a,(ff00+EF)
and  a
jr   nz,1025
call 10E9
ld   a,(ff00+D7)
and  a
jr   z,1073
cp   a,05
jr   nz,1044
ld   hl,98A5
ld   b,0B
ld   a,(ff00+CB)
cp   a,29
ld   de,1157
jr   z,103F
ld   de,1162
call 113C
ld   a,04
ld   c,a
ld   a,(ff00+CB)
cp   a,29
ld   a,93
jr   nz,104F
ld   a,8F
ld   (ff00+A0),a
ld   hl,99E7
call 10CE
ld   a,(ff00+D9)
and  a
jr   z,1073
ld   a,AC
ld   (ff00+A0),a
ld   hl,99F0
ld   c,01
call 10CE
ld   hl,98A6
ld   de,116D
ld   b,09
call 113C
ld   a,(ff00+D8)
and  a
jr   z,10B6
cp   a,05
jr   nz,1092
ld   hl,98A5
ld   b,0B
ld   a,(ff00+CB)
cp   a,29
ld   de,1162
jr   z,108D
ld   de,1157
call 113C
ld   a,04
ld   c,a
ld   a,(ff00+CB)
cp   a,29
ld   a,8F
jr   nz,109D
ld   a,93
ld   (ff00+A0),a
ld   hl,9827
call 10CE
ld   a,(ff00+DA)
and  a
jr   z,10B6
ld   a,AC
ld   (ff00+A0),a
ld   hl,9830
ld   c,01
call 10CE
ld   a,(ff00+DB)
and  a
jr   z,10C6
ld   hl,98A7
ld   de,1151
ld   b,06
call 113C
ld   a,D3
ld   (ff00+40),a
call 17EE
ret  
ld   a,(ff00+A0)
push hl
ld   de,0020
ld   b,02
push hl
ldi  (hl),a
inc  a
ld   (hl),a
inc  a
pop  hl
add  hl,de
dec  b
jr   nz,10D6
pop  hl
ld   de,0003
add  hl,de
dec  c
jr   nz,10CE
ret  
ld   hl,FFD7
ld   de,FFD8
ld   a,(ff00+D9)
and  a
jr   nz,112E
ld   a,(ff00+DA)
and  a
jr   nz,1135
ld   a,(ff00+DB)
and  a
jr   nz,111F
ld   a,(hl)
cp   a,04
jr   z,1114
ld   a,(de)
cp   a,04
ret  nz
ld   a,05
ld   (de),a
jr   1116
ld   a,(de)
cp   a,03
ret  nz
ld   a,03
jr   1119
ld   (hl),05
xor  a
ld   (ff00+DB),a
xor  a
ld   (ff00+D9),a
ld   (ff00+DA),a
ret  
ld   a,(hl)
cp   a,04
jr   nz,112A
ld   (ff00+D9),a
xor  a
ld   (ff00+DB),a
ret  
ld   (ff00+DA),a
jr   1126
ld   a,(hl)
cp   a,05
jr   z,1114
jr   1110
ld   a,(de)
cp   a,05
jr   z,1107
jr   1110
push bc
push hl
ld   a,(de)
ldi  (hl),a
inc  de
dec  b
jr   nz,113E
pop  hl
ld   de,0020
add  hl,de
pop  bc
ld   a,B6
ldi  (hl),a
dec  b
jr   nz,114C
ret  
or   b
or   c
or   d
or   e
or   c
ld   a,B4
or   l
cp   e
ld   l,BC
cpl  
dec  l
ld   l,3D
ld   c,3E
cp   l
or   d
ld   l,BE
ld   l,2F
dec  l
ld   l,3D
ld   c,3E
or   l
or   b
ld   b,c
or   l
dec  a
dec  e
or   l
cp   (hl)
or   c
ld   a,01
ld   (ff00+FF),a
ld   a,(ff00+A6)
and  a
ret  nz
call 17EE
xor  a
ld   (ff00+EF),a
ld   b,27
ld   c,79
call 11A3
call 7FF3
ld   a,(ff00+D7)
cp   a,05
jr   z,119E
ld   a,(ff00+D8)
cp   a,05
jr   z,119E
ld   a,01
ld   (ff00+D6),a
ld   a,16
ld   (ff00+E1),a
ret  
ld   a,(ff00+CC)
and  a
jr   z,11BC
xor  a
ld   (ff00+CC),a
ld   a,(ff00+CB)
cp   a,29
ld   a,(ff00+D0)
jr   nz,11C4
cp   b
jr   z,11BE
ld   a,02
ld   (ff00+CF),a
ld   (ff00+CE),a
pop  hl
ret  
ld   a,c
ld   (ff00+CF),a
ld   (ff00+CE),a
ret  
cp   c
ret  z
ld   a,b
ld   (ff00+CF),a
pop  hl
ret  
call 1216
ld   hl,9CE6
ld   de,147F
ld   b,07
call 149B
ld   hl,9CE7
ld   de,1486
ld   b,07
call 149B
ld   hl,9D08
ld   (hl),72
inc  l
ld   (hl),C4
ld   hl,9D28
ld   (hl),B7
inc  l
ld   (hl),B8
ld   de,27C5
ld   hl,C200
ld   c,03
call 17DA
ld   a,03
call 26C7
ld   a,DB
ld   (ff00+40),a
ld   a,BB
ld   (ff00+A6),a
ld   a,27
ld   (ff00+E1),a
ld   a,10
ld   (DFE8),a
ret  
call 2874
ld   hl,55F4
ld   bc,1000
call 2838
ld   hl,9FFF
call 27EC
ld   hl,9DC0
ld   de,520C
ld   b,04
call 2844
ld   hl,9CEC
ld   de,148D
ld   b,07
call 149B
ld   hl,9CED
ld   de,1494
ld   b,07
call 149B
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   hl,C210
ld   (hl),00
ld   l,20
ld   (hl),00
ld   a,FF
ld   (ff00+A6),a
ld   a,28
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
jr   z,1269
call 145E
ret  
ld   a,29
ld   (ff00+E1),a
ld   hl,C213
ld   (hl),35
ld   l,23
ld   (hl),35
ld   a,FF
ld   (ff00+A6),a
ld   a,2F
call 2032
ret  
ld   a,(ff00+A6)
and  a
jr   z,1289
call 145E
ret  
ld   a,02
ld   (ff00+E1),a
ld   hl,9D08
ld   b,2F
call 1A63
ld   hl,9D09
call 1A63
ld   hl,9D28
call 1A63
ld   hl,9D29
call 1A63
ret  
ld   a,(ff00+A6)
and  a
jr   nz,12DB
ld   a,0A
ld   (ff00+A6),a
ld   hl,C201
dec  (hl)
ld   a,(hl)
cp   a,58
jr   nz,12DB
ld   hl,C210
ld   (hl),00
inc  l
add  a,20
ldi  (hl),a
ld   (hl),4C
inc  l
ld   (hl),40
ld   l,20
ld   (hl),80
ld   a,03
call 26C7
ld   a,03
ld   (ff00+E1),a
ld   a,04
ld   (DFF8),a
ret  
call 145E
ret  
ld   a,(ff00+A6)
and  a
jr   nz,1301
ld   a,0A
ld   (ff00+A6),a
ld   hl,C211
dec  (hl)
ld   l,01
dec  (hl)
ld   a,(hl)
cp   a,D0
jr   nz,1301
ld   a,9C
ld   (ff00+C9),a
ld   a,82
ld   (ff00+CA),a
ld   a,2C
ld   (ff00+E1),a
ret  
ld   a,(ff00+A7)
and  a
jr   nz,1311
ld   a,06
ld   (ff00+A7),a
ld   hl,C213
ld   a,(hl)
xor  a,01
ld   (hl),a
ld   a,03
call 26C7
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,06
ld   (ff00+A6),a
ld   a,(ff00+CA)
sub  a,82
ld   e,a
ld   d,00
ld   hl,1359
add  hl,de
push hl
pop  de
ld   a,(ff00+C9)
ld   h,a
ld   a,(ff00+CA)
ld   l,a
ld   a,(de)
call 1A62
push hl
ld   de,0020
add  hl,de
ld   b,B6
call 1A63
pop  hl
inc  hl
ld   a,02
ld   (DFE0),a
ld   a,h
ld   (ff00+C9),a
ld   a,l
ld   (ff00+CA),a
cp   a,92
ret  nz
ld   a,FF
ld   (ff00+A6),a
ld   a,2D
ld   (ff00+E1),a
ret  
or   e
cp   h
dec  a
cp   (hl)
cp   e
or   l
dec  e
or   d
cp   l
or   l
dec  e
ld   l,BC
dec  a
ld   c,3E
ld   a,(ff00+A6)
and  a
ret  nz
call 2874
call 2801
call 22F3
ld   a,93
ld   (ff00+40),a
ld   a,05
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,2E
ld   (ff00+E1),a
ret  
call 1216
ld   de,27D7
ld   hl,C200
ld   c,03
call 17DA
ld   a,(ff00+F3)
ld   (C203),a
ld   a,03
call 26C7
xor  a
ld   (ff00+F3),a
ld   a,DB
ld   (ff00+40),a
ld   a,BB
ld   (ff00+A6),a
ld   a,2F
ld   (ff00+E1),a
ld   a,10
ld   (DFE8),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   hl,C210
ld   (hl),00
ld   l,20
ld   (hl),00
ld   a,A0
ld   (ff00+A6),a
ld   a,30
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
jr   z,13D4
call 145E
ret  
ld   a,31
ld   (ff00+E1),a
ld   a,80
ld   (ff00+A6),a
ld   a,2F
call 2032
ret  
ld   a,(ff00+A6)
and  a
jr   nz,1415
ld   a,0A
ld   (ff00+A6),a
ld   hl,C201
dec  (hl)
ld   a,(hl)
cp   a,6A
jr   nz,1415
ld   hl,C210
ld   (hl),00
inc  l
add  a,10
ldi  (hl),a
ld   (hl),54
inc  l
ld   (hl),5C
ld   l,20
ld   (hl),80
ld   a,03
call 26C7
ld   a,32
ld   (ff00+E1),a
ld   a,04
ld   (DFF8),a
ret  
call 145E
ret  
ld   a,(ff00+A6)
and  a
jr   nz,1433
ld   a,0A
ld   (ff00+A6),a
ld   hl,C211
dec  (hl)
ld   l,01
dec  (hl)
ld   a,(hl)
cp   a,E0
jr   nz,1433
ld   a,33
ld   (ff00+E1),a
ret  
ld   a,(ff00+A7)
and  a
jr   nz,1443
ld   a,06
ld   (ff00+A7),a
ld   hl,C213
ld   a,(hl)
xor  a,01
ld   (hl),a
ld   a,03
call 26C7
ret  
call 2874
call 2801
call 7FF3
call 22F3
ld   a,93
ld   (ff00+40),a
ld   a,10
ld   (ff00+E1),a
ret  
ld   a,(ff00+A7)
and  a
ret  nz
ld   a,0A
ld   (ff00+A7),a
ld   a,03
ld   (DFF8),a
ld   b,02
ld   hl,C210
ld   a,(hl)
xor  a,80
ld   (hl),a
ld   l,20
dec  b
jr   nz,1470
ld   a,03
call 26C7
ret  
jp   nz,CACA
jp   z,CACA
jp   z,CBC3
ld   e,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ret  z
ld   (hl),e
ld   (hl),e
ld   (hl),e
ld   (hl),e
ld   (hl),e
ld   (hl),e
ret  
ld   (hl),h
ld   (hl),h
ld   (hl),h
ld   (hl),h
ld   (hl),h
ld   (hl),h
ld   a,(de)
ld   (hl),a
inc  de
push de
ld   de,0020
add  hl,de
pop  de
dec  b
jr   nz,149B
ret  
ld   a,01
ld   (ff00+FF),a
xor  a
ld   (ff00+01),a
ld   (ff00+02),a
ld   (ff00+0F),a
call 2874
call 2801
ld   de,4D1F
call 283F
call 17EE
ld   hl,C200
ld   de,2723
ld   c,02
call 17DA
ld   de,C201
call 14F1
ld   a,(ff00+C0)
ld   e,12
ld   (de),a
inc  de
cp   a,37
ld   a,1C
jr   z,14E1
ld   a,1D
ld   (de),a
call 26C5
call 157B
ld   a,D3
ld   (ff00+40),a
ld   a,0E
ld   (ff00+E1),a
ret  
ld   a,01
ld   (DFE0),a
ld   a,(ff00+C1)
push af
sub  a,1C
add  a
ld   c,a
ld   b,00
ld   hl,150C
add  hl,bc
ldi  a,(hl)
ld   (de),a
inc  de
ld   a,(hl)
ld   (de),a
inc  de
pop  af
ld   (de),a
ret  
ld   (hl),b
scf  
ld   (hl),b
ld   (hl),a
add  b
scf  
add  b
ld   (hl),a
ld   de,C200
call 17CA
ld   hl,FFC1
ld   a,(hl)
bit  3,b
jp   nz,15C7
bit  0,b
jp   nz,15C7
bit  1,b
jr   nz,156D
inc  e
bit  4,b
jr   nz,1557
bit  5,b
jr   nz,1562
bit  6,b
jr   nz,154F
bit  7,b
jp   z,15C3
cp   a,1E
jr   nc,154B
add  a,02
ld   (hl),a
call 14F1
call 157B
call 26C5
ret  
cp   a,1E
jr   c,154B
sub  a,02
jr   1544
cp   a,1D
jr   z,154B
cp   a,1F
jr   z,154B
inc  a
jr   1544
cp   a,1C
jr   z,154B
cp   a,1E
jr   z,154B
dec  a
jr   1544
push af
ld   a,(ff00+C5)
and  a
jr   z,1576
pop  af
jr   152C
pop  af
ld   a,0E
jr   15D6
ld   a,(ff00+C1)
sub  a,17
cp   a,08
jr   nz,1585
ld   a,FF
ld   (DFE8),a
ret  
ld   de,C210
call 17CA
ld   hl,FFC0
ld   a,(hl)
bit  3,b
jr   nz,15C7
bit  0,b
jr   nz,15DB
inc  e
inc  e
bit  4,b
jr   nz,15AF
bit  5,b
jr   z,15C3
cp   a,37
jr   z,15C3
ld   a,37
ld   b,1C
jr   15B7
cp   a,77
jr   z,15C3
ld   a,77
ld   b,1D
ld   (hl),a
push af
ld   a,01
ld   (DFE0),a
pop  af
ld   (de),a
inc  de
ld   a,b
ld   (de),a
call 26C5
ret  
ld   a,02
ld   (DFE0),a
ld   a,(ff00+C0)
cp   a,37
ld   a,10
jr   z,15D6
ld   a,12
ld   (ff00+E1),a
xor  a
jr   15C2
ld   a,0F
jr   15D6
call 2874
ld   de,4E87
call 283F
call 1960
call 17EE
ld   hl,C200
ld   de,272F
ld   c,01
call 17DA
ld   de,C201
ld   a,(ff00+C2)
ld   hl,1679
call 17B2
call 26C5
call 17F9
call 192E
ld   a,D3
ld   (ff00+40),a
ld   a,11
ld   (ff00+E1),a
ld   a,(ff00+C7)
and  a
jr   nz,161E
call 157B
ret  
ld   a,15
ld   (ff00+E1),a
ret  
ld   de,C200
call 17CA
ld   hl,FFC2
ld   a,0A
bit  3,b
jr   nz,1620
bit  0,b
jr   nz,1620
ld   a,08
bit  1,b
jr   nz,1620
ld   a,(hl)
bit  4,b
jr   nz,1655
bit  5,b
jr   nz,166B
bit  6,b
jr   nz,1671
bit  7,b
jr   z,1667
cp   a,05
jr   nc,1667
add  a,05
jr   165A
cp   a,09
jr   z,1667
inc  a
ld   (hl),a
ld   de,C201
ld   hl,1679
call 17B2
call 17F9
call 26C5
ret  
and  a
jr   z,1667
dec  a
jr   165A
cp   a,05
jr   c,1667
sub  a,05
jr   165A
ld   b,b
jr   nc,16BC
ld   b,b
ld   b,b
ld   d,b
ld   b,b
ld   h,b
ld   b,b
ld   (hl),b
ld   d,b
jr   nc,16D6
ld   b,b
ld   d,b
ld   d,b
ld   d,b
ld   h,b
ld   d,b
ld   (hl),b
call 2874
ld   de,4FEF
call 283F
call 17EE
ld   hl,C200
ld   de,2735
ld   c,02
call 17DA
ld   de,C201
ld   a,(ff00+C3)
ld   hl,1736
call 17B2
ld   de,C211
ld   a,(ff00+C4)
ld   hl,17A5
call 17B2
call 26C5
call 1813
call 192E
ld   a,D3
ld   (ff00+40),a
ld   a,13
ld   (ff00+E1),a
ld   a,(ff00+C7)
and  a
jr   nz,16D4
call 157B
ret  
ld   a,15
ld   (ff00+E1),a
ret  
ld   (ff00+E1),a
xor  a
ld   (de),a
ret  
ld   de,C200
call 17CA
ld   hl,FFC3
ld   a,0A
bit  3,b
jr   nz,16D9
ld   a,14
bit  0,b
jr   nz,16D9
ld   a,08
bit  1,b
jr   nz,16D9
ld   a,(hl)
bit  4,b
jr   nz,1712
bit  5,b
jr   nz,1728
bit  6,b
jr   nz,172E
bit  7,b
jr   z,1724
cp   a,05
jr   nc,1724
add  a,05
jr   1717
cp   a,09
jr   z,1724
inc  a
ld   (hl),a
ld   de,C201
ld   hl,1736
call 17B2
call 1813
call 26C5
ret  
and  a
jr   z,1724
dec  a
jr   1717
cp   a,05
jr   c,1724
sub  a,05
jr   1717
ld   b,b
jr   1779
jr   z,177B
jr   c,177D
ld   c,b
ld   b,b
ld   e,b
ld   d,b
jr   1793
jr   z,1795
jr   c,1797
ld   c,b
ld   d,b
ld   e,b
ld   (ff00+E1),a
xor  a
ld   (de),a
ret  
ld   de,C210
call 17CA
ld   hl,FFC4
ld   a,0A
bit  3,b
jr   nz,174A
bit  0,b
jr   nz,174A
ld   a,13
bit  1,b
jr   nz,174A
ld   a,(hl)
bit  4,b
jr   nz,1781
bit  5,b
jr   nz,1797
bit  6,b
jr   nz,179D
bit  7,b
jr   z,1793
cp   a,03
jr   nc,1793
add  a,03
jr   1786
cp   a,05
jr   z,1793
inc  a
ld   (hl),a
ld   de,C211
ld   hl,17A5
call 17B2
call 1813
call 26C5
ret  
and  a
jr   z,1793
dec  a
jr   1786
cp   a,03
jr   c,1793
sub  a,03
jr   1786
ld   b,b
ld   (hl),b
ld   b,b
add  b
ld   b,b
sub  b
ld   d,b
ld   (hl),b
ld   d,b
add  b
ld   d,b
sub  b
nop  
push af
ld   a,01
ld   (DFE0),a
pop  af
push af
add  a
ld   c,a
ld   b,00
add  hl,bc
ldi  a,(hl)
ld   (de),a
inc  de
ld   a,(hl)
ld   (de),a
inc  de
pop  af
add  a,20
ld   (de),a
ret  
ld   a,(ff00+81)
ld   b,a
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,10
ld   (ff00+A6),a
ld   a,(de)
xor  a,80
ld   (de),a
ret  
push hl
ld   b,06
ld   a,(de)
ldi  (hl),a
inc  de
dec  b
jr   nz,17DD
pop  hl
ld   a,10
add  l
ld   l,a
dec  c
jr   nz,17DA
ld   (hl),80
ret  
xor  a
ld   hl,C000
ld   b,A0
ldi  (hl),a
dec  b
jr   nz,17F4
ret  
call 1960
ld   a,(ff00+C2)
ld   hl,D654
ld   de,001B
and  a
jr   z,180B
dec  a
add  hl,de
jr   1804
inc  hl
inc  hl
push hl
pop  de
call 1864
ret  
call 1960
ld   a,(ff00+C3)
ld   hl,D000
ld   de,00A2
and  a
jr   z,1825
dec  a
add  hl,de
jr   181E
ld   a,(ff00+C4)
ld   de,001B
and  a
jr   z,1831
dec  a
add  hl,de
jr   182A
inc  hl
inc  hl
push hl
pop  de
call 1864
ret  
ld   b,03
ld   a,(hl)
and  a,F0
jr   nz,184B
inc  e
ldd  a,(hl)
and  a,0F
jr   nz,1855
inc  e
dec  b
jr   nz,183B
ret  
ld   a,(hl)
and  a,F0
swap a
ld   (de),a
inc  e
ldd  a,(hl)
and  a,0F
ld   (de),a
inc  e
dec  b
jr   nz,184B
ret  
ld   b,03
ldd  a,(hl)
ld   (de),a
dec  de
dec  b
jr   nz,185D
ret  
ld   a,d
ld   (ff00+FB),a
ld   a,e
ld   (ff00+FC),a
ld   c,03
ld   hl,C0A2
push de
ld   b,03
ld   a,(de)
sub  (hl)
jr   c,1886
jr   nz,187D
dec  l
dec  de
dec  b
jr   nz,1872
pop  de
inc  de
inc  de
inc  de
dec  c
jr   nz,186C
jr   18E4
pop  de
ld   a,(ff00+FB)
ld   d,a
ld   a,(ff00+FC)
ld   e,a
push de
push bc
ld   hl,0006
add  hl,de
push hl
pop  de
dec  hl
dec  hl
dec  hl
dec  c
jr   z,18A0
call 185B
jr   1898
ld   hl,C0A2
ld   b,03
ldd  a,(hl)
ld   (de),a
dec  e
dec  b
jr   nz,18A5
pop  bc
pop  de
ld   a,c
ld   (ff00+C8),a
ld   hl,0012
add  hl,de
push hl
ld   de,0006
add  hl,de
push hl
pop  de
pop  hl
dec  c
jr   z,18C6
ld   b,06
call 185D
jr   18BC
ld   a,60
ld   b,05
ld   (de),a
dec  de
dec  b
jr   nz,18CA
ld   a,0A
ld   (de),a
ld   a,d
ld   (ff00+C9),a
ld   a,e
ld   (ff00+CA),a
xor  a
ld   (ff00+9C),a
ld   (ff00+C6),a
ld   a,01
ld   (DFE8),a
ld   (ff00+C7),a
ld   de,C9AC
ld   a,(ff00+FB)
ld   h,a
ld   a,(ff00+FC)
ld   l,a
ld   b,03
push hl
push de
push bc
call 1839
pop  bc
pop  de
ld   hl,0020
add  hl,de
push hl
pop  de
pop  hl
push de
ld   de,0003
add  hl,de
pop  de
dec  b
jr   nz,18EF
dec  hl
dec  hl
ld   b,03
ld   de,C9A4
push de
ld   c,06
ldi  a,(hl)
and  a
jr   z,191A
ld   (de),a
inc  de
dec  c
jr   nz,1911
pop  de
push hl
ld   hl,0020
add  hl,de
push hl
pop  de
pop  hl
dec  b
jr   nz,190E
call 26A5
ld   a,01
ld   (ff00+E8),a
ret  
ld   a,(ff00+E8)
and  a
ret  z
ld   hl,99A4
ld   de,C9A4
ld   c,06
push hl
ld   b,06
ld   a,(de)
ldi  (hl),a
inc  e
dec  b
jr   nz,193D
inc  e
inc  l
inc  e
inc  l
dec  c
jr   z,195B
bit  0,c
jr   nz,193B
pop  hl
ld   de,0020
add  hl,de
push hl
pop  de
ld   a,30
add  d
ld   d,a
jr   193A
pop  hl
xor  a
ld   (ff00+E8),a
ret  
ld   hl,C9A4
ld   de,0020
ld   a,60
ld   c,03
ld   b,0E
push hl
ldi  (hl),a
dec  b
jr   nz,196D
pop  hl
add  hl,de
dec  c
jr   nz,196A
ret  
ld   a,(ff00+C8)
ld   hl,99E4
ld   de,FFE0
dec  a
jr   z,1985
add  hl,de
jr   197F
ld   a,(ff00+C6)
ld   e,a
ld   d,00
add  hl,de
ld   a,(ff00+C9)
ld   d,a
ld   a,(ff00+CA)
ld   e,a
ld   a,(ff00+A6)
and  a
jr   nz,19A8
ld   a,07
ld   (ff00+A6),a
ld   a,(ff00+9C)
xor  a,01
ld   (ff00+9C),a
ld   a,(de)
jr   z,19A5
ld   a,2F
call 1A62
ld   a,(ff00+81)
ld   b,a
ld   a,(ff00+80)
ld   c,a
ld   a,17
bit  6,b
jr   nz,19EB
bit  6,c
jr   nz,19E3
bit  7,b
jr   nz,1A14
bit  7,c
jr   nz,1A0C
bit  0,b
jr   nz,1A30
bit  1,b
jp   nz,1A52
bit  3,b
ret  z
ld   a,(de)
call 1A62
call 157B
xor  a
ld   (ff00+C7),a
ld   a,(ff00+C0)
cp   a,37
ld   a,11
jr   z,19E0
ld   a,13
ld   (ff00+E1),a
ret  
ld   a,(ff00+AA)
dec  a
ld   (ff00+AA),a
ret  nz
ld   a,09
ld   (ff00+AA),a
ld   b,26
ld   a,(ff00+F4)
and  a
jr   z,19F6
ld   b,27
ld   a,(de)
cp   b
jr   nz,1A04
ld   a,2E
inc  a
ld   (de),a
ld   a,01
ld   (DFE0),a
ret  
cp   a,2F
jr   nz,19FC
ld   a,0A
jr   19FD
ld   a,(ff00+AA)
dec  a
ld   (ff00+AA),a
ret  nz
ld   a,09
ld   (ff00+AA),a
ld   b,26
ld   a,(ff00+F4)
and  a
jr   z,1A1F
ld   b,27
ld   a,(de)
cp   a,0A
jr   nz,1A29
ld   a,30
dec  a
jr   19FD
cp   a,2F
jr   nz,1A26
ld   a,b
jr   19FD
ld   a,(de)
call 1A62
ld   a,02
ld   (DFE0),a
ld   a,(ff00+C6)
inc  a
cp   a,06
jr   z,19CC
ld   (ff00+C6),a
inc  de
ld   a,(de)
cp   a,60
jr   nz,1A4B
ld   a,0A
ld   (de),a
ld   a,d
ld   (ff00+C9),a
ld   a,e
ld   (ff00+CA),a
ret  
ld   a,(ff00+C6)
and  a
ret  z
ld   a,(de)
call 1A62
ld   a,(ff00+C6)
dec  a
ld   (ff00+C6),a
dec  de
jr   1A4B
ld   b,a
ld   a,(ff00+41)
and  a,03
jr   nz,1A63
ld   (hl),b
ret  
call 2874
xor  a
ld   (C210),a
ld   (ff00+98),a
ld   (ff00+9C),a
ld   (ff00+9B),a
ld   (ff00+FB),a
ld   (ff00+9F),a
ld   a,2F
call 2032
call 204D
call 26A5
xor  a
ld   (ff00+E3),a
ld   (ff00+E7),a
call 17EE
ld   a,(ff00+C0)
ld   de,403F
ld   hl,FFC3
cp   a,77
ld   a,50
jr   z,1AA5
ld   a,F1
ld   hl,FFC2
ld   de,3ED7
push de
ld   (ff00+E6),a
ld   a,(hl)
ld   (ff00+A9),a
call 283F
pop  de
ld   hl,9C00
call 2842
ld   de,288D
ld   hl,9C63
ld   c,0A
call 1FD8
ld   h,98
ld   a,(ff00+E6)
ld   l,a
ld   a,(ff00+A9)
ld   (hl),a
ld   h,9C
ld   (hl),a
ld   a,(ff00+F4)
and  a
jr   z,1AD7
inc  hl
ld   (hl),27
ld   h,98
ld   (hl),27
ld   hl,C200
ld   de,2713
call 270A
ld   hl,C210
ld   de,271B
call 270A
ld   hl,9951
ld   a,(ff00+C0)
cp   a,77
ld   a,25
jr   z,1AF5
xor  a
ld   (ff00+9E),a
and  a,0F
ldd  (hl),a
jr   z,1AFE
ld   (hl),02
call 1B43
call 2062
call 2062
call 2062
call 26D7
xor  a
ld   (ff00+A0),a
ld   a,(ff00+C0)
cp   a,77
jr   nz,1B3B
ld   a,34
ld   (ff00+99),a
ld   a,(ff00+C4)
ld   hl,98B0
ld   (hl),a
ld   h,9C
ld   (hl),a
and  a
jr   z,1B3B
ld   b,a
ld   a,(ff00+E4)
and  a
jr   z,1B31
call 1B76
jr   1B3B
ld   a,b
ld   de,FFC0
ld   hl,9A02
call 1BC3
ld   a,D3
ld   (ff00+40),a
xor  a
ld   (ff00+E1),a
ret  
ld   a,(ff00+A9)
ld   e,a
ld   a,(ff00+F4)
and  a
jr   z,1B55
ld   a,0A
add  e
cp   a,15
jr   c,1B54
ld   a,14
ld   e,a
ld   hl,1B61
ld   d,00
add  hl,de
ld   a,(hl)
ld   (ff00+99),a
ld   (ff00+9A),a
ret  
inc  (hl)
jr   nc,1B90
jr   z,1B8A
jr   nz,1B83
dec  d
<corrupted stop>
add  hl,bc
ld   (0607),sp
dec  b
dec  b
inc  b
inc  b
inc  bc
inc  bc
ld   (bc),a
ld   hl,99C2
ld   de,1B9B
ld   c,04
ld   b,0A
push hl
ld   a,(de)
ld   (hl),a
push hl
ld   a,h
add  a,30
ld   h,a
ld   a,(de)
ld   (hl),a
pop  hl
inc  l
inc  de
dec  b
jr   nz,1B81
pop  hl
push de
ld   de,0020
add  hl,de
pop  de
dec  c
jr   nz,1B7E
ret  
add  l
cpl  
add  d
add  (hl)
add  e
cpl  
cpl  
add  b
add  d
add  l
cpl  
add  d
add  h
add  d
add  e
cpl  
add  e
cpl  
add  a
cpl  
cpl  
add  l
cpl  
add  e
cpl  
add  (hl)
add  d
add  b
add  c
cpl  
add  e
cpl  
add  (hl)
add  e
cpl  
add  l
cpl  
add  l
cpl  
cpl  
ld   b,a
dec  b
jr   z,1BCA
add  hl,de
jr   1BC4
ld   a,(ff00+04)
ld   b,a
ld   a,80
dec  b
jr   z,1BDA
cp   a,80
jr   nz,1BCD
ld   a,2F
jr   1BCF
cp   a,2F
jr   z,1BE6
ld   a,(ff00+04)
and  a,07
or   a,80
jr   1BE8
ld   (ff00+A0),a
push af
ld   a,l
and  a,0F
cp   a,0B
jr   nz,1BFB
ld   a,(ff00+A0)
cp   a,2F
jr   z,1BFB
pop  af
ld   a,2F
jr   1BFC
pop  af
ld   (hl),a
push hl
push af
ld   a,(ff00+C5)
and  a
jr   nz,1C08
ld   de,3000
add  hl,de
pop  af
ld   (hl),a
pop  hl
inc  hl
ld   a,l
and  a,0F
cp   a,0C
jr   nz,1BCA
xor  a
ld   (ff00+A0),a
ld   a,h
and  a,0F
cp   a,0A
jr   z,1C23
ld   de,0016
add  hl,de
jr   1BCA
ld   a,l
cp   a,2C
jr   nz,1C1D
ret  
call 1C68
ld   a,(ff00+AB)
and  a
ret  nz
call 0579
call 05AF
call 05F0
call 2515
call 20F7
call 2199
call 25F5
call 22AD
call 1FEC
call 0620
ret  
bit  2,a
ret  z
ld   a,(C0DE)
xor  a,01
ld   (C0DE),a
jr   z,1C65
ld   a,80
ld   (C210),a
call 26EA
ret  
xor  a
jr   1C5E
ld   a,(ff00+80)
and  a,0F
cp   a,0F
jp   z,029A
ld   a,(ff00+E4)
and  a
ret  nz
ld   a,(ff00+81)
bit  3,a
jr   z,1C4F
ld   a,(ff00+C5)
and  a
jr   nz,1CC5
ld   hl,FF40
ld   a,(ff00+AB)
xor  a,01
ld   (ff00+AB),a
jr   z,1CB5
set  3,(hl)
ld   a,01
ld   (DF7F),a
ld   hl,994E
ld   de,9D4E
ld   b,04
ld   a,(ff00+41)
and  a,03
jr   nz,1C9A
ldi  a,(hl)
ld   (de),a
inc  de
dec  b
jr   nz,1C9A
ld   a,80
ld   (C210),a
ld   (C200),a
call 26D7
call 26EA
ret  
res  3,(hl)
ld   a,02
ld   (DF7F),a
ld   a,(C0DE)
and  a
jr   z,1CA8
xor  a
jr   1CAB
ld   a,(ff00+CB)
cp   a,29
ret  nz
ld   a,(ff00+AB)
xor  a,01
ld   (ff00+AB),a
jr   z,1D05
ld   a,01
ld   (DF7F),a
ld   a,(ff00+D0)
ld   (ff00+F2),a
ld   a,(ff00+CF)
ld   (ff00+F1),a
call 1D26
ret  
ld   a,(ff00+AB)
and  a
ret  z
ld   a,(ff00+CC)
jr   z,1D24
xor  a
ld   (ff00+CC),a
ld   a,(ff00+CB)
cp   a,29
jr   nz,1CFC
ld   a,94
ld   (ff00+CF),a
ld   (ff00+CE),a
pop  hl
ret  
xor  a
ld   (ff00+CF),a
ld   a,(ff00+D0)
cp   a,94
jr   z,1D24
ld   a,(ff00+F2)
ld   (ff00+D0),a
ld   a,(ff00+F1)
ld   (ff00+CF),a
ld   a,02
ld   (DF7F),a
xor  a
ld   (ff00+AB),a
ld   hl,98EE
ld   b,8E
ld   c,05
call 1A63
inc  l
dec  c
jr   nz,1D1C
ret  
pop  hl
ret  
ld   hl,98EE
ld   c,05
ld   de,1D38
ld   a,(de)
call 1A62
inc  de
inc  l
dec  c
jr   nz,1D2E
ret  
add  hl,de
ld   a,(bc)
ld   e,1C
ld   c,3E
add  b
ld   (C200),a
ld   (C210),a
call 26D7
call 26EA
xor  a
ld   (ff00+98),a
ld   (ff00+9C),a
call 22F3
ld   a,87
call 2032
ld   a,46
ld   (ff00+A6),a
ld   a,0D
ld   (ff00+E1),a
ret  
ld   a,(ff00+81)
bit  0,a
jr   nz,1D6A
bit  3,a
ret  z
xor  a
ld   (ff00+E3),a
ld   a,(ff00+C5)
and  a
ld   a,16
jr   nz,1D7E
ld   a,(ff00+C0)
cp   a,37
ld   a,10
jr   z,1D7E
ld   a,12
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   hl,C802
ld   de,28DD
call 2858
ld   a,(ff00+C3)
and  a
jr   z,1DC1
ld   de,0040
ld   hl,C827
call 1DDF
ld   de,0100
ld   hl,C887
call 1DDF
ld   de,0300
ld   hl,C8E7
call 1DDF
ld   de,1200
ld   hl,C947
call 1DDF
ld   hl,C0A0
ld   b,03
xor  a
ldi  (hl),a
dec  b
jr   nz,1DBD
ld   a,80
ld   (ff00+A6),a
ld   a,80
ld   (C200),a
ld   (C210),a
call 26D7
call 26EA
call 7FF3
ld   a,25
ld   (ff00+9E),a
ld   a,0B
ld   (ff00+E1),a
ret  
push hl
ld   hl,C0A0
ld   b,03
xor  a
ldi  (hl),a
dec  b
jr   nz,1DE6
ld   a,(ff00+C3)
ld   b,a
inc  b
ld   hl,C0A0
call 0166
dec  b
jr   nz,1DEE
pop  hl
ld   b,03
ld   de,C0A2
ld   a,(de)
and  a,F0
jr   nz,1E0C
ld   a,(de)
and  a,0F
jr   nz,1E12
dec  e
dec  b
jr   nz,1DFD
ret  
ld   a,(de)
and  a,F0
swap a
ldi  (hl),a
ld   a,(de)
and  a,0F
ldi  (hl),a
dec  e
dec  b
jr   nz,1E0C
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,01
ld   (C0C6),a
ld   a,05
ld   (ff00+A6),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   hl,C802
ld   de,5157
call 2858
call 17EE
ld   hl,C200
ld   de,2789
ld   c,0A
call 17DA
ld   a,10
ld   hl,C266
ld   (hl),a
ld   l,76
ld   (hl),a
ld   hl,C20E
ld   de,1E8C
ld   b,0A
ld   a,(de)
ldi  (hl),a
ldi  (hl),a
inc  de
push de
ld   de,000E
add  hl,de
pop  de
dec  b
jr   nz,1E55
ld   a,(ff00+C4)
cp   a,05
jr   nz,1E6A
ld   a,09
inc  a
ld   b,a
ld   hl,C200
ld   de,0010
xor  a
ld   (hl),a
add  hl,de
dec  b
jr   nz,1E73
ld   a,(ff00+C4)
add  a,0A
ld   (DFE8),a
ld   a,25
ld   (ff00+9E),a
ld   a,1B
ld   (ff00+A6),a
ld   a,23
ld   (ff00+E1),a
ret  
inc  e
rrca 
ld   e,32
jr   nz,1EAA
ld   h,1D
jr   z,1EC1
ld   a,0A
call 26C7
ret  
ld   a,(ff00+A6)
cp   a,14
jr   z,1E96
and  a
ret  nz
ld   hl,C20E
ld   de,0010
ld   b,0A
push hl
dec  (hl)
jr   nz,1EC5
inc  l
ldd  a,(hl)
ld   (hl),a
ld   a,l
and  a,F0
or   a,03
ld   l,a
ld   a,(hl)
xor  a,01
ld   (hl),a
cp   a,50
jr   z,1EE4
cp   a,51
jr   z,1EEA
pop  hl
add  hl,de
dec  b
jr   nz,1EAC
ld   a,0A
call 26C7
ld   a,(DFE9)
and  a
ret  nz
call 17EE
ld   a,(ff00+C4)
cp   a,05
ld   a,26
jr   z,1EE1
ld   a,05
ld   (ff00+E1),a
ret  
dec  l
dec  l
ld   (hl),67
jr   1EC5
dec  l
dec  l
ld   (hl),5D
jr   1EC5
xor  a
ld   (C0C6),a
ld   de,C0C0
ld   a,(de)
ld   l,a
inc  de
ld   a,(de)
ld   h,a
or   l
jp   z,268E
dec  hl
ld   a,h
ld   (de),a
dec  de
ld   a,l
ld   (de),a
ld   de,0001
ld   hl,C0C2
push de
call 0166
ld   de,C0C4
ld   hl,99A5
call 2A7E
xor  a
ld   (ff00+A6),a
pop  de
ld   hl,C0A0
call 0166
ld   de,C0A2
ld   hl,9A25
call 2A82
ld   a,02
ld   (DFE0),a
ret  
ld   a,(C0C6)
and  a
ret  z
ld   a,(C0C5)
cp   a,04
jr   z,1EF0
ld   de,0040
ld   bc,9823
ld   hl,C0AC
and  a
jr   z,1F6D
ld   de,0100
ld   bc,9883
ld   hl,C0B1
cp   a,01
jr   z,1F6D
ld   de,0300
ld   bc,98E3
ld   hl,C0B6
cp   a,02
jr   z,1F6D
ld   de,1200
ld   bc,9943
ld   hl,C0BB
call 262D
ret  
ld   a,(ff00+81)
and  a
ret  z
ld   a,02
ld   (ff00+E1),a
ret  
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,04
ld   (DFE8),a
ld   a,(ff00+C5)
and  a
jr   z,1F92
ld   a,3F
ld   (ff00+A6),a
ld   a,1B
ld   (ff00+CC),a
jr   1FC9
ld   a,2F
call 2032
ld   hl,C843
ld   de,2992
ld   c,07
call 1FD8
ld   hl,C983
ld   de,29CA
ld   c,06
call 1FD8
ld   a,(ff00+C0)
cp   a,37
jr   nz,1FC7
ld   hl,C0A2
ld   a,(hl)
ld   b,58
cp   a,15
jr   nc,1FCC
inc  b
cp   a,10
jr   nc,1FCC
inc  b
cp   a,05
jr   nc,1FCC
ld   a,04
ld   (ff00+E1),a
ret  
ld   a,b
ld   (ff00+F3),a
ld   a,90
ld   (ff00+A6),a
ld   a,34
ld   (ff00+E1),a
ret  
ld   b,08
push hl
ld   a,(de)
ldi  (hl),a
inc  de
dec  b
jr   nz,1FDB
pop  hl
push de
ld   de,0020
add  hl,de
pop  de
dec  c
jr   nz,1FD8
ret  
ld   a,(ff00+C0)
cp   a,37
ret  nz
ld   a,(ff00+E1)
and  a
ret  nz
ld   a,(ff00+E3)
cp   a,05
ret  nz
ld   hl,C0AC
ld   bc,0005
ld   a,(hl)
ld   de,0040
and  a
jr   nz,201E
add  hl,bc
ld   a,(hl)
ld   de,0100
and  a
jr   nz,201E
add  hl,bc
ld   a,(hl)
ld   de,0300
and  a
jr   nz,201E
add  hl,bc
ld   de,1200
ld   a,(hl)
and  a
ret  z
ld   (hl),00
ld   a,(ff00+A9)
ld   b,a
inc  b
push bc
push de
ld   hl,C0A0
call 0166
pop  de
pop  bc
dec  b
jr   nz,2024
ret  
push af
ld   a,02
ld   (ff00+E3),a
pop  af
ld   hl,C802
ld   c,12
ld   de,0020
push hl
ld   b,0A
ldi  (hl),a
dec  b
jr   nz,2043
pop  hl
add  hl,de
dec  c
jr   nz,2040
ret  
ld   hl,CBC2
ld   de,0016
ld   c,02
ld   a,2F
ld   b,0A
ldi  (hl),a
dec  b
jr   nz,2059
add  hl,de
dec  c
jr   nz,2057
ret  
ld   hl,C200
ld   (hl),00
inc  l
ld   (hl),18
inc  l
ld   (hl),3F
inc  l
ld   a,(C213)
ld   (hl),a
and  a,FC
ld   c,a
ld   a,(ff00+E4)
and  a
jr   nz,207F
ld   a,(ff00+C5)
and  a
jr   z,209C
ld   h,C3
ld   a,(ff00+B0)
ld   l,a
ld   e,(hl)
inc  hl
ld   a,h
cp   a,C4
jr   nz,208E
ld   hl,C300
ld   a,l
ld   (ff00+B0),a
ld   a,(ff00+D3)
and  a
jr   z,20C0
or   a,80
ld   (ff00+D3),a
jr   20C0
ld   h,03
ld   a,(ff00+04)
ld   b,a
xor  a
dec  b
jr   z,20AF
inc  a
inc  a
inc  a
inc  a
cp   a,1C
jr   z,20A1
jr   20A2
ld   d,a
ld   a,(ff00+AE)
ld   e,a
dec  h
jr   z,20BD
or   d
or   c
and  a,FC
cp   c
jr   z,209E
ld   a,d
ld   (ff00+AE),a
ld   a,e
ld   (C213),a
call 26EA
ld   a,(ff00+9A)
ld   (ff00+99),a
ret  
ld   a,(C0C7)
and  a
jr   z,20DE
ld   a,(ff00+81)
and  a,B0
cp   a,80
jr   nz,20FF
xor  a
ld   (C0C7),a
ld   a,(ff00+A7)
and  a
jr   nz,210C
ld   a,(ff00+98)
and  a
jr   nz,210C
ld   a,(ff00+E3)
and  a
jr   nz,210C
ld   a,03
ld   (ff00+A7),a
ld   hl,FFE5
inc  (hl)
jr   211D
ld   a,(ff00+80)
and  a,B0
cp   a,80
jr   z,20CC
ld   hl,FFE5
ld   (hl),00
ld   a,(ff00+99)
and  a
jr   z,2110
dec  a
ld   (ff00+99),a
call 26D7
ret  
ld   a,(ff00+98)
cp   a,03
ret  z
ld   a,(ff00+E3)
and  a
ret  nz
ld   a,(ff00+9A)
ld   (ff00+99),a
ld   hl,C201
ld   a,(hl)
ld   (ff00+A0),a
add  a,08
ld   (hl),a
call 26D7
call 25C7
and  a
ret  z
ld   a,(ff00+A0)
ld   hl,C201
ld   (hl),a
call 26D7
ld   a,01
ld   (ff00+98),a
ld   (C0C7),a
ld   a,(ff00+E5)
and  a
jr   z,215E
ld   c,a
ld   a,(ff00+C0)
cp   a,37
jr   z,2181
ld   de,C0C0
ld   a,(de)
ld   l,a
inc  de
ld   a,(de)
ld   h,a
ld   b,00
dec  c
add  hl,bc
ld   a,h
ld   (de),a
ld   a,l
dec  de
ld   (de),a
xor  a
ld   (ff00+E5),a
ld   a,(C201)
cp   a,18
ret  nz
ld   a,(C202)
cp   a,3F
ret  nz
ld   hl,FFFB
ld   a,(hl)
cp   a,01
jr   nz,217F
call 7FF3
ld   a,01
ld   (ff00+E1),a
ld   a,02
ld   (DFF0),a
ret  
inc  (hl)
ret  
xor  a
dec  c
jr   z,2189
inc  a
daa  
jr   2182
ld   e,a
ld   d,00
ld   hl,C0A0
call 0166
ld   a,01
ld   (C0CE),a
jr   215B
ld   a,(ff00+98)
cp   a,02
ret  nz
ld   a,02
ld   (DFF8),a
xor  a
ld   (ff00+A0),a
ld   de,C0A3
ld   hl,C842
ld   b,10
ld   c,0A
push hl
ldi  a,(hl)
cp   a,2F
jp   z,2238
dec  c
jr   nz,21B1
pop  hl
ld   a,h
ld   (de),a
inc  de
ld   a,l
ld   (de),a
inc  de
ld   a,(ff00+A0)
inc  a
ld   (ff00+A0),a
push de
ld   de,0020
add  hl,de
pop  de
dec  b
jr   nz,21AE
ld   a,03
ld   (ff00+98),a
dec  a
ld   (ff00+A6),a
ld   a,(ff00+A0)
and  a
ret  z
ld   b,a
ld   hl,FF9E
ld   a,(ff00+C0)
cp   a,77
jr   z,21FB
ld   a,(ff00+E7)
add  b
ld   (ff00+E7),a
ld   a,b
add  (hl)
daa  
ldi  (hl),a
ld   a,00
adc  (hl)
daa  
ld   (hl),a
jr   nc,220A
ld   (hl),99
dec  hl
ld   (hl),99
jr   220A
ld   a,(hl)
or   a
sub  b
jr   z,223B
jr   c,223B
daa  
ld   (hl),a
and  a,F0
cp   a,90
jr   z,223B
ld   a,b
ld   c,06
ld   hl,C0AC
ld   b,00
cp   a,01
jr   z,222F
ld   hl,C0B1
ld   b,01
cp   a,02
jr   z,222F
ld   hl,C0B6
ld   b,02
cp   a,03
jr   z,222F
ld   hl,C0BB
ld   b,04
ld   c,07
inc  (hl)
ld   a,b
ld   (ff00+DC),a
ld   a,c
ld   (DFE0),a
ret  
pop  hl
jr   21C6
xor  a
ld   (ff00+9E),a
jr   220A
ld   a,(ff00+98)
cp   a,03
ret  nz
ld   a,(ff00+A6)
and  a
ret  nz
ld   de,C0A3
ld   a,(ff00+9C)
bit  0,a
jr   nz,228E
ld   a,(de)
and  a
jr   z,22A8
sub  a,30
ld   h,a
inc  de
ld   a,(de)
ld   l,a
ld   a,(ff00+9C)
cp   a,06
ld   a,8C
jr   nz,2266
ld   a,2F
ld   c,0A
ldi  (hl),a
dec  c
jr   nz,2268
inc  de
ld   a,(de)
and  a
jr   nz,2256
ld   a,(ff00+9C)
inc  a
ld   (ff00+9C),a
cp   a,07
jr   z,227F
ld   a,0A
ld   (ff00+A6),a
ret  
xor  a
ld   (ff00+9C),a
ld   a,0D
ld   (ff00+A6),a
ld   a,01
ld   (ff00+E3),a
xor  a
ld   (ff00+98),a
ret  
ld   a,(de)
ld   h,a
sub  a,30
ld   c,a
inc  de
ld   a,(de)
ld   l,a
ld   b,0A
ld   a,(hl)
push hl
ld   h,c
ld   (hl),a
pop  hl
inc  hl
dec  b
jr   nz,2298
inc  de
ld   a,(de)
and  a
jr   nz,228E
jr   2271
call 2062
jr   228A
ld   a,(ff00+A6)
and  a
ret  nz
ld   a,(ff00+E3)
cp   a,01
ret  nz
ld   de,C0A3
ld   a,(de)
ld   h,a
inc  de
ld   a,(de)
ld   l,a
push de
push hl
ld   bc,FFE0
add  hl,bc
pop  de
push hl
ld   b,0A
ldi  a,(hl)
ld   (de),a
inc  de
dec  b
jr   nz,22C8
pop  hl
push hl
pop  de
ld   bc,FFE0
add  hl,bc
ld   a,h
cp   a,C7
jr   nz,22C5
pop  de
inc  de
ld   a,(de)
and  a
jr   nz,22BA
ld   hl,C802
ld   a,2F
ld   b,0A
ldi  (hl),a
dec  b
jr   nz,22E7
call 22F3
ld   a,02
ld   (ff00+E3),a
ret  
ld   hl,C0A3
xor  a
ld   b,09
ldi  (hl),a
dec  b
jr   nz,22F9
ret  
ld   a,(ff00+E3)
cp   a,02
ret  nz
ld   hl,9A22
ld   de,CA22
call 2506
ret  
ld   a,(ff00+E3)
cp   a,03
ret  nz
ld   hl,9A02
ld   de,CA02
call 2506
ret  
ld   a,(ff00+E3)
cp   a,04
ret  nz
ld   hl,99E2
ld   de,C9E2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,05
ret  nz
ld   hl,99C2
ld   de,C9C2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,06
ret  nz
ld   hl,99A2
ld   de,C9A2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,07
ret  nz
ld   hl,9982
ld   de,C982
call 2506
ret  
ld   a,(ff00+E3)
cp   a,08
ret  nz
ld   hl,9962
ld   de,C962
call 2506
ld   a,(ff00+C5)
and  a
ld   a,(ff00+E1)
jr   nz,2375
and  a
ret  nz
ld   a,01
ld   (DFF8),a
ret  
cp   a,1A
ret  nz
ld   a,(ff00+D4)
and  a
jr   z,236F
ld   a,05
ld   (DFE0),a
ret  
ld   a,(ff00+E3)
cp   a,09
ret  nz
ld   hl,9942
ld   de,C942
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0A
ret  nz
ld   hl,9922
ld   de,C922
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0B
ret  nz
ld   hl,9902
ld   de,C902
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0C
ret  nz
ld   hl,98E2
ld   de,C8E2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0D
ret  nz
ld   hl,98C2
ld   de,C8C2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0E
ret  nz
ld   hl,98A2
ld   de,C8A2
call 2506
ret  
ld   a,(ff00+E3)
cp   a,0F
ret  nz
ld   hl,9882
ld   de,C882
call 2506
ret  
ld   a,(ff00+E3)
cp   a,10
ret  nz
ld   hl,9862
ld   de,C862
call 2506
call 24AB
ret  
ld   a,(ff00+E3)
cp   a,11
ret  nz
ld   hl,9842
ld   de,C842
call 2506
ld   hl,9C6D
call 249B
ld   a,01
ld   (ff00+E0),a
ret  
ld   a,(ff00+E3)
cp   a,12
ret  nz
ld   hl,9822
ld   de,C822
call 2506
ld   hl,986D
call 249B
ret  
ld   a,(ff00+E3)
cp   a,13
ret  nz
ld   (C0C7),a
ld   hl,9802
ld   de,C802
call 2506
xor  a
ld   (ff00+E3),a
ld   a,(ff00+C5)
and  a
ld   a,(ff00+E1)
jr   nz,248F
and  a
ret  nz
ld   hl,994E
ld   de,FF9F
ld   c,02
ld   a,(ff00+C0)
cp   a,37
jr   z,245F
ld   hl,9950
ld   de,FF9E
ld   c,01
call 2A84
ld   a,(ff00+C0)
cp   a,37
jr   z,248B
ld   a,(ff00+9E)
and  a
jr   nz,248B
ld   a,64
ld   (ff00+A6),a
ld   a,02
ld   (DFE8),a
ld   a,(ff00+C5)
and  a
jr   z,247E
ld   (ff00+D5),a
ret  
ld   a,(ff00+C3)
cp   a,09
ld   a,05
jr   nz,2488
ld   a,22
ld   (ff00+E1),a
ret  
call 2062
ret  
cp   a,1A
ret  nz
ld   a,(ff00+D4)
and  a
jr   z,2449
xor  a
ld   (ff00+D4),a
ret  
ld   a,(ff00+E1)
and  a
ret  nz
ld   a,(ff00+C0)
cp   a,37
ret  nz
ld   de,C0A2
call 2A7E
ret  
ld   a,(ff00+E1)
and  a
ret  nz
ld   a,(ff00+C0)
cp   a,37
ret  nz
ld   hl,FFA9
ld   a,(hl)
cp   a,09
jr   nc,24FD
ld   a,(ff00+E7)
cp   a,0A
ret  c
sub  a,0A
ld   (ff00+E7),a
inc  (hl)
ld   a,(hl)
cp   a,15
jr   nz,24CD
ld   (hl),14
ld   b,(hl)
xor  a
or   a
inc  a
daa  
dec  b
jr   z,24D7
jr   24CF
ld   b,a
and  a,0F
ld   c,a
ld   hl,98F1
ld   (hl),c
ld   h,9C
ld   (hl),c
ld   a,b
and  a,F0
jr   z,24F4
swap a
ld   c,a
ld   a,l
cp   a,F0
jr   z,24F4
ld   hl,98F0
jr   24DE
ld   a,02
ld   (DFE0),a
call 1B43
ret  
ld   a,(ff00+E7)
cp   a,14
ret  c
sub  a,14
jr   24C3
ld   b,0A
ld   a,(de)
ld   (hl),a
inc  l
inc  e
dec  b
jr   nz,2508
ld   a,(ff00+E3)
inc  a
ld   (ff00+E3),a
ret  
ld   hl,C203
ld   a,(hl)
ld   (ff00+A0),a
ld   a,(ff00+81)
ld   b,a
bit  1,b
jr   nz,2534
bit  0,b
jr   z,255D
ld   a,(hl)
and  a,03
jr   z,252E
dec  (hl)
jr   2542
ld   a,(hl)
or   a,03
ld   (hl),a
jr   2542
ld   a,(hl)
and  a,03
cp   a,03
jr   z,253E
inc  (hl)
jr   2542
ld   a,(hl)
and  a,FC
ld   (hl),a
ld   a,03
ld   (DFE0),a
call 26D7
call 25C7
and  a
jr   z,255D
xor  a
ld   (DFE0),a
ld   hl,C203
ld   a,(ff00+A0)
ld   (hl),a
call 26D7
ld   hl,C202
ld   a,(ff00+81)
ld   b,a
ld   a,(ff00+80)
ld   c,a
ld   a,(hl)
ld   (ff00+A0),a
bit  4,b
ld   a,17
jr   nz,257B
bit  4,c
jr   z,25A0
ld   a,(ff00+AA)
dec  a
ld   (ff00+AA),a
ret  nz
ld   a,09
ld   (ff00+AA),a
ld   a,(hl)
add  a,08
ld   (hl),a
call 26D7
ld   a,04
ld   (DFE0),a
call 25C7
and  a
ret  z
ld   hl,C202
xor  a
ld   (DFE0),a
ld   a,(ff00+A0)
ld   (hl),a
call 26D7
ld   a,01
ld   (ff00+AA),a
ret  
bit  5,b
ld   a,17
jr   nz,25B2
bit  5,c
jr   z,259D
ld   a,(ff00+AA)
dec  a
ld   (ff00+AA),a
ret  nz
ld   a,09
ld   (ff00+AA),a
ld   a,(hl)
sub  a,08
ld   (hl),a
ld   a,04
ld   (DFE0),a
call 26D7
call 25C7
and  a
ret  z
jr   258E
ld   hl,C010
ld   b,04
ldi  a,(hl)
ld   (ff00+B2),a
ldi  a,(hl)
and  a
jr   z,25EA
ld   (ff00+B3),a
push hl
push bc
call 2A2B
ld   a,h
add  a,30
ld   h,a
ld   a,(hl)
cp   a,2F
jr   nz,25EE
pop  bc
pop  hl
inc  l
inc  l
dec  b
jr   nz,25CC
xor  a
ld   (ff00+9B),a
ret  
pop  bc
pop  hl
ld   a,01
ld   (ff00+9B),a
ret  
ld   a,(ff00+98)
cp   a,01
ret  nz
ld   hl,C010
ld   b,04
ldi  a,(hl)
ld   (ff00+B2),a
ldi  a,(hl)
and  a
jr   z,2623
ld   (ff00+B3),a
push hl
push bc
call 2A2B
push hl
pop  de
pop  bc
pop  hl
ld   a,(ff00+41)
and  a,03
jr   nz,2611
ld   a,(hl)
ld   (de),a
ld   a,d
add  a,30
ld   d,a
ldi  a,(hl)
ld   (de),a
inc  l
dec  b
jr   nz,25FF
ld   a,02
ld   (ff00+98),a
ld   hl,C200
ld   (hl),80
ret  
ld   a,(C0C6)
cp   a,02
jr   z,267A
push de
ld   a,(hl)
or   a
jr   z,268D
dec  a
ldi  (hl),a
ld   a,(hl)
inc  a
daa  
ld   (hl),a
and  a,0F
ld   (bc),a
dec  c
ldi  a,(hl)
swap a
and  a,0F
jr   z,264B
ld   (bc),a
push bc
ld   a,(ff00+C3)
ld   b,a
inc  b
push hl
call 0166
pop  hl
dec  b
jr   nz,2650
pop  bc
inc  hl
inc  hl
push hl
ld   hl,0023
add  hl,bc
pop  de
call 2A82
pop  de
ld   a,(ff00+C3)
ld   b,a
inc  b
ld   hl,C0A0
push hl
call 0166
pop  hl
dec  b
jr   nz,266C
ld   a,02
ld   (C0C6),a
ret  
ld   de,C0A2
ld   hl,9A25
call 2A82
ld   a,02
ld   (DFE0),a
xor  a
ld   (C0C6),a
ret  
pop  de
ld   a,21
ld   (ff00+A6),a
xor  a
ld   (C0C6),a
ld   a,(C0C5)
inc  a
ld   (C0C5),a
cp   a,05
ret  nz
ld   a,04
ld   (ff00+E1),a
ret  
ld   hl,C0AC
ld   b,1B
xor  a
ldi  (hl),a
dec  b
jr   nz,26AB
ld   hl,C0A0
ld   b,03
ldi  (hl),a
dec  b
jr   nz,26B4
ret  
ld   a,(hl)
and  a,F0
swap a
ld   (de),a
ld   a,(hl)
and  a,0F
inc  e
ld   (de),a
ret  
ld   a,02
ld   (ff00+8F),a
xor  a
ld   (ff00+8E),a
ld   a,C0
ld   (ff00+8D),a
ld   hl,C200
call 2AD1
ret  
ld   a,01
ld   (ff00+8F),a
ld   a,10
ld   (ff00+8E),a
ld   a,C0
ld   (ff00+8D),a
ld   hl,C200
call 2AD1
ret  
ld   a,01
ld   (ff00+8F),a
ld   a,20
ld   (ff00+8E),a
ld   a,C0
ld   (ff00+8D),a
ld   hl,C210
call 2AD1
ret  
ld   b,20
ld   a,8E
ld   de,0020
ld   (hl),a
add  hl,de
dec  b
jr   nz,2704
ret  
ld   a,(de)
cp   a,FF
ret  z
ldi  (hl),a
inc  de
jr   270A
reti 
nop  
jr   2755
nop  
add  b
nop  
nop  
rst  38
nop  
add  b
adc  a
nop  
add  b
nop  
nop  
rst  38
nop  
ld   (hl),b
scf  
inc  e
nop  
nop  
nop  
jr   c,2763
inc  e
nop  
nop  
nop  
ld   b,b
inc  (hl)
jr   nz,2734
nop  
nop  
ld   b,b
inc  e
jr   nz,273A
nop  
nop  
ld   b,b
ld   (hl),h
jr   nz,2740
nop  
nop  
ld   b,b
ld   l,b
ld   hl,0000
nop  
ld   a,b
ld   l,b
ld   hl,0000
nop  
ld   h,b
ld   h,b
ldi  a,(hl)
add  b
nop  
nop  
ld   h,b
ld   (hl),d
ldi  a,(hl)
add  b
jr   nz,275A
ld   l,b
jr   c,279B
add  b
nop  
nop  
ld   h,b
ld   h,b
ld   (hl),80
nop  
nop  
ld   h,b
ld   (hl),d
ld   (hl),80
jr   nz,276C
ld   l,b
jr   c,27A1
add  b
nop  
nop  
ld   h,b
ld   h,b
ld   l,80
nop  
nop  
ld   l,b
jr   c,27B7
add  b
nop  
nop  
ld   h,b
ld   h,b
ldd  a,(hl)
add  b
nop  
nop  
ld   l,b
jr   c,27B7
add  b
nop  
add  b
ccf  
ld   b,b
ld   b,h
nop  
nop  
add  b
ccf  
jr   nz,27DD
nop  
nop  
add  b
ccf  
jr   nc,27DF
nop  
nop  
add  b
ld   (hl),a
jr   nz,27E7
nop  
nop  
add  b
add  a
ld   c,b
ld   c,h
nop  
nop  
add  b
add  a
ld   e,b
ld   c,(hl)
nop  
nop  
add  b
ld   h,a
ld   c,l
ld   d,b
nop  
nop  
add  b
ld   h,a
ld   e,l
ld   d,d
nop  
nop  
add  b
adc  a
adc  b
ld   d,h
nop  
nop  
add  b
adc  a
sbc  b
ld   d,l
nop  
nop  
nop  
ld   e,a
ld   d,a
inc  l
nop  
nop  
add  b
add  b
ld   d,b
inc  (hl)
nop  
nop  
add  b
add  b
ld   h,b
inc  (hl)
nop  
jr   nz,27D8
ld   l,a
ld   d,a
ld   e,b
nop  
nop  
add  b
add  b
ld   d,l
inc  (hl)
nop  
nop  
add  b
add  b
ld   e,e
inc  (hl)
nop  
jr   nz,280B
rst  38
sbc  e
ld   bc,0400
ld   a,2F
ldd  (hl),a
dec  bc
ld   a,b
or   c
jr   nz,27EF
ret  
ldi  a,(hl)
ld   (de),a
inc  de
dec  bc
ld   a,b
or   c
jr   nz,27F8
ret  
call 2817
ld   bc,00A0
call 27F8
ld   hl,3287
ld   de,8300
ld   bc,0D00
call 27F8
ret  
ld   hl,41A7
ld   bc,0138
ld   de,8000
ldi  a,(hl)
ld   (de),a
inc  de
ld   (de),a
inc  de
dec  bc
ld   a,b
or   c
jr   nz,2820
ret  
call 2817
ld   bc,0DA0
call 27F8
ret  
ld   bc,1000
ld   de,8000
call 27F8
ret  
ld   hl,9800
ld   b,12
push hl
ld   c,14
ld   a,(de)
ldi  (hl),a
inc  de
dec  c
jr   nz,2847
pop  hl
push de
ld   de,0020
add  hl,de
pop  de
dec  b
jr   nz,2844
ret  
ld   b,0A
push hl
ld   a,(de)
cp   a,FF
jr   z,286E
ldi  (hl),a
inc  de
dec  b
jr   nz,285B
pop  hl
push de
ld   de,0020
add  hl,de
pop  de
jr   2858
pop  hl
ld   a,02
ld   (ff00+E3),a
ret  
ld   a,(ff00+FF)
ld   (ff00+A1),a
res  0,a
ld   (ff00+FF),a
ld   a,(ff00+44)
cp   a,91
jr   nz,287C
ld   a,(ff00+40)
and  a,7F
ld   (ff00+40),a
ld   a,(ff00+A1)
ld   (ff00+FF),a
ret  
cpl  
cpl  
ld   de,1D12
cpl  
cpl  
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
cpl  
cpl  
inc  e
dec  e
ld   a,(bc)
dec  de
dec  e
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
cpl  
cpl  
cpl  
dec  e
jr   28E2
cpl  
cpl  
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
cpl  
cpl  
cpl  
inc  c
jr   28D7
dec  e
ld   (de),a
rla  
ld   e,0E
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
<corrupted stop>
ld   d,0E
cpl  
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
inc  e
ld   (de),a
rla  
<corrupted stop>
ld   c,2F
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
ld   h,2F
inc  b
nop  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
dec  c
jr   291C
dec  bc
dec  d
ld   c,2F
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
ld   h,2F
ld   bc,0000
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
dec  e
dec  de
ld   (de),a
add  hl,de
dec  d
ld   c,2F
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
ld   h,2F
inc  bc
nop  
nop  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
dec  e
ld   c,1D
dec  de
ld   (de),a
inc  e
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
ld   h,2F
ld   bc,0002
nop  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
dec  c
dec  de
jr   2972
inc  e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
dec  e
ld   de,1C12
cpl  
inc  e
dec  e
ld   a,(bc)
<corrupted stop>
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
rst  38
ld   h,c
ld   h,d
ld   h,d
ld   h,d
ld   h,d
ld   h,d
ld   h,d
ld   h,e
ld   h,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   h,l
ld   h,h
cpl  
<corrupted stop>
ld   d,0E
cpl  
ld   h,l
ld   h,h
cpl  
xor  l
xor  l
xor  l
xor  l
cpl  
ld   h,l
ld   h,h
cpl  
jr   29D5
ld   c,1B
cpl  
ld   h,l
ld   h,h
cpl  
xor  l
xor  l
xor  l
xor  l
cpl  
ld   h,l
ld   h,(hl)
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   l,d
add  hl,de
dec  d
ld   c,0A
inc  e
ld   c,2F
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
cpl  
dec  e
dec  de
ldi  (hl),a
cpl  
cpl  
cpl  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,(bc)
<corrupted stop>
ld   (de),a
rla  
daa  
cpl  
cpl  
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
add  hl,hl
cpl  
ld   a,20
ld   (ff00+00),a
ld   a,(ff00+00)
ld   a,(ff00+00)
cpl  
and  a,0F
swap a
ld   b,a
ld   a,10
ld   (ff00+00),a
ld   a,(ff00+00)
ld   a,(ff00+00)
ld   a,(ff00+00)
ld   a,(ff00+00)
ld   a,(ff00+00)
ld   a,(ff00+00)
cpl  
and  a,0F
or   b
ld   c,a
ld   a,(ff00+80)
xor  c
and  c
ld   (ff00+81),a
ld   a,c
ld   (ff00+80),a
ld   a,30
ld   (ff00+00),a
ret  
ld   a,(ff00+B2)
sub  a,10
srl  a
srl  a
srl  a
ld   de,0000
ld   e,a
ld   hl,9800
ld   b,20
add  hl,de
dec  b
jr   nz,2A3E
ld   a,(ff00+B3)
sub  a,08
srl  a
srl  a
srl  a
ld   de,0000
ld   e,a
add  hl,de
ld   a,h
ld   (ff00+B5),a
ld   a,l
ld   (ff00+B4),a
ret  
ld   a,(ff00+B5)
ld   d,a
ld   a,(ff00+B4)
ld   e,a
ld   b,04
rr   d
rr   e
dec  b
jr   nz,2A60
ld   a,e
sub  a,84
and  a,FE
rlca 
rlca 
add  a,08
ld   (ff00+B2),a
ld   a,(ff00+B4)
and  a,1F
rla  
rla  
rla  
add  a,08
ld   (ff00+B3),a
ret  
ld   a,(ff00+E0)
and  a
ret  z
ld   c,03
xor  a
ld   (ff00+E0),a
ld   a,(de)
ld   b,a
swap a
and  a,0F
jr   nz,2AB7
ld   a,(ff00+E0)
and  a
ld   a,00
jr   nz,2A98
ld   a,2F
ldi  (hl),a
ld   a,b
and  a,0F
jr   nz,2ABF
ld   a,(ff00+E0)
and  a
ld   a,00
jr   nz,2AAE
ld   a,01
cp   c
ld   a,00
jr   z,2AAE
ld   a,2F
ldi  (hl),a
dec  e
dec  c
jr   nz,2A87
xor  a
ld   (ff00+E0),a
ret  
push af
ld   a,01
ld   (ff00+E0),a
pop  af
jr   2A98
push af
ld   a,01
ld   (ff00+E0),a
pop  af
jr   2AAE
ld   a,C0
ld   (ff00+46),a
ld   a,28
dec  a
jr   nz,2ACD
ret  
ld   a,h
ld   (ff00+96),a
ld   a,l
ld   (ff00+97),a
ld   a,(hl)
and  a
jr   z,2AF8
cp   a,80
jr   z,2AF6
ld   a,(ff00+96)
ld   h,a
ld   a,(ff00+97)
ld   l,a
ld   de,0010
add  hl,de
ld   a,(ff00+8F)
dec  a
ld   (ff00+8F),a
ret  z
jr   2AD1
xor  a
ld   (ff00+95),a
jr   2ADF
ld   (ff00+95),a
ld   b,07
ld   de,FF86
ldi  a,(hl)
ld   (de),a
inc  de
dec  b
jr   nz,2AFD
ld   a,(ff00+89)
ld   hl,2BAC
rlca 
ld   e,a
ld   d,00
add  hl,de
ld   e,(hl)
inc  hl
ld   d,(hl)
ld   a,(de)
ld   l,a
inc  de
ld   a,(de)
ld   h,a
inc  de
ld   a,(de)
ld   (ff00+90),a
inc  de
ld   a,(de)
ld   (ff00+91),a
ld   e,(hl)
inc  hl
ld   d,(hl)
inc  hl
ld   a,(ff00+8C)
ld   (ff00+94),a
ld   a,(hl)
cp   a,FF
jr   z,2AF1
cp   a,FD
jr   nz,2B3C
ld   a,(ff00+8C)
xor  a,20
ld   (ff00+94),a
inc  hl
ld   a,(hl)
jr   2B40
inc  de
inc  de
jr   2B20
cp   a,FE
jr   z,2B38
ld   (ff00+89),a
ld   a,(ff00+87)
ld   b,a
ld   a,(de)
ld   c,a
ld   a,(ff00+8B)
bit  6,a
jr   nz,2B53
ld   a,(ff00+90)
add  b
adc  c
jr   2B5D
ld   a,b
push af
ld   a,(ff00+90)
ld   b,a
pop  af
sub  b
sbc  c
sbc  a,08
ld   (ff00+93),a
ld   a,(ff00+88)
ld   b,a
inc  de
ld   a,(de)
inc  de
ld   c,a
ld   a,(ff00+8B)
bit  5,a
jr   nz,2B72
ld   a,(ff00+91)
add  b
adc  c
jr   2B7C
ld   a,b
push af
ld   a,(ff00+91)
ld   b,a
pop  af
sub  b
sbc  c
sbc  a,08
ld   (ff00+92),a
push hl
ld   a,(ff00+8D)
ld   h,a
ld   a,(ff00+8E)
ld   l,a
ld   a,(ff00+95)
and  a
jr   z,2B8E
ld   a,FF
jr   2B90
ld   a,(ff00+93)
ldi  (hl),a
ld   a,(ff00+92)
ldi  (hl),a
ld   a,(ff00+89)
ldi  (hl),a
ld   a,(ff00+94)
ld   b,a
ld   a,(ff00+8B)
or   b
ld   b,a
ld   a,(ff00+8A)
or   b
ldi  (hl),a
ld   a,h
ld   (ff00+8D),a
ld   a,l
ld   (ff00+8E),a
pop  hl
jp   2B20
ld   l,b
inc  l
ld   l,h
inc  l
ld   (hl),b
inc  l
ld   (hl),h
inc  l
ld   a,b
inc  l
ld   a,h
inc  l
add  b
inc  l
add  h
inc  l
adc  b
inc  l
adc  h
inc  l
sub  b
inc  l
sub  h
inc  l
sbc  b
inc  l
sbc  h
inc  l
and  b
inc  l
and  h
inc  l
xor  b
inc  l
xor  h
inc  l
or   b
inc  l
or   h
inc  l
cp   b
inc  l
cp   h
inc  l
ret  nz
inc  l
call nz,C82C
inc  l
call z,D02C
inc  l
call nc,D82C
inc  l
call c,E02C
inc  l
-    
inc  l
add  sp,2C
-    
inc  l
ld   a,(ff00+2C)
-    
inc  l
ld   hl,sp+2C
-    
inc  l
nop  
dec  l
inc  b
dec  l
ld   (0C2D),sp
dec  l
<corrupted stop>
inc  d
dec  l
rrca 
ld   sp,2D14
jr   2C37
inc  e
dec  l
jr   nz,2C3B
inc  h
dec  l
jr   z,2C3F
inc  l
dec  l
ldd  (hl),a
ld   sp,3136
jr   nc,2C47
inc  (hl)
dec  l
ldd  a,(hl)
ld   sp,313E
jr   c,2C4F
inc  a
dec  l
ld   b,b
dec  l
ld   b,h
dec  l
ld   c,b
dec  l
ld   c,h
dec  l
ld   b,d
ld   sp,3146
ld   c,h
dec  l
ld   d,b
dec  l
ld   d,b
dec  l
ld   d,h
dec  l
ld   e,b
dec  l
ld   e,h
dec  l
ld   h,b
dec  l
ld   h,h
dec  l
ld   l,b
dec  l
ld   l,h
dec  l
ld   (hl),b
dec  l
ld   (hl),h
dec  l
ld   a,b
dec  l
ld   a,h
dec  l
add  b
dec  l
add  h
dec  l
adc  b
dec  l
adc  h
dec  l
sub  b
dec  l
sub  h
dec  l
sbc  b
dec  l
sbc  h
dec  l
ld   d,d
ld   sp,3156
ld   e,d
ld   sp,315A
ld   c,d
ld   sp,314E
and  b
dec  l
rst  28
ld   a,(ff00+B0)
dec  l
rst  28
ld   a,(ff00+C2)
dec  l
rst  28
ld   a,(ff00+D1)
dec  l
rst  28
ld   a,(ff00+E2)
dec  l
rst  28
ld   a,(ff00+F4)
dec  l
rst  28
ld   a,(ff00+05)
ld   l,EF
ld   a,(ff00+13)
ld   l,EF
ld   a,(ff00+24)
ld   l,EF
ld   a,(ff00+33)
ld   l,EF
ld   a,(ff00+44)
ld   l,EF
ld   a,(ff00+53)
ld   l,EF
ld   a,(ff00+64)
ld   l,EF
ld   a,(ff00+76)
ld   l,EF
ld   a,(ff00+88)
ld   l,EF
ld   a,(ff00+9A)
ld   l,EF
ld   a,(ff00+AC)
ld   l,EF
ld   a,(ff00+BE)
ld   l,EF
ld   a,(ff00+CE)
ld   l,EF
ld   a,(ff00+E0)
ld   l,EF
ld   a,(ff00+F0)
ld   l,EF
ld   a,(ff00+01)
cpl  
rst  28
ld   a,(ff00+12)
cpl  
rst  28
ld   a,(ff00+23)
cpl  
rst  28
ld   a,(ff00+53)
cpl  
rst  28
ld   a,(ff00+64)
cpl  
rst  28
ld   a,(ff00+34)
cpl  
rst  28
ld   a,(ff00+42)
cpl  
rst  28
ld   a,(ff00+75)
cpl  
nop  
add  sp,7E
cpl  
nop  
add  sp,87
cpl  
nop  
add  sp,90
cpl  
nop  
add  sp,99
cpl  
nop  
nop  
sbc  l
cpl  
nop  
nop  
and  c
cpl  
nop  
nop  
and  l
cpl  
nop  
nop  
xor  c
cpl  
nop  
nop  
xor  l
cpl  
nop  
nop  
or   c
cpl  
nop  
nop  
or   l
cpl  
nop  
nop  
cp   c
cpl  
nop  
nop  
cp   l
cpl  
nop  
nop  
pop  bc
cpl  
ld   a,(ff00+F8)
call z,F02F
ld   hl,sp+D7
cpl  
ld   a,(ff00+F0)
-    
cpl  
ld   a,(ff00+F0)
nop  
jr   nc,2D1B
ld   hl,sp+09
jr   nc,2D1F
ld   hl,sp+12
jr   nc,2D23
ld   hl,sp+19
jr   nc,2D27
ld   hl,sp+20
jr   nc,2D23
ld   hl,sp+2B
jr   nc,2D27
ld   hl,sp+36
jr   nc,2D2B
ld   a,(ff00+4B)
jr   nc,2D2F
ld   a,(ff00+61)
jr   nc,2D3B
ld   hl,sp+6A
jr   nc,2D3F
ld   hl,sp+73
jr   nc,2D43
ld   hl,sp+7A
jr   nc,2D47
ld   hl,sp+81
jr   nc,2D4B
ld   hl,sp+88
jr   nc,2D4F
ld   hl,sp+8F
jr   nc,2D53
ld   hl,sp+96
jr   nc,2D57
ld   hl,sp+9D
jr   nc,2D5B
ld   hl,sp+A4
jr   nc,2D5F
ld   hl,sp+AF
jr   nc,2D63
ld   hl,sp+B6
jr   nc,2D67
ld   hl,sp+BD
jr   nc,2D6B
ld   hl,sp+C4
jr   nc,2D6F
ld   hl,sp+CB
jr   nc,2D73
ld   hl,sp+D4
jr   nc,2D77
ld   hl,sp+DD
jr   nc,2D7B
ld   hl,sp+E6
jr   nc,2D7F
ld   hl,sp+EF
jr   nc,2D83
ld   hl,sp+F8
jr   nc,2D87
ld   hl,sp+01
ld   sp,F8F8
ld   (F831),sp
ld   hl,sp+8E
ld   sp,F0F0
and  l
ld   sp,F8F8
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
add  h
add  h
add  h
cp   a,84
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,84
cp   a,FE
cp   a,84
cp   a,FE
cp   a,84
add  h
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
add  h
cp   a,84
add  h
add  h
cp   a,FF
pop  af
ld   sp,FEFE
cp   a,FE
add  h
add  h
cp   a,FE
cp   a,84
cp   a,FE
cp   a,84
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
add  c
add  c
add  c
cp   a,FE
cp   a,81
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,81
add  c
cp   a,FE
add  c
cp   a,FE
cp   a,81
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
add  c
cp   a,FE
cp   a,81
add  c
add  c
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,81
cp   a,FE
cp   a,81
cp   a,FE
add  c
add  c
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
adc  d
adc  e
adc  e
adc  a
rst  38
pop  af
ld   sp,80FE
cp   a,FE
cp   a,88
cp   a,FE
cp   a,88
cp   a,FE
cp   a,89
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
adc  d
adc  e
adc  e
adc  a
rst  38
pop  af
ld   sp,80FE
cp   a,FE
cp   a,88
cp   a,FE
cp   a,88
cp   a,FE
cp   a,89
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,83
add  e
cp   a,FE
add  e
add  e
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,83
add  e
cp   a,FE
add  e
add  e
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,83
add  e
cp   a,FE
add  e
add  e
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,83
add  e
cp   a,FE
add  e
add  e
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
add  d
add  d
cp   a,FE
cp   a,82
add  d
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,82
cp   a,FE
add  d
add  d
cp   a,FE
add  d
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
add  d
add  d
cp   a,FE
cp   a,82
add  d
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,82
cp   a,FE
add  d
add  d
cp   a,FE
add  d
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,86
add  (hl)
cp   a,86
add  (hl)
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
add  (hl)
cp   a,FE
cp   a,86
add  (hl)
cp   a,FE
cp   a,86
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,86
add  (hl)
cp   a,86
add  (hl)
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
add  (hl)
cp   a,FE
cp   a,86
add  (hl)
cp   a,FE
cp   a,86
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,85
cp   a,FE
add  l
add  l
add  l
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,85
cp   a,FE
add  l
add  l
cp   a,FE
cp   a,85
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,FE
cp   a,FE
add  l
add  l
add  l
cp   a,FE
add  l
rst  38
pop  af
ld   sp,FEFE
cp   a,FE
cp   a,85
cp   a,FE
cp   a,85
add  l
cp   a,FE
add  l
rst  38
ld   de,0A32
dec  h
dec  e
ldi  (hl),a
add  hl,de
ld   c,FF
ld   de,0B32
dec  h
dec  e
ldi  (hl),a
add  hl,de
ld   c,FF
ld   de,0C32
dec  h
dec  e
ldi  (hl),a
add  hl,de
ld   c,FF
ld   de,2F32
jr   2FA4
rrca 
cpl  
cpl  
rst  38
ld   de,0032
rst  38
ld   de,0132
rst  38
ld   de,0232
rst  38
ld   de,0332
rst  38
ld   de,0432
rst  38
ld   de,0532
rst  38
ld   de,0632
rst  38
ld   de,0732
rst  38
ld   de,0832
rst  38
ld   de,0932
rst  38
ld   hl,2F32
ld   bc,112F
jr   nz,2FEA
jr   nc,2FFC
rst  38
ld   hl,2F32
inc  bc
ld   (de),a
inc  de
ldi  (hl),a
inc  hl
ldd  (hl),a
inc  sp
rst  38
pop  af
ld   sp,052F
-    
dec  b
cpl  
cpl  
dec  d
inc  b
rla  
inc  h
dec  h
ld   h,27
inc  (hl)
dec  (hl)
ld   (hl),2F
rst  38
pop  af
ld   sp,3708
-    
scf  
-    
ld   (1918),sp
inc  d
dec  de
jr   z,3022
ldi  a,(hl)
dec  hl
ld   h,b
ld   (hl),b
ld   (hl),2F
rst  38
ld   hl,B932
-    
cp   c
cp   d
-    
cp   d
rst  38
ld   hl,8232
-    
add  d
add  e
-    
add  e
rst  38
ld   hl,0932
ld   a,(bc)
ldd  a,(hl)
dec  sp
rst  38
ld   hl,0B32
ld   b,b
ld   a,h
ld   l,a
rst  38
ld   hl,2F32
rrca 
cpl  
rra  
ld   e,a
inc  l
cpl  
ccf  
rst  38
ld   hl,6C32
inc  a
ld   c,e
ld   c,h
ld   e,e
ld   e,h
ld   l,e
cpl  
rst  38
pop  af
ld   sp,4D2F
-    
ld   c,l
cpl  
cpl  
ld   e,l
ld   e,(hl)
ld   c,(hl)
ld   e,a
ld   l,l
ld   l,(hl)
cpl  
cpl  
ld   a,l
-    
ld   a,l
cpl  
rst  38
pop  af
ld   sp,7708
-    
ld   (hl),a
-    
ld   (7818),sp
ld   b,e
ld   d,e
ld   a,d
ld   a,e
ld   d,b
cpl  
cpl  
ld   (bc),a
-    
ld   a,l
cpl  
rst  38
ld   hl,B932
-    
cp   c
cp   d
-    
cp   d
rst  38
ld   hl,8232
-    
add  d
add  e
-    
add  e
rst  38
ld   hl,0932
ld   a,(bc)
ldd  a,(hl)
dec  sp
rst  38
ld   hl,0B32
ld   b,b
ld   a,h
ld   l,a
rst  38
ld   hl,DC32
-    
ld   (ff00+E1),a
rst  38
ld   hl,DE32
rst  18
ld   (ff00+E1),a
rst  38
ld   hl,DE32
ld   (ff00+c),a
ld   (ff00+E4),a
rst  38
ld   hl,DC32
xor  a,E0
-    
rst  38
ld   hl,E532
and  a,E7
add  sp,FF
ld   hl,FD32
and  a,FD
push hl
-    
add  sp,FD
rst  20
rst  38
ld   hl,E932
ld   (ECEB),a
rst  38
ld   hl,ED32
ld   (ECEB),a
rst  38
ld   hl,F232
-    
di   
cp   a
rst  38
ld   hl,F432
ld   a,(ff00+c)
cp   a
di   
rst  38
ld   hl,C232
-    
jp   nz,FDC3
jp   21FF
ldd  (hl),a
call nz,C4FD
push bc
-    
push bc
rst  38
ld   hl,DC32
-    
call c,FDEF
rst  28
rst  38
ld   hl,F032
-    
ld   a,(ff00+F1)
-    
pop  af
rst  38
ld   hl,DC32
-    
ld   a,(ff00+F1)
-    
rst  28
rst  38
ld   hl,F032
-    
call c,FDEF
pop  af
rst  38
ld   hl,BD32
cp   (hl)
cp   e
cp   h
rst  38
ld   hl,B932
cp   d
jp   c,FFDB
inc  de
ld   sp,F0E0
dec  a
ldd  (hl),a
ret  nz
pop  bc
push bc
add  a,CC
call 7675
and  h
and  l
and  (hl)
and  a
ld   d,h
ld   d,l
ld   d,(hl)
ld   d,a
ld   b,h
ld   b,l
ld   b,(hl)
ld   b,a
and  b
and  c
and  d
and  e
sbc  h
sbc  l
sbc  (hl)
sbc  a
rst  38
ld   e,(hl)
ld   sp,E8F8
ld   h,h
ld   sp,E8F0
ld   l,l
ld   sp,0000
ld   (hl),e
ld   sp,0000
ld   a,c
ld   sp,0000
add  d
ld   sp,0000
push hl
ld   sp,0000
-    
ld   sp,0000
xor  h
ld   sp,F8D8
call nz,E831
ld   hl,sp+D6
ld   sp,F8F0
ld   (hl),l
ldd  (hl),a
ld   h,e
ld   h,h
ld   h,l
rst  38
ld   (hl),l
ldd  (hl),a
ld   h,e
ld   h,h
ld   h,l
ld   h,(hl)
ld   h,a
ld   l,b
rst  38
ld   (hl),l
ldd  (hl),a
ld   b,c
ld   b,c
ld   b,c
rst  38
ld   (hl),l
ldd  (hl),a
ld   b,d
ld   b,d
ld   b,d
rst  38
ld   (hl),l
ldd  (hl),a
ld   d,d
ld   d,d
ld   d,d
ld   h,d
ld   h,d
ld   h,d
rst  38
ld   (hl),l
ldd  (hl),a
ld   d,c
ld   d,c
ld   d,c
ld   h,c
ld   h,c
ld   h,c
ld   (hl),c
ld   (hl),c
ld   (hl),c
rst  38
pop  af
ld   sp,2F2F
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   h,e
ld   h,h
-    
ld   h,h
-    
ld   h,e
ld   h,(hl)
ld   h,a
-    
ld   h,a
-    
ld   h,(hl)
rst  38
ld   hl,2F32
cpl  
ld   h,e
ld   h,h
rst  38
ld   hl,0032
-    
nop  
<corrupted stop>
<corrupted stop>
-    
ld   c,a
add  b
-    
add  b
add  b
-    
add  b
add  c
-    
add  c
sub  a
-    
sub  a
rst  38
ld   hl,9832
-    
sbc  b
sbc  c
-    
sbc  c
add  b
-    
add  b
sbc  d
-    
sbc  d
sbc  e
-    
sbc  e
rst  38
ld   hl,A832
-    
xor  b
xor  c
-    
xor  c
xor  d
-    
xor  d
xor  e
-    
xor  e
rst  38
ld   hl,4132
cpl  
cpl  
rst  38
ld   hl,5232
cpl  
ld   h,d
rst  38
nop  
nop  
nop  
ld   (1000),sp
nop  
jr   3202
nop  
ld   (0808),sp
<corrupted stop>
jr   3212
nop  
<corrupted stop>
<corrupted stop>
<corrupted stop>
jr   320B
jr   3215
jr   321F
jr   3229
nop  
nop  
nop  
ld   (1000),sp
nop  
jr   321A
jr   nz,321C
jr   z,321E
jr   nc,3220
jr   c,3222
nop  
nop  
ld   (0008),sp
ld   (1008),sp
nop  
<corrupted stop>
jr   322F
jr   3239
jr   nz,3233
jr   nz,323D
jr   z,3237
jr   z,3241
jr   nc,323B
jr   nc,3245
nop  
ld   (1000),sp
ld   (0808),sp
<corrupted stop>
nop  
<corrupted stop>
<corrupted stop>
<corrupted stop>
jr   324F
jr   3259
jr   3263
jr   326D
jr   nz,3257
jr   nz,3261
jr   nz,326B
jr   nz,3275
jr   z,325F
jr   z,3269
jr   z,3273
jr   z,327D
jr   nc,3267
jr   nc,3271
jr   nc,327B
jr   nc,3285
jr   c,326F
jr   c,3279
jr   c,3283
jr   c,328D
nop  
nop  
nop  
ld   (1000),sp
ld   (0800),sp
ld   (1008),sp
stop
<corrupted stop>
<corrupted stop>
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,h
ld   a,h
ld   a,b
ld   a,c
ld   a,b
ld   a,e
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ccf  
ccf  
rra  
sbc  a
rra  
rst  18
ld   a,b
ld   a,e
ld   a,b
ld   a,c
ld   a,h
ld   a,h
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
nop  
nop  
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rra  
rst  18
rra  
sbc  a
ccf  
ccf  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   hl,sp+F8
ld   a,(ff00+F2)
pop  hl
push af
-    
ld   a,(ff00+c)
and  a,FF
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  38
rst  38
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rra  
rra  
rrca 
ld   c,a
add  a
xor  a
rst  00
ld   c,a
ld   h,a
ld   a,(ff00+c)
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,4F
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   a,(ff00+c)
and  a,F5
-    
ld   a,(ff00+c)
pop  hl
ld   hl,sp+F0
rst  38
ld   hl,sp+FF
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
rst  38
rst  38
nop  
rst  38
nop  
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   c,a
ld   h,a
xor  a
rst  00
ld   c,a
add  a
rra  
rrca 
rst  38
rra  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   a,b
ld   a,e
ld   a,b
ld   a,c
ld   a,h
ld   a,h
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,h
ld   a,h
ld   a,b
ld   a,c
ld   a,b
ld   a,e
rra  
rst  18
rra  
sbc  a
ccf  
ccf  
rst  38
rst  38
rst  38
rst  38
ccf  
ccf  
rra  
sbc  a
rra  
rst  18
nop  
nop  
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
ld   a,a
nop  
nop  
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
ld   a,b
ld   a,d
nop  
ld   (bc),a
nop  
ld   a,d
nop  
ld   a,d
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
rra  
ld   e,a
nop  
ld   b,b
nop  
ld   e,a
nop  
ld   e,a
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
ccf  
ccf  
ccf  
ccf  
jr   nc,3431
jr   nc,3433
inc  sp
ldd  (hl),a
inc  sp
jr   nc,3408
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3418
nop  
nop  
nop  
-    
-    
-    
-    
inc  c
inc  c
inc  c
inc  c
call z,CC0C
inc  c
inc  sp
jr   nc,345D
jr   nc,345F
jr   nc,3461
jr   nc,3463
jr   nc,3465
jr   nc,3467
ldd  (hl),a
inc  sp
jr   nc,3404
inc  c
call z,CC4C
inc  c
call z,CC0C
inc  c
call z,CC8C
inc  c
call z,330C
jr   nc,347D
jr   nc,347C
jr   nc,347E
jr   nc,348F
ccf  
ccf  
ccf  
nop  
nop  
nop  
nop  
rst  38
inc  b
rst  38
ld   b,b
nop  
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
call z,CC0C
ld   c,h
inc  c
inc  c
inc  c
inc  c
-    
-    
-    
-    
nop  
nop  
nop  
nop  
nop  
nop  
rst  38
rst  38
rst  38
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3481
nop  
rst  38
inc  b
rst  38
nop  
rst  38
nop  
rst  38
ld   (bc),a
rst  38
ld   b,b
rst  38
nop  
rst  38
ld   (01FF),sp
rst  38
ld   b,e
rst  38
rlca 
rst  38
inc  b
rst  38
ld   b,b
rst  38
ld   (bc),a
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
rst  38
nop  
rst  38
ld   b,b
rst  38
ld   (bc),a
rst  38
nop  
rst  38
<corrupted stop>
add  b
rst  38
jp   nz,E0FF
cp   a,06
cp   a,46
cp   a,06
cp   a,06
cp   a,16
cp   a,86
cp   a,06
cp   a,06
ld   a,a
ld   h,h
ld   a,a
ld   h,b
ld   a,a
ld   h,d
ld   a,a
ld   h,b
ld   a,a
ld   h,b
ld   a,a
ld   l,b
ld   a,a
ld   h,d
ld   a,a
ld   h,b
rst  38
ld   (bc),a
rst  38
ld   b,b
rst  38
nop  
rst  38
nop  
rst  38
ld   (80FF),sp
rst  38
rra  
ld   a,(ff00+10)
rst  38
ld   (bc),a
rst  38
jr   nz,34EB
nop  
rst  38
nop  
rst  38
inc  b
rst  38
nop  
rst  38
rst  38
nop  
nop  
rst  38
rlca 
rst  38
inc  de
rst  38
ld   bc,00FF
rst  38
ld   b,b
rst  38
nop  
rst  38
rst  38
ld   (0008),sp
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3513
rst  38
nop  
nop  
rst  38
ld   (ff00+FF),a
ret  z
rst  38
add  b
rst  38
nop  
rst  38
ld   (bc),a
rst  38
nop  
rst  38
rst  38
ld   (FF08),sp
nop  
rst  38
ld   (bc),a
rst  38
ld   b,b
rst  38
nop  
rst  38
ld   (bc),a
rst  38
nop  
rst  38
ld   hl,sp+0F
ld   (10F0),sp
ld   a,(ff00+10)
ld   a,(ff00+10)
ld   a,(ff00+50)
ld   a,(ff00+10)
ld   a,(ff00+10)
ld   a,(ff00+10)
ld   a,(ff00+10)
rrca 
ld   (0A0F),sp
rrca 
ld   (080F),sp
rrca 
ld   (080F),sp
rrca 
add  hl,bc
rrca 
ld   (0000),sp
nop  
ld   a,a
nop  
nop  
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,h
ld   a,h
ld   a,b
ld   a,c
ld   a,b
ld   a,e
nop  
nop  
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
ccf  
ccf  
rra  
sbc  a
rra  
rst  18
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
nop  
nop  
nop  
ld   a,a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
xor  d
xor  d
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rrca 
rrca 
rra  
rra  
jr   c,35D9
inc  sp
jr   nc,35DA
jr   nc,35DA
jr   nc,35A8
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,(ff00+F0)
ld   hl,sp+F8
inc  e
inc  e
call z,6C0C
inc  c
inc  l
inc  c
inc  (hl)
jr   nc,35FE
jr   nc,3600
jr   nc,3602
jr   nc,3604
jr   nc,3606
jr   nc,3608
jr   nc,360A
jr   nc,3604
inc  c
inc  l
inc  c
inc  l
inc  c
inc  l
inc  c
inc  l
inc  c
inc  l
inc  c
inc  l
inc  c
inc  l
inc  c
inc  (hl)
jr   nc,3620
jr   nc,361F
jr   nc,3626
jr   c,360F
rra  
rrca 
rrca 
nop  
nop  
nop  
nop  
nop  
ld   a,e
nop  
ld   a,c
nop  
ld   a,h
nop  
ld   a,a
nop  
ld   a,a
nop  
nop  
nop  
ld   a,a
nop  
nop  
nop  
rst  18
nop  
sbc  a
nop  
ccf  
nop  
rst  38
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
inc  l
inc  c
ld   l,h
inc  c
call z,1C0C
inc  e
ld   hl,sp+F8
ld   a,(ff00+F0)
nop  
nop  
nop  
nop  
ld   (FF08),sp
rst  38
rst  38
ld   (bc),a
rst  38
nop  
rst  38
jr   nz,3641
nop  
rst  38
ld   (bc),a
rst  38
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3653
rst  38
ld   (FF08),sp
rlca 
rst  38
inc  de
rst  38
ld   bc,00FF
rst  38
ld   b,b
rst  38
nop  
rst  38
rst  38
nop  
nop  
rst  38
ld   (ff00+FF),a
ret  z
rst  38
add  b
rst  38
nop  
rst  38
ld   (bc),a
rst  38
nop  
rst  38
rst  38
nop  
nop  
ld   (0808),sp
ld   (0808),sp
ld   (0808),sp
ld   (0808),sp
ld   (0808),sp
ld   (00FF),sp
rst  38
ld   (bc),a
rst  38
nop  
rst  38
jr   nz,368F
ld   (bc),a
rst  38
nop  
rst  38
rst  38
ld   (F008),sp
<corrupted stop>
rra  
ld   a,(ff00+1F)
ld   a,(ff00+1F)
ld   a,(ff00+1F)
ld   a,(ff00+1F)
rst  38
ld   e,a
ld   a,(ff00+10)
nop  
nop  
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
nop  
nop  
ld   (FF08),sp
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
ld   (0F08),sp
ld   (F8FF),sp
rrca 
ld   hl,sp+0F
ld   hl,sp+0F
ld   hl,sp+0F
ld   hl,sp+FF
ld   a,(080F)
rst  38
rlca 
rst  38
ld   b,e
rst  38
ld   bc,00FF
rst  38
nop  
rst  38
add  b
rst  38
rra  
ld   a,(ff00+10)
rst  38
ld   (ff00+FF),a
jp   nz,80FF
rst  38
nop  
rst  38
ldi  (hl),a
rst  38
nop  
rst  38
ld   hl,sp+0F
ld   (0000),sp
nop  
nop  
nop  
nop  
inc  a
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
ld   a,(hl)
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   h,(hl)
nop  
ld   a,h
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   a,h
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   h,(hl)
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   h,(hl)
nop  
inc  a
nop  
nop  
nop  
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
nop  
nop  
ld   a,(hl)
nop  
jr   376D
jr   376F
jr   3771
jr   3773
jr   3775
nop  
nop  
nop  
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
inc  a
nop  
jr   3781
jr   3783
jr   3785
nop  
nop  
rst  38
rst  38
rst  30
adc  c
-    
and  e
rst  38
add  c
or   a
ret  
-    
add  e
rst  10
xor  c
rst  38
add  c
rst  38
rst  38
rst  38
add  c
rst  38
cp   l
rst  20
and  l
rst  20
and  l
rst  38
cp   l
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
rst  38
add  c
rst  38
add  c
rst  38
sbc  c
rst  38
sbc  c
rst  38
add  c
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
add  c
add  c
cp   l
cp   l
cp   l
cp   l
cp   l
cp   l
cp   l
cp   l
add  c
add  c
rst  38
rst  38
rst  38
rst  38
add  c
rst  38
add  c
rst  38
add  c
rst  38
add  c
rst  38
add  c
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
add  c
jp   DF81
add  l
rst  18
add  l
rst  38
cp   l
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
add  c
rst  38
cp   l
rst  38
and  l
rst  20
and  l
rst  20
cp   l
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
rst  38
add  c
add  c
cp   l
add  e
cp   l
add  e
cp   l
add  e
cp   l
add  e
add  c
rst  38
rst  38
rst  38
-    
sub  e
cp   a
pop  bc
push af
adc  e
rst  18
and  c
-    
add  e
xor  a
pop  de
ei   
add  l
rst  18
and  c
-    
add  e
rst  28
sub  c
cp   e
push bc
rst  28
sub  c
cp   l
jp   89F7
rst  18
and  c
rst  38
rst  38
rst  38
rst  38
-    
and  h
rst  38
add  b
or   l
jp   z,80FF
-    
and  d
rst  30
adc  b
rst  38
rst  38
rst  38
rst  38
ld   d,a
xor  b
-    
ld   (bc),a
rst  18
jr   nz,38BB
add  h
xor  a,11
cp   e
ld   b,h
rst  38
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   (hl),a
adc  c
rst  18
ld   hl,05FB
xor  a
ld   d,c
-    
inc  bc
rst  10
add  hl,hl
rst  38
rst  38
nop  
nop  
inc  a
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
jr   389B
jr   c,389D
jr   389F
jr   38A1
jr   38A3
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   c,(hl)
nop  
ld   c,00
inc  a
nop  
ld   (hl),b
nop  
ld   a,(hl)
nop  
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   c,00
inc  a
nop  
ld   c,00
ld   c,00
ld   a,h
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   l,h
nop  
ld   c,h
nop  
ld   c,(hl)
nop  
ld   a,(hl)
nop  
inc  c
nop  
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   h,b
nop  
ld   a,h
nop  
ld   c,00
ld   c,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   h,b
nop  
ld   a,h
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
ld   a,(hl)
nop  
ld   b,00
inc  c
nop  
jr   3901
jr   c,3903
jr   c,3905
nop  
nop  
nop  
nop  
inc  a
nop  
ld   c,(hl)
nop  
inc  a
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
ld   a,00
ld   c,00
inc  a
nop  
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   a,h
nop  
ld   h,b
nop  
ld   h,b
nop  
nop  
nop  
nop  
nop  
ld   a,(hl)
nop  
ld   h,b
nop  
ld   a,h
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   a,(hl)
nop  
nop  
nop  
nop  
nop  
ld   a,(hl)
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   a,h
nop  
ld   h,b
nop  
ld   h,b
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   h,(hl)
nop  
ld   h,b
nop  
ld   l,(hl)
nop  
ld   h,(hl)
nop  
ld   a,00
nop  
nop  
nop  
nop  
ld   b,(hl)
nop  
ld   l,(hl)
nop  
ld   a,(hl)
nop  
ld   d,(hl)
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
nop  
nop  
nop  
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
ld   c,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
ld   h,b
nop  
inc  a
nop  
ld   c,00
ld   c,(hl)
nop  
inc  a
nop  
nop  
nop  
nop  
nop  
inc  a
nop  
jr   39AD
jr   39AF
jr   39B1
jr   39B3
inc  a
nop  
nop  
nop  
nop  
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   h,b
nop  
ld   a,(hl)
nop  
nop  
nop  
nop  
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
ld   b,(hl)
nop  
inc  l
nop  
jr   39D5
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   h,(hl)
nop  
ld   h,(hl)
nop  
ld   a,h
nop  
ld   l,b
nop  
ld   h,(hl)
nop  
nop  
nop  
nop  
nop  
ld   b,(hl)
nop  
ld   h,(hl)
nop  
halt 
nop  
ld   e,(hl)
nop  
ld   c,(hl)
nop  
ld   b,(hl)
nop  
nop  
nop  
nop  
nop  
ld   a,h
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
ld   c,(hl)
nop  
ld   a,h
nop  
nop  
nop  
rst  38
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
<corrupted stop>
add  b
rst  38
ld   (bc),a
rst  38
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3A23
rst  38
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
add  b
add  b
add  b
add  b
rst  38
rst  38
rst  38
nop  
rst  38
ld   (bc),a
rst  38
jr   nz,3A51
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
jr   3A8A
ld   hl,473E
ld   a,a
ld   e,a
ld   a,a
add  hl,sp
jr   nc,3AEF
ld   h,d
ei   
or   d
rst  38
and  b
rst  38
jp   nz,547F
ld   a,a
ld   e,h
ccf  
ld   l,7F
ld   h,e
cp   a
ld   hl,sp+37
rst  38
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,8301
add  e
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,FF01
rst  38
rst  38
rst  38
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,0101
add  e
add  e
rst  38
rst  38
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
rst  38
rst  38
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
reti 
add  a
nop  
jr   c,3AEA
jr   c,3AEC
jr   c,3AEE
jr   c,3AF0
jr   c,3AF2
jr   c,3AF4
jr   c,3AF6
jr   c,3B74
nop  
ld   a,h
nop  
ld   a,h
nop  
ld   a,h
nop  
ld   a,h
nop  
ld   a,h
nop  
ld   a,a
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
ld   (0800),sp
nop  
ld   (0800),sp
nop  
inc  e
nop  
inc  e
nop  
nop  
nop  
nop  
ld   c,01
dec  e
ld   e,06
ldi  a,(hl)
ldi  a,(hl)
daa  
daa  
<corrupted stop>
inc  c
dec  c
nop  
nop  
ret  nz
ret  nz
jr   nz,3B4D
<corrupted stop>
ret  nc
<corrupted stop>
jr   nc,3AFC
add  sp,08
add  sp,04
rlca 
inc  bc
inc  bc
inc  c
inc  c
<corrupted stop>
dec  (hl)
jr   nz,3B6C
jr   nz,3B83
ccf  
inc  c
inc  c
jr   z,3B31
ret  c
ret  nz
ld   b,b
ld   b,b
jr   nz,3B6F
ld   d,b
<corrupted stop>
<corrupted stop>
ld   a,(ff00+C0)
ret  nz
nop  
ld   (ff00+01),a
ld   (hl),c
ldd  (hl),a
ld   b,d
inc  (hl)
dec  (hl)
ld   d,l
ld   d,h
ld   c,a
ld   c,(hl)
ld   hl,1827
dec  de
nop  
nop  
add  b
add  b
ld   b,b
ld   b,b
jr   nz,3B0F
and  b
jr   nz,3B52
ld   h,b
sub  b
ld   a,(ff00+08)
ret  z
cp   b
cp   b
add  h
add  h
add  h
add  h
-    
-    
sub  d
sub  d
sub  d
sub  d
ld   l,h
ld   l,h
xor  a,EE
rlca 
rlca 
rra  
jr   3BCA
jr   nz,3C0D
ld   c,a
ld   a,a
ld   e,a
ld   (hl),b
ld   (hl),b
and  d
and  d
or   b
or   b
or   h
or   h
ld   h,h
ld   h,h
inc  a
inc  a
ld   l,2E
daa  
daa  
<corrupted stop>
ld   l,h
ld   a,h
rst  08
or   e
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rlca 
ld   b,09
add  hl,bc
ld   d,17
ld   (de),a
ld   de,0F0E
ld   (0809),sp
ld   (0F0F),sp
ld   (0908),sp
add  hl,bc
ld   a,(bc)
ld   a,(bc)
ld   b,06
ld   c,0E
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rra  
ld   e,21
ld   hl,554A
ld   c,d
ld   (hl),l
ld   a,(bc)
dec  (hl)
ld   a,(bc)
dec  d
ld   (0F08),sp
rrca 
ld   (0908),sp
add  hl,bc
ld   a,(bc)
ld   a,(bc)
ld   b,06
ld   c,0E
nop  
nop  
ld   h,(hl)
nop  
ld   l,h
nop  
ld   a,b
nop  
ld   a,b
nop  
ld   l,h
nop  
ld   h,(hl)
nop  
nop  
nop  
nop  
nop  
ld   b,(hl)
nop  
inc  l
nop  
jr   3BFF
jr   c,3C01
ld   h,h
nop  
ld   b,d
nop  
nop  
nop  
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
ld   hl,sp+00
ld   (ff00+00),a
ret  nz
nop  
add  b
nop  
add  b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,a
nop  
rra  
nop  
rrca 
nop  
rlca 
nop  
rlca 
nop  
inc  bc
nop  
inc  bc
nop  
inc  bc
nop  
nop  
nop  
add  b
nop  
add  b
nop  
ret  nz
nop  
ld   (ff00+00),a
ld   hl,sp+00
rst  38
nop  
rst  38
nop  
inc  bc
nop  
rlca 
nop  
rlca 
nop  
rrca 
nop  
rra  
nop  
ld   a,a
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
rst  38
rst  38
nop  
rst  38
rst  38
nop  
nop  
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
ld   bc,02FE
cp   a,02
-    
inc  b
-    
inc  b
-    
inc  b
rst  38
ld   (bc),a
rst  38
ld   bc,01FF
ld   bc,FF01
ld   bc,0101
rst  38
ld   bc,0101
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
inc  bc
inc  bc
inc  b
dec  b
ld   (1109),sp
ld   (de),a
ld   hl,4326
ld   c,h
nop  
nop  
ld   bc,0201
ld   (bc),a
inc  b
inc  b
ld   (1009),sp
inc  de
jr   nz,3CCC
jr   nz,3CD6
add  a
sbc  b
ld   b,39
ld   c,71
ld   e,E1
inc  a
jp   C33C
ld   a,b
add  a
ld   a,b
add  a
ld   b,b
ld   c,a
ld   b,b
ld   c,a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
ld   hl,sp+07
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   hl,sp+07
ld   b,b
ld   e,a
ld   b,b
ld   c,a
jr   nz,3D0C
jr   nz,3D06
<corrupted stop>
rrca 
rrca 
inc  b
inc  b
rlca 
rlca 
ld   a,b
add  a
ld   a,h
add  e
inc  a
jp   E11E
rrca 
ld   a,(ff00+FF)
rst  38
rst  38
nop  
rst  38
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
stop
jr   c,3D1B
ld   a,h
nop  
cp   a,00
cp   a,00
cp   a,00
ld   a,h
nop  
nop  
nop  
ld   (bc),a
inc  bc
ld   bc,0201
ld   (bc),a
inc  b
inc  b
dec  c
ld   (080A),sp
rrca 
rrca 
inc  bc
inc  bc
jr   z,3D21
ld   a,(ff00+D0)
jr   nc,3D6D
ld   (5408),sp
inc  b
xor  h
inc  b
-    
-    
jr   nc,3D77
nop  
nop  
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rlca 
ld   b,09
add  hl,bc
ld   (0B08),sp
dec  bc
nop  
nop  
ret  nz
ret  nz
call nz,E8C4
ld   l,b
sub  b
ld   a,(ff00+A8)
ld   hl,sp+48
ld   a,b
ld   hl,sp+B8
nop  
nop  
rlca 
rlca 
rlca 
rlca 
rlca 
inc  b
rlca 
inc  b
dec  bc
dec  bc
<corrupted stop>
rla  
rla  
nop  
nop  
add  b
add  b
add  b
add  b
ld   (ff00+E0),a
sub  b
ld   a,(ff00+A8)
ld   hl,sp+48
ld   a,b
cp   b
cp   b
ld   (0F08),sp
rrca 
ld   (0F08),sp
rrca 
add  hl,bc
add  hl,bc
add  hl,bc
add  hl,bc
ld   b,06
ld   c,0E
-    
-    
ldi  (hl),a
ldi  (hl),a
jr   nz,3DBD
ld   (ff00+E0),a
jr   nz,3DC1
jr   nz,3DC3
ret  nz
ret  nz
ld   (ff00+E0),a
jr   3DC1
sbc  b
sbc  b
sbc  b
sbc  b
ld   hl,sp+F8
sbc  h
sbc  b
inc  a
inc  a
inc  a
inc  a
ld   a,(hl)
ld   a,(hl)
ld   a,a
nop  
cp   a,FE
ld   a,(hl)
ld   a,(hl)
cp   a,DA
ld   a,(hl)
ld   e,d
ld   a,(hl)
ld   a,(hl)
-    
-    
ld   hl,sp+F8
cp   a,0E
cp   a,FE
ld   a,(hl)
ld   a,(hl)
cp   a,DA
ld   a,(hl)
ld   e,d
ld   a,(hl)
ld   a,(hl)
-    
-    
ld   hl,sp+F8
add  b
add  b
add  e
add  e
add  e
add  e
jp   EF02
ld   l,97
sub  a
ld   b,a
ld   b,h
inc  h
inc  h
nop  
nop  
ret  nz
ret  nz
ret  nz
ret  nz
ret  nz
ld   b,b
ld   (ff00+60),a
ld   hl,sp+F8
-    
inc  h
inc  (hl)
inc  (hl)
rla  
inc  d
rla  
inc  d
rla  
inc  d
inc  e
rra  
rla  
rla  
rrca 
rrca 
ld   e,1E
nop  
nop  
-    
inc  h
ld   hl,sp+28
add  sp,28
jr   c,3E07
add  sp,E8
sub  b
sub  b
ld   (hl),b
ld   (hl),b
ld   a,b
ld   a,b
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rrca 
ld   c,11
ld   de,3737
ld   (hl),c
ld   d,d
ld   a,l
ld   c,(hl)
ret  nz
ret  nz
ret  nz
ret  nz
ret  nz
ld   b,b
ret  nz
ld   b,b
and  b
and  b
<corrupted stop>
rst  38
rst  38
rst  08
inc  sp
ld   a,a
ld   b,b
ccf  
ccf  
ld   (0F08),sp
rrca 
add  hl,bc
add  hl,bc
add  hl,bc
add  hl,bc
ld   b,06
ld   c,0E
-    
-    
jr   nz,3E6B
jr   nz,3E6D
ld   (ff00+E0),a
jr   nz,3E71
jr   nz,3E73
ret  nz
ret  nz
ld   (ff00+E0),a
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rlca 
ld   b,09
add  hl,bc
inc  sp
inc  sp
ld   (hl),a
ld   d,h
ld   (hl),e
ld   c,h
jr   3E81
ret  c
ret  c
ret  c
ret  c
ld   hl,sp+78
call c,BC58
cp   h
inc  a
inc  a
ld   a,(hl)
ld   a,(hl)
add  hl,bc
ld   c,07
rlca 
ld   (080F),sp
rrca 
add  hl,bc
rrca 
ld   a,(bc)
ld   c,06
ld   b,0E
ld   c,00
nop  
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
rst  38
ld   a,(hl)
ret  
ccf  
ld   a,b
ld   a,a
add  hl,bc
rrca 
inc  b
inc  b
rlca 
rlca 
cp   b
cp   a
ret  nz
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,b
ld   a,b
ld   a,b
ld   a,b
ld   a,e
ld   c,b
ld   h,b
ld   e,a
or   (hl)
or   b
add  h
add  h
cp   b
cp   b
add  h
add  h
add  h
add  h
add  h
add  h
ld   a,(92FA)
sub  d
sbc  (hl)
sbc  (hl)
ld   h,a
ld   h,a
ld   (ff00+E0),a
nop  
nop  
nop  
nop  
ld   a,b
ld   a,b
ld   a,b
ld   a,b
ld   a,b
ld   c,b
ld   b,b
ld   a,(hl)
or   h
or   b
add  h
add  h
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
jr   nc,3F17
ld   sp,3131
ld   sp,2A32
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   b,h
inc  e
inc  c
jr   3F18
ld   c,45
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
ld   h,a
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   l,b
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
nop  
cpl  
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   b,e
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
jr   nc,3F7B
ld   sp,3131
ld   sp,2A32
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
ld   (hl),15
ld   c,1F
ld   c,15
scf  
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
ld   b,b
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,c
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
ld   (hl),15
ld   (de),a
rla  
ld   c,1C
scf  
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
inc  sp
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
dec  (hl)
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
dec  hl
jr   c,4010
add  hl,sp
add  hl,sp
add  hl,sp
ldd  a,(hl)
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
dec  hl
dec  a
ld   a,3E
ld   a,3E
ccf  
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
jr   nc,407F
ld   sp,3131
ld   sp,2A32
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   (hl),15
ld   c,1F
ld   c,15
scf  
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
ld   b,b
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,c
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   (hl),11
ld   (de),a
<corrupted stop>
cpl  
scf  
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
inc  sp
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
dec  (hl)
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
dec  hl
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
jr   nc,411F
ld   sp,3131
ld   sp,2A32
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
ld   (hl),15
ld   (de),a
rla  
ld   c,1C
scf  
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   (hl),2F
cpl  
ld   (bc),a
dec  b
cpl  
scf  
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
inc  sp
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
dec  (hl)
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
dec  hl
jr   c,4178
add  hl,sp
add  hl,sp
add  hl,sp
ldd  a,(hl)
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,e
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
ldi  a,(hl)
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
dec  hl
dec  a
ld   a,3E
ld   a,3E
ccf  
nop  
inc  a
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
inc  a
nop  
nop  
jr   41EA
jr   41CC
jr   41F2
nop  
nop  
inc  a
ld   c,(hl)
ld   c,3C
ld   (hl),b
ld   a,(hl)
nop  
nop  
ld   a,h
ld   c,3C
ld   c,0E
ld   a,h
nop  
nop  
inc  a
ld   l,h
ld   c,h
ld   c,(hl)
ld   a,(hl)
inc  c
nop  
nop  
ld   a,h
ld   h,b
ld   a,h
ld   c,4E
inc  a
nop  
nop  
inc  a
ld   h,b
ld   a,h
ld   h,(hl)
ld   h,(hl)
inc  a
nop  
nop  
ld   a,(hl)
ld   b,0C
jr   421D
jr   c,41E7
nop  
inc  a
ld   c,(hl)
inc  a
ld   c,(hl)
ld   c,(hl)
inc  a
nop  
nop  
inc  a
ld   c,(hl)
ld   c,(hl)
ld   a,0E
inc  a
nop  
nop  
inc  a
ld   c,(hl)
ld   c,(hl)
ld   a,(hl)
ld   c,(hl)
ld   c,(hl)
nop  
nop  
ld   a,h
ld   h,(hl)
ld   a,h
ld   h,(hl)
ld   h,(hl)
ld   a,h
nop  
nop  
inc  a
ld   h,(hl)
ld   h,b
ld   h,b
ld   h,(hl)
inc  a
nop  
nop  
ld   a,h
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   a,h
nop  
nop  
ld   a,(hl)
ld   h,b
ld   a,h
ld   h,b
ld   h,b
ld   a,(hl)
nop  
nop  
ld   a,(hl)
ld   h,b
ld   h,b
ld   a,h
ld   h,b
ld   h,b
nop  
nop  
inc  a
ld   h,(hl)
ld   h,b
ld   l,(hl)
ld   h,(hl)
ld   a,00
nop  
ld   b,(hl)
ld   b,(hl)
ld   a,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
inc  a
jr   4253
jr   4255
inc  a
nop  
nop  
ld   e,0C
inc  c
ld   l,h
ld   l,h
jr   c,4247
nop  
ld   h,(hl)
ld   l,h
ld   a,b
ld   a,b
ld   l,h
ld   h,(hl)
nop  
nop  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   a,(hl)
nop  
nop  
ld   b,(hl)
ld   l,(hl)
ld   a,(hl)
ld   d,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
ld   b,(hl)
ld   h,(hl)
halt 
ld   e,(hl)
ld   c,(hl)
ld   b,(hl)
nop  
nop  
inc  a
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
inc  a
nop  
nop  
ld   a,h
ld   h,(hl)
ld   h,(hl)
ld   a,h
ld   h,b
ld   h,b
nop  
nop  
inc  a
ld   h,d
ld   h,d
ld   l,d
ld   h,h
ldd  a,(hl)
nop  
nop  
ld   a,h
ld   h,(hl)
ld   h,(hl)
ld   a,h
ld   l,b
ld   h,(hl)
nop  
nop  
inc  a
ld   h,b
inc  a
ld   c,4E
inc  a
nop  
nop  
ld   a,(hl)
jr   42AB
jr   42AD
jr   4297
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   c,(hl)
inc  a
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
inc  l
jr   42A7
nop  
ld   b,(hl)
ld   b,(hl)
ld   d,(hl)
ld   a,(hl)
ld   l,(hl)
ld   b,(hl)
nop  
nop  
ld   b,(hl)
inc  l
jr   42EC
ld   h,h
ld   b,d
nop  
nop  
ld   h,(hl)
ld   h,(hl)
inc  a
jr   42D5
jr   42BF
nop  
ld   a,(hl)
ld   c,1C
jr   c,4335
ld   a,(hl)
nop  
nop  
nop  
nop  
nop  
nop  
ld   h,b
ld   h,b
nop  
nop  
nop  
nop  
inc  a
inc  a
nop  
nop  
nop  
nop  
nop  
ldi  (hl),a
inc  d
ld   (2214),sp
nop  
nop  
nop  
ld   (hl),36
ld   e,a
ld   c,c
ld   e,a
ld   b,c
ld   a,a
ld   b,c
ld   a,22
inc  e
inc  d
ld   (FF08),sp
rst  38
rst  38
add  c
pop  bc
cp   a
pop  bc
cp   a
pop  bc
cp   a
pop  bc
cp   a
add  c
rst  38
rst  38
rst  38
xor  d
xor  d
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
rst  38
nop  
rst  38
ld   b,b
rst  38
ld   (bc),a
rst  38
nop  
rst  38
<corrupted stop>
add  b
rst  38
ld   (bc),a
rst  38
nop  
ld   a,(ff00+10)
rst  38
rra  
rst  38
nop  
rst  38
ld   b,b
rst  38
nop  
rst  38
ld   (bc),a
rst  38
ld   b,b
rst  38
nop  
rrca 
ld   (F8FF),sp
rst  38
nop  
rst  38
ld   (bc),a
rst  38
nop  
rst  38
ld   b,b
rst  38
ld   (bc),a
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
jr   438D
jr   c,43AF
jr   4391
jr   4393
jr   4395
inc  a
inc  a
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   a,3E
ld   c,0E
inc  a
inc  a
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   c,(hl)
ld   c,(hl)
inc  a
inc  a
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
inc  a
inc  a
nop  
nop  
jr   c,43DB
ld   b,h
ld   b,h
cp   d
cp   d
and  d
and  d
cp   d
cp   d
ld   b,h
ld   b,h
jr   c,43E7
add  a,C6
and  a,E6
and  a,E6
sub  a,D6
sub  a,D6
adc  a,CE
adc  a,CE
add  a,C6
ret  nz
ret  nz
ret  nz
ret  nz
nop  
nop  
-    
-    
-    
-    
reti 
reti 
reti 
reti 
reti 
reti 
nop  
nop  
jr   nc,4403
ld   a,b
ld   a,b
inc  sp
inc  sp
or   (hl)
or   (hl)
or   a
or   a
or   (hl)
or   (hl)
or   e
or   e
nop  
nop  
nop  
nop  
nop  
nop  
call 6ECD
ld   l,(hl)
-    
-    
inc  c
inc  c
-    
-    
ld   bc,0101
ld   bc,0101
adc  a
adc  a
reti 
reti 
reti 
reti 
reti 
reti 
rst  08
rst  08
add  b
add  b
add  b
add  b
add  b
add  b
sbc  (hl)
sbc  (hl)
or   e
or   e
or   e
or   e
or   e
or   e
sbc  (hl)
sbc  (hl)
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  28
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  20
nop  
rst  20
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
nop  
rst  38
nop  
rst  38
rst  38
nop  
nop  
rst  38
rst  38
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
ld   bc,02FF
cp   a,FE
ld   (bc),a
inc  b
-    
-    
inc  b
-    
inc  b
nop  
rst  38
rst  38
rst  38
add  b
rst  38
ld   b,b
ld   a,a
rst  38
ld   b,b
ld   (ff00+3F),a
rst  38
jr   nz,441D
ld   h,b
rst  38
nop  
rst  38
nop  
rst  38
ld   bc,02FE
cp   a,02
-    
inc  b
-    
inc  b
-    
inc  b
rst  38
nop  
rst  38
nop  
rst  38
add  b
ld   a,a
ld   b,b
rst  38
ld   b,b
rst  38
jr   nz,447B
jr   nz,443D
ld   h,b
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  38
ld   (bc),a
rst  38
ld   bc,01FF
rst  38
ld   bc,01FF
rst  38
ld   bc,01FF
rst  38
ld   bc,C07F
rst  38
add  b
rst  38
add  b
rst  38
add  b
rst  38
add  b
rst  38
add  b
rst  38
add  b
rst  38
add  b
cp   a,02
cp   a,02
rst  38
inc  bc
-    
dec  b
ld   hl,sp+09
pop  af
ld   (de),a
pop  hl
ld   h,C3
ld   c,h
ld   a,a
ret  nz
ld   a,a
ret  nz
rst  38
ret  nz
cp   a
ld   h,b
sbc  a
ld   (hl),b
xor  a
ld   e,b
daa  
call c,CE33
rst  38
nop  
rst  38
ld   bc,02FE
-    
inc  b
ld   hl,sp+09
ld   a,(ff00+13)
ld   (ff00+27),a
ld   (ff00+2F),a
add  a
sbc  b
ld   b,39
ld   c,71
ld   e,E1
inc  a
jp   C33C
ld   a,b
add  a
ld   a,b
add  a
dec  (hl)
swap d
call C53A
ld   a,c
add  (hl)
ld   a,b
add  a
ld   a,b
add  a
ld   a,h
add  e
ld   a,h
add  e
rst  38
nop  
rst  38
add  b
ld   a,a
ret  nz
ccf  
ld   (ff00+9F),a
ld   (hl),b
ld   c,a
cp   b
ld   h,a
sbc  h
scf  
call z,4FC0
ret  nz
ld   c,a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
add  b
sbc  a
ld   hl,sp+07
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   a,(ff00+0F)
ld   hl,sp+07
ld   a,h
add  e
ld   a,(hl)
add  c
ld   a,(hl)
add  c
ld   a,C1
ccf  
ret  nz
rra  
ld   (ff00+1F),a
ld   (ff00+1F),a
ld   (ff00+33),a
adc  a,1B
and  a,09
rst  30
dec  c
di   
dec  c
di   
dec  c
di   
dec  c
di   
add  hl,bc
rst  30
ret  nz
ld   e,a
ret  nz
ld   c,a
ld   (ff00+2F),a
ld   (ff00+27),a
ld   a,(ff00+11)
cp   a
ld   c,a
inc  c
-    
rlca 
rst  38
ld   a,b
add  a
ld   a,h
add  e
inc  a
jp   E11E
rrca 
ld   a,(ff00+FF)
rst  38
rst  38
nop  
rst  38
rst  38
rrca 
ld   a,(ff00+0F)
ld   a,(ff00+0E)
pop  af
ld   c,F1
ld   b,F9
rst  38
rst  38
push bc
ccf  
rst  38
rst  38
dec  de
and  a,13
xor  a,37
call z,DC27
ld   c,a
cp   b
-    
di   
-    
and  e
ld   (ff00+FF),a
cp   a,02
cp   a,02
cp   a
ld   b,e
inc  e
push hl
cp   b
ld   c,c
or   c
ld   d,d
and  c
ld   h,(hl)
ld   b,e
call z,00FF
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  28
<corrupted stop>
jr   c,45AF
nop  
ei   
inc  b
ei   
inc  b
ei   
inc  b
ei   
inc  b
pop  af
ld   c,F1
ld   c,F1
ld   c,83
ld   a,h
ld   bc,01FE
cp   a,01
cp   a,83
ld   a,h
rst  38
nop  
add  e
ld   a,h
add  e
ld   a,h
pop  af
ld   c,E0
rra  
ld   (ff00+1F),a
ld   (ff00+1F),a
ld   (ff00+1F),a
ld   (ff00+1F),a
add  b
ld   a,a
add  b
ld   a,a
rst  30
ld   (14EB),sp
rst  30
ld   (08F7),sp
-    
inc  e
-    
inc  e
ld   h,e
sbc  h
ld   bc,00FE
nop  
ld   h,b
ld   h,b
ld   (hl),b
ld   (hl),b
ld   a,b
ld   a,b
ld   a,b
ld   a,b
ld   (hl),b
ld   (hl),b
ld   h,b
ld   h,b
nop  
nop  
nop  
nop  
jr   nc,4633
ld   (hl),b
ld   (hl),b
jr   nc,4637
jr   nc,4639
jr   nc,463B
ld   a,b
ld   a,b
nop  
nop  
ld   (ff00+E0),a
ld   a,(ff00+E0)
ei   
ld   (ff00+FC),a
ld   (ff00+FC),a
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
nop  
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
rrca 
rlca 
rst  18
rlca 
ccf  
rlca 
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
pop  hl
-    
ld   (ff00+FF),a
rst  20
rst  38
rst  28
ld   (ff00+FF),a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rst  38
nop  
nop  
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
add  a
ccf  
rlca 
rst  38
rst  20
rst  38
rst  30
rlca 
rst  38
ld   hl,sp+00
ld   (ff00+00),a
ret  nz
nop  
add  b
nop  
add  b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,a
nop  
rra  
nop  
rrca 
nop  
rlca 
nop  
rlca 
nop  
inc  bc
nop  
inc  bc
nop  
inc  bc
nop  
nop  
nop  
add  b
nop  
add  b
nop  
ret  nz
nop  
ld   (ff00+00),a
ld   hl,sp+00
rst  38
nop  
rst  38
nop  
inc  bc
nop  
rlca 
nop  
rlca 
nop  
rrca 
nop  
rra  
nop  
ld   a,a
nop  
rst  38
nop  
rst  38
nop  
ld   bc,0101
ld   bc,8181
pop  bc
pop  bc
pop  bc
pop  bc
pop  hl
pop  hl
pop  af
pop  af
ld   sp,hl
ld   sp,hl
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
cp   a,FE
ld   a,(hl)
ld   a,(hl)
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ccf  
ccf  
sbc  a
sbc  a
adc  a
adc  a
rst  08
rst  08
rst  20
rst  20
di   
di   
rst  30
rst  30
ld   (ff00+E0),a
ld   (ff00+E0),a
ld   (ff00+E0),a
ld   (ff00+E0),a
ld   (ff00+E0),a
ret  nz
ret  nz
ret  nz
ret  nz
add  b
add  b
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
ld   a,(ff00+F0)
nop  
nop  
ld   a,h
ld   a,h
ld   b,a
ld   b,a
ld   b,c
ld   b,c
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   a,a
ld   b,b
nop  
nop  
ld   bc,0101
ld   bc,8181
pop  bc
pop  bc
ld   b,c
ld   b,c
ld   h,c
ld   h,c
pop  hl
ld   h,c
nop  
nop  
cp   a,FE
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
cp   a,06
nop  
nop  
dec  de
dec  de
ldd  (hl),a
ldd  (hl),a
ld   e,c
ld   e,c
ld   c,h
ld   c,h
adc  h
adc  h
add  (hl)
add  (hl)
rst  38
add  e
nop  
nop  
rst  38
rst  38
ld   bc,0101
ld   bc,8181
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ccf  
ld   hl,0000
cp   (hl)
cp   (hl)
adc  b
adc  b
adc  b
adc  b
adc  b
adc  b
adc  b
adc  b
add  b
add  b
add  b
add  b
nop  
nop  
adc  b
adc  b
ret  c
ret  c
xor  b
xor  b
adc  b
adc  b
adc  b
adc  b
nop  
nop  
nop  
nop  
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   b,a
ld   a,a
pop  hl
ld   h,c
pop  hl
ld   h,c
pop  hl
ld   h,c
pop  hl
ld   h,c
pop  hl
ld   h,c
pop  bc
pop  bc
pop  bc
pop  bc
add  c
add  c
cp   a,06
cp   a,06
cp   a,06
cp   a,06
cp   a,06
cp   a,06
cp   a,06
ld   b,FE
rst  38
add  e
rst  38
add  c
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
ccf  
jr   nz,481B
jr   nz,47EE
rra  
rra  
ld   de,919F
rst  08
ret  
rst  00
push bc
-    
ld   h,e
di   
inc  sp
ld   sp,hl
add  hl,de
ld   (80F8),sp
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
ld   e,a
ld   a,a
ld   a,b
ld   a,b
ld   h,b
ld   h,b
ld   d,b
ld   (hl),b
ld   d,b
ld   (hl),b
ld   c,b
ld   a,b
ld   b,h
ld   a,h
ld   a,(hl)
ld   a,(hl)
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,0101
ld   bc,FE06
ld   b,FE
ld   b,FE
ld   b,FE
ld   b,FE
ld   b,FE
ld   b,FE
cp   a,FE
ld   (440F),sp
ld   b,a
ld   h,h
ld   h,a
ld   (hl),d
ld   (hl),e
ld   d,c
ld   (hl),c
ld   e,c
ld   a,c
ld   c,h
ld   a,h
ld   a,(hl)
ld   a,(hl)
inc  c
-    
ld   b,FE
inc  bc
rst  38
ld   bc,01FF
rst  38
nop  
rst  38
add  b
rst  38
ld   a,a
ld   a,a
nop  
nop  
nop  
nop  
nop  
nop  
add  b
add  b
add  b
add  b
ret  nz
ret  nz
ret  nz
ret  nz
ld   (ff00+E0),a
ld   a,(hl)
ld   a,(hl)
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
ld   a,a
nop  
nop  
inc  bc
inc  bc
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
inc  bc
ld   (bc),a
nop  
nop  
ei   
ei   
ld   a,(bc)
ld   a,(bc)
ld   (de),a
ld   (de),a
ldi  (hl),a
ldi  (hl),a
ldi  (hl),a
ldi  (hl),a
ld   b,d
ld   b,d
jp   0042
nop  
-    
-    
dec  c
dec  c
inc  c
inc  c
inc  c
inc  c
inc  c
inc  c
inc  c
inc  c
-    
inc  c
nop  
nop  
-    
-    
inc  c
inc  c
adc  h
adc  h
ld   c,h
ld   c,h
ld   c,h
ld   c,h
inc  l
inc  l
inc  a
inc  l
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
inc  bc
inc  bc
inc  bc
ld   (bc),a
ld   (bc),a
nop  
nop  
nop  
nop  
nop  
nop  
add  e
add  d
add  e
add  d
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
ld   (bc),a
inc  bc
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
inc  c
-    
inc  e
inc  e
inc  e
inc  e
inc  c
inc  c
inc  c
inc  c
inc  b
inc  b
nop  
nop  
nop  
nop  
nop  
nop  
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
inc  bc
inc  bc
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
inc  c
-    
-    
-    
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
inc  bc
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
-    
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
ld   bc,0301
inc  bc
rlca 
rlca 
rrca 
rrca 
rra  
rra  
ccf  
ccf  
ld   a,a
ld   a,a
nop  
nop  
rst  38
rst  38
add  e
add  e
add  e
add  e
add  e
add  e
add  e
add  e
add  e
add  e
rst  38
add  e
nop  
nop  
ld   a,a
ld   a,a
jr   nz,49A5
<corrupted stop>
ld   (0408),sp
inc  b
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
di   
di   
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
ldd  (hl),a
di   
ldd  (hl),a
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
add  e
rst  38
nop  
nop  
nop  
nop  
ld   bc,0301
inc  bc
rlca 
rlca 
rrca 
dec  bc
rra  
inc  de
inc  hl
ccf  
di   
or   d
ld   (hl),e
ld   (hl),d
inc  sp
inc  sp
inc  de
inc  de
ld   (bc),a
ld   (bc),a
nop  
nop  
nop  
nop  
nop  
nop  
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
add  e
rst  38
rst  38
rst  38
ld   b,e
ld   a,a
inc  hl
ccf  
inc  de
rra  
dec  bc
rrca 
rlca 
rlca 
inc  bc
inc  bc
ld   bc,0001
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
<corrupted stop>
jr   nc,4A2D
ld   (hl),b
ld   (hl),b
nop  
nop  
ld   a,b
ld   a,b
sbc  h
sbc  h
inc  e
inc  e
ld   a,b
ld   a,b
ld   (ff00+E0),a
-    
-    
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
dec  de
dec  de
dec  de
dec  de
add  hl,bc
add  hl,bc
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
jr   nz,4A5D
nop  
nop  
dec  de
dec  de
dec  de
dec  de
add  hl,bc
add  hl,bc
nop  
nop  
nop  
nop  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
nop  
nop  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
sbc  e
dec  e
ld   d,2F
ld   a,(bc)
rla  
dec  c
cpl  
inc  sp
ld   bc,0809
rlca 
cpl  
ld   c,15
jr   4A90
<corrupted stop>
cpl  
dec  e
ld   c,1D
dec  de
ld   (de),a
inc  e
cpl  
dec  d
ld   (de),a
inc  c
ld   c,17
inc  e
ld   c,0D
cpl  
dec  e
jr   4ABA
cpl  
cpl  
cpl  
cpl  
dec  bc
ld   e,15
dec  d
ld   c,1D
cpl  
add  hl,de
dec  de
jr   4AB2
rrca 
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
inc  e
jr   4AB5
dec  e
jr   nz,4AB3
dec  de
ld   c,2F
ld   a,(bc)
rla  
dec  c
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
inc  e
ld   e,0B
dec  h
dec  d
ld   (de),a
inc  c
ld   c,17
inc  e
ld   c,0D
cpl  
dec  e
jr   4AF5
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
rla  
ld   (de),a
rla  
dec  e
ld   c,17
dec  c
jr   4AFA
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
inc  sp
ld   bc,0809
add  hl,bc
cpl  
dec  bc
ld   e,15
dec  d
ld   c,1D
cpl  
add  hl,de
dec  de
jr   4B19
rrca 
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
inc  e
jr   4B1B
dec  e
jr   nz,4B19
dec  de
ld   c,24
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
inc  sp
jr   nc,4B4E
ldd  (hl),a
ld   sp,342F
dec  (hl)
ld   (hl),37
jr   c,4B5F
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,(bc)
dec  d
dec  d
cpl  
dec  de
ld   (de),a
<corrupted stop>
dec  e
inc  e
cpl  
dec  de
ld   c,1C
ld   c,1B
rra  
ld   c,0D
inc  h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
jr   4B86
ld   (de),a
<corrupted stop>
rla  
ld   a,(bc)
dec  d
cpl  
inc  c
jr   4B8C
inc  c
ld   c,19
dec  e
sbc  h
cpl  
cpl  
dec  c
ld   c,1C
ld   (de),a
<corrupted stop>
cpl  
ld   a,(bc)
rla  
dec  c
cpl  
add  hl,de
dec  de
jr   4B9B
dec  de
ld   a,(bc)
ld   d,2F
dec  bc
ldi  (hl),a
cpl  
ld   a,(bc)
dec  d
ld   c,21
ld   c,22
cpl  
add  hl,de
ld   a,(bc)
inc  hl
ld   de,1D12
rla  
jr   4BC1
sbc  l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
ld   e,d
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,e
ld   e,h
ld   e,l
add  b
add  c
add  d
add  e
sub  b
sub  c
sub  d
add  c
add  d
add  e
sub  b
ld   l,h
ld   l,l
ld   l,(hl)
ld   l,a
ld   (hl),b
ld   (hl),c
ld   (hl),d
ld   e,(hl)
ld   e,l
add  h
add  l
add  (hl)
add  a
sub  e
sub  h
sub  l
add  l
add  (hl)
add  a
sub  e
ld   (hl),e
ld   (hl),h
ld   (hl),l
halt 
ld   (hl),a
ld   a,b
cpl  
ld   e,(hl)
ld   e,l
cpl  
adc  b
adc  c
cpl  
sub  (hl)
sub  a
sbc  b
adc  b
adc  c
cpl  
sub  (hl)
ld   a,c
ld   a,d
ld   a,e
ld   a,h
ld   a,l
ld   a,(hl)
cpl  
ld   e,(hl)
ld   e,l
cpl  
adc  d
adc  e
cpl  
adc  (hl)
adc  a
ld   l,e
adc  d
adc  e
cpl  
adc  (hl)
ld   a,a
ld   h,(hl)
ld   h,a
ld   l,b
ld   l,c
ld   l,d
cpl  
ld   e,(hl)
ld   e,a
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,c
adc  (hl)
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
inc  a
dec  a
ld   a,3C
inc  a
inc  a
adc  (hl)
adc  (hl)
adc  h
adc  h
ld   h,d
ld   h,e
adc  h
adc  h
ldd  a,(hl)
adc  h
adc  h
adc  h
adc  h
adc  h
ldd  a,(hl)
ld   b,d
ld   b,e
dec  sp
adc  h
adc  h
adc  (hl)
adc  (hl)
ldd  a,(hl)
adc  h
ld   h,h
ld   h,l
adc  h
adc  h
adc  h
adc  h
dec  sp
adc  h
adc  h
adc  h
adc  h
ld   b,h
ld   b,l
adc  h
adc  h
adc  h
adc  (hl)
adc  (hl)
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
ld   b,(hl)
ld   b,a
ld   c,b
ld   c,c
ccf  
ld   b,b
adc  (hl)
adc  (hl)
adc  h
adc  h
adc  h
adc  h
ldd  a,(hl)
adc  h
adc  h
adc  h
adc  h
ld   d,e
ld   d,h
adc  h
ld   c,d
ld   c,e
ld   c,h
ld   c,l
ld   b,d
ld   b,e
adc  (hl)
adc  (hl)
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
ld   d,h
ld   d,l
ld   d,(hl)
ld   d,a
ld   c,(hl)
ld   c,a
ld   d,b
ld   d,c
ld   d,d
ld   b,l
adc  (hl)
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
ld   b,c
cpl  
cpl  
ld   e,c
add  hl,de
dec  d
ld   a,(bc)
ldi  (hl),a
ld   c,1B
cpl  
cpl  
cpl  
sbc  c
add  hl,de
dec  d
ld   a,(bc)
ldi  (hl),a
ld   c,1B
cpl  
cpl  
cpl  
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
cpl  
cpl  
cpl  
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
sbc  d
cpl  
cpl  
cpl  
cpl  
cpl  
inc  sp
jr   nc,4D2F
ldd  (hl),a
ld   sp,342F
dec  (hl)
ld   (hl),37
jr   c,4D40
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   b,a
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,c
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,e
<corrupted stop>
ld   d,0E
cpl  
dec  e
ldi  (hl),a
add  hl,de
ld   c,54
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
ld   d,l
ld   d,(hl)
ld   l,l
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
xor  c
ld   e,b
ld   e,b
ld   e,b
ld   l,(hl)
ld   d,(hl)
ld   d,(hl)
ld   e,d
inc  l
ld   c,e
ld   c,d
inc  l
ld   e,e
ld   a,b
ld   (hl),a
ld   a,(hl)
ld   a,a
sbc  d
sbc  e
cpl  
xor  d
ld   a,c
ld   (hl),a
ld   a,(hl)
ld   a,a
sbc  d
sbc  e
ld   e,h
inc  l
ld   c,e
ld   c,d
inc  l
dec  l
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
xor  h
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   l,2C
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,e
ld   d,1E
inc  e
ld   (de),a
inc  c
cpl  
dec  e
ldi  (hl),a
add  hl,de
ld   c,54
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
ld   d,l
ld   d,(hl)
ld   l,l
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
xor  c
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   l,(hl)
ld   d,(hl)
ld   e,d
inc  l
ld   c,e
ld   c,d
inc  l
ld   e,e
ld   a,b
ld   (hl),a
ld   a,(hl)
ld   a,a
sbc  d
sbc  e
cpl  
xor  d
ld   a,c
ld   (hl),a
ld   a,(hl)
ld   a,a
sbc  d
sbc  e
ld   e,h
inc  l
ld   c,e
ld   c,d
inc  l
ld   (hl),c
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
xor  e
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),d
ld   (hl),h
inc  l
ld   c,e
ld   c,d
inc  l
ld   e,e
ld   a,d
ld   (hl),a
ld   a,(hl)
ld   a,a
sbc  d
sbc  e
cpl  
xor  d
cpl  
sbc  l
sbc  h
sbc  h
cpl  
cpl  
ld   e,h
inc  l
ld   c,e
ld   c,d
inc  l
dec  l
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
xor  h
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   l,2C
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,h
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,(hl)
ld   b,a
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,c
ld   c,d
cpl  
ld   a,(bc)
dec  h
dec  e
ldi  (hl),a
add  hl,de
ld   c,2F
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,e
dec  d
ld   c,1F
ld   c,15
ld   d,h
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,l
ld   d,(hl)
ld   d,a
ld   e,b
ld   l,h
ld   e,b
ld   l,h
ld   e,b
ld   e,c
ld   d,(hl)
ld   e,d
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   e,e
sub  b
ld   l,a
sub  c
ld   l,a
sub  d
ld   l,a
sub  e
ld   l,a
sub  h
ld   e,h
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   (hl),c
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),h
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   e,e
sub  l
ld   l,a
sub  (hl)
ld   l,a
sub  a
ld   l,a
sbc  b
ld   l,a
sbc  c
ld   e,h
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,2C
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,e
dec  e
jr   4F84
dec  h
inc  e
inc  c
jr   4F8B
ld   c,54
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
ld   d,l
ld   d,(hl)
ld   (hl),b
ld   l,l
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   l,(hl)
ld   d,(hl)
ld   d,(hl)
ld   d,(hl)
ld   e,d
ld   c,e
ld   c,d
ld   e,e
ld   bc,606F
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
ld   e,e
ld   (bc),a
ld   l,a
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
ld   e,e
inc  bc
ld   l,a
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   l,4B
ld   c,h
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,(hl)
ld   b,a
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,c
ld   c,d
cpl  
dec  bc
dec  h
dec  e
ldi  (hl),a
add  hl,de
ld   c,2F
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,e
dec  d
ld   c,1F
ld   c,15
ld   d,h
inc  l
inc  l
ld   d,e
ld   de,1012
ld   de,2C54
ld   c,e
ld   c,d
ld   d,l
ld   d,(hl)
ld   d,a
ld   e,b
ld   l,h
ld   e,b
ld   l,h
ld   e,b
ld   e,c
ld   d,(hl)
ld   e,d
ld   (hl),l
ld   e,b
ld   l,h
ld   e,b
ld   l,h
ld   l,(hl)
ld   e,d
ld   c,e
ld   c,d
ld   e,e
sub  b
ld   l,a
sub  c
ld   l,a
sub  d
ld   l,a
sub  e
ld   l,a
sub  h
ld   e,h
ld   e,e
sub  b
ld   l,a
sub  c
ld   l,a
sub  d
ld   e,h
ld   c,e
ld   c,d
ld   (hl),c
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),h
ld   (hl),c
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),h
ld   c,e
ld   c,d
ld   e,e
sub  l
ld   l,a
sub  (hl)
ld   l,a
sub  a
ld   l,a
sbc  b
ld   l,a
sbc  c
ld   e,h
ld   e,e
sub  e
ld   l,a
sub  h
ld   l,a
sub  l
ld   e,h
ld   c,e
ld   c,d
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,2D
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,4B
ld   c,d
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
ld   d,e
dec  e
jr   50EC
dec  h
inc  e
inc  c
jr   50F3
ld   c,54
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
ld   d,l
ld   d,(hl)
ld   (hl),b
ld   l,l
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   e,b
ld   l,(hl)
ld   d,(hl)
ld   d,(hl)
ld   d,(hl)
ld   e,d
ld   c,e
ld   c,d
ld   e,e
ld   bc,606F
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
ld   e,e
ld   (bc),a
ld   l,a
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
ld   e,e
inc  bc
ld   l,a
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
cpl  
cpl  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   e,h
ld   c,e
ld   c,d
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   c,a
ld   l,4B
ld   c,h
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,(hl)
call CDCD
call CDCD
call CDCD
call C98C
jp   z,8C8C
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
set  1,h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  h
adc  a,D7
rst  10
rst  10
rst  10
rst  10
rst  10
rst  10
rst  10
rst  10
rst  08
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ret  nc
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
pop  de
jp   nc,2F2F
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
-    
call nc,7C7C
ld   a,h
ld   a,h
ld   a,h
ld   a,h
cpl  
cpl  
push de
sub  a,7D
ld   a,l
ld   a,l
ld   a,l
cpl  
cpl  
cpl  
cpl  
ret  c
cpl  
ld   a,e
ld   a,e
ld   a,e
ld   a,e
cpl  
cpl  
cpl  
cpl  
ret  c
cpl  
ld   a,h
ld   a,h
ld   a,h
ld   a,h
cpl  
cpl  
cpl  
cpl  
ret  c
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ret  c
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   a,h
ld   a,h
ld   a,h
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,h
ld   a,l
ld   a,l
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,l
cpl  
cpl  
cpl  
reti 
cpl  
cpl  
cpl  
cpl  
cpl  
ld   a,e
or   a
cp   b
reti 
or   a
cpl  
ld   a,h
ld   a,h
ld   a,h
ld   a,h
ld   a,h
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
ld   a,l
rst  38
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   e,c
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   l,c
ld   c,c
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   c,d
ld   e,d
ld   e,d
ld   e,d
ld   e,d
ld   e,d
ld   e,d
add  l
add  l
add  l
add  l
add  l
add  l
add  l
add  l
ld   e,d
ld   e,d
jr   c,526B
jr   c,528E
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
ld   l,d
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
ld   b,a
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,b
ld   c,c
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,0A
dec  de
ld   (de),a
jr   52BC
rra  
inc  e
inc  h
dec  d
ld   e,12
<corrupted stop>
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,e
ld   de,1012
ld   de,2C54
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,l
ld   d,(hl)
ld   d,(hl)
ld   e,d
inc  l
inc  l
inc  l
ld   (hl),l
ld   e,b
ld   l,h
ld   e,b
ld   l,h
ld   l,(hl)
ld   e,d
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   e,e
cpl  
cpl  
ld   e,h
inc  l
inc  l
inc  l
ld   e,e
sub  b
ld   l,a
sub  c
ld   l,a
sub  d
ld   e,h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   e,e
cpl  
cpl  
ld   e,h
inc  l
inc  l
inc  l
ld   (hl),c
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
dec  l
ld   c,a
ld   c,a
ld   l,2C
inc  l
inc  l
ld   e,e
sub  e
ld   l,a
sub  h
ld   l,a
sub  l
ld   e,h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,0A
dec  de
ld   (de),a
jr   5345
inc  l
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,2C
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,b
ld   d,c
ld   d,c
ld   d,c
ld   d,c
ld   d,d
inc  l
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
inc  l
ld   d,e
ld   de,1012
ld   de,2C54
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   d,l
ld   d,(hl)
ld   d,(hl)
ld   e,d
inc  l
inc  l
inc  l
ld   (hl),l
ld   e,b
ld   l,h
ld   e,b
ld   l,h
ld   l,(hl)
ld   e,d
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   e,e
cpl  
cpl  
ld   e,h
inc  l
inc  l
inc  l
ld   e,e
sub  b
ld   l,a
sub  c
ld   l,a
sub  d
ld   e,h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
ld   e,e
cpl  
cpl  
ld   e,h
inc  l
inc  l
inc  l
ld   (hl),c
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),e
ld   (hl),d
ld   (hl),h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
dec  l
ld   c,a
ld   c,a
ld   l,2C
inc  l
inc  l
ld   e,e
sub  e
ld   l,a
sub  h
ld   l,a
sub  l
ld   e,h
inc  l
inc  l
ld   c,e
ld   c,d
inc  l
inc  l
dec  d
ld   e,12
<corrupted stop>
inc  l
inc  l
dec  l
ld   c,a
ld   l,e
ld   c,a
ld   l,e
ld   c,a
ld   l,2C
inc  l
ld   c,e
ld   c,h
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,l
ld   c,(hl)
adc  (hl)
or   d
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   e
jr   nc,5404
ld   sp,3131
ld   sp,8E32
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   b,b
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,d
ld   b,c
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),11
ld   (de),a
<corrupted stop>
cpl  
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
inc  sp
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
dec  (hl)
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
jr   nc,54A4
ld   sp,3131
ld   sp,8E32
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),15
ld   (de),a
rla  
ld   c,1C
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
ld   (hl),2F
cpl  
cpl  
cpl  
cpl  
scf  
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
inc  sp
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
dec  (hl)
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
jr   c,54FD
add  hl,sp
add  hl,sp
add  hl,sp
ldd  a,(hl)
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
adc  (hl)
or   b
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   l
dec  hl
dec  sp
cpl  
cpl  
cpl  
cpl  
inc  a
adc  (hl)
or   c
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
cpl  
or   h
dec  hl
dec  a
ld   a,3E
ld   a,3E
ccf  
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
add  h
add  a
add  a
adc  h
add  a
add  a
adc  h
add  a
add  a
adc  h
add  a
add  a
add  (hl)
rlca 
rlca 
ld   e,1E
ld   e,1E
ld   e,79
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  b
rlca 
rlca 
or   h
or   l
cp   e
ld   l,BC
ld   a,c
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  b
rlca 
rlca 
cp   a
cp   a
cp   a
cp   a
cp   a
adc  c
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  e
rlca 
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   b,06
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
ld   d,16
rlca 
rlca 
rlca 
rlca 
rlca 
rlca 
add  h
add  a
add  a
adc  h
add  a
add  a
adc  h
add  a
add  a
adc  h
add  a
add  a
add  (hl)
rlca 
rlca 
ld   e,1E
ld   e,1E
ld   e,79
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  b
rlca 
rlca 
cp   l
or   d
ld   l,BE
ld   l,79
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  l
cpl  
cpl  
adc  b
rlca 
rlca 
cp   a
cp   a
cp   a
cp   a
cp   a
adc  c
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  (hl)
adc  d
adc  d
adc  e
rlca 
ld   bc,0101
ld   bc,0101
ld   (bc),a
ld   (bc),a
inc  bc
inc  bc
ld   bc,0101
ld   bc,0202
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
jr   562F
ld   hl,473E
ld   a,a
ld   a,(ff00+c)
cp   a,12
ld   e,12
ld   e,12
ld   e,7E
ld   a,(hl)
rst  38
add  e
rst  38
add  c
rst  38
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
jr   564F
ld   hl,473E
ld   a,a
inc  b
-    
ld   (bc),a
cp   a,02
cp   a,07
-    
rlca 
-    
rra  
rst  38
rst  38
rst  38
rst  38
ld   a,(0000)
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
jr   5673
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,FFFF
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
inc  bc
inc  bc
dec  b
inc  b
inc  bc
inc  bc
nop  
nop  
jr   5698
inc  l
inc  h
ld   a,(de)
ld   a,(de)
ld   (4008),sp
ld   b,b
rlca 
rlca 
jr   56AB
and  b
cp   a
dec  sp
ccf  
ld   a,h
ld   b,h
ld   a,h
ld   b,h
<corrupted stop>
ld   (bc),a
ld   (bc),a
ld   (ff00+E0),a
jr   5694
dec  b
-    
adc  h
-    
ld   a,b
ld   c,b
ld   l,h
ld   (hl),h
nop  
nop  
rlca 
rlca 
jr   56C9
jr   nz,56EB
jr   nc,56ED
rra  
dec  e
ld   a,22
ld   a,22
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
nop  
nop  
ret  nz
ret  nz
ld   (ff00+E0),a
ld   (ff00+E0),a
nop  
nop  
ld   a,h
ld   a,h
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   a,h
ld   a,h
ld   h,b
ld   h,b
ld   h,b
ld   h,b
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   h,b
ld   h,b
inc  a
inc  a
ld   c,0E
ld   c,(hl)
ld   c,(hl)
inc  a
inc  a
nop  
nop  
rlca 
rlca 
rra  
jr   5727
jr   nz,576A
ld   c,a
ld   a,a
ld   e,a
ld   (hl),b
ld   (hl),b
and  d
and  d
or   b
or   b
inc  b
inc  b
rlca 
inc  b
inc  b
inc  b
inc  b
dec  c
inc  b
dec  c
inc  b
inc  b
inc  b
inc  b
inc  bc
ld   (bc),a
ld   e,a
ld   a,a
add  hl,sp
jr   nc,5784
ld   h,d
ei   
or   d
rst  38
and  b
rst  38
jp   nz,547F
ld   a,a
ld   e,h
nop  
nop  
nop  
nop  
nop  
nop  
inc  bc
inc  bc
inc  b
inc  b
ld   (0908),sp
add  hl,bc
inc  b
inc  b
ld   e,a
ld   a,a
add  hl,sp
jr   nc,57A4
ld   h,d
ei   
or   d
rst  38
and  b
rst  38
jp   nz,547F
ld   a,a
ld   e,h
jr   572E
inc  b
-    
ld   (bc),a
cp   a,02
cp   a,07
-    
rlca 
-    
rst  38
rst  38
rst  38
ld   a,(3F20)
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   (ff00+BF),a
ld   (ff00+BF),a
ld   hl,sp+FF
ld   a,a
ld   a,a
ld   a,a
ld   e,a
rst  38
ld   de,FFFF
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
add  b
add  b
ret  nz
ld   b,b
nop  
nop  
nop  
nop  
nop  
nop  
inc  b
inc  b
ld   (1C08),sp
inc  d
inc  d
inc  d
ld   (1808),sp
rra  
jr   nz,57C7
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   (ff00+BF),a
ld   (ff00+BF),a
ld   a,a
ld   a,a
ld   a,a
ld   e,a
-    
ld   b,h
rst  38
ld   b,h
rst  38
rst  38
ld   (hl),a
ld   de,11FF
rst  38
rst  38
-    
ld   b,h
rst  38
ld   b,h
nop  
nop  
nop  
nop  
nop  
nop  
jr   nz,57CC
<corrupted stop>
jr   c,57D8
jr   z,57DA
sub  b
sub  b
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   a,(hl)
ld   a,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
nop  
nop  
ld   a,(hl)
ld   a,(hl)
jr   57E2
jr   57E4
jr   57E6
jr   57E8
jr   57EA
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
xor  a,B4
or   h
ld   h,h
ld   h,h
inc  a
inc  a
ld   l,2E
daa  
daa  
ld   (hl),b
ld   (hl),b
-    
sbc  h
rst  30
sbc  a
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,0101
ld   bc,0202
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ccf  
ld   l,7F
ld   h,e
rst  38
sbc  b
rst  30
rra  
rst  30
inc  e
rst  30
rst  10
inc  (hl)
ccf  
xor  h
cp   a
inc  bc
inc  bc
ld   bc,0101
ld   bc,0000
nop  
nop  
ld   b,06
dec  b
dec  b
rlca 
rlca 
rst  38
xor  (hl)
rst  38
inc  hl
rst  38
jr   5822
sbc  a
rst  30
sbc  h
ld   (hl),a
ld   d,a
inc  (hl)
ccf  
ld   l,h
ld   a,a
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,0101
ld   bc,0202
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ccf  
cpl  
ld   a,a
ld   a,h
rst  30
sbc  h
di   
rra  
ld   a,(ff00+1F)
ld   a,(ff00+DF)
jr   nc,5891
and  b
cp   a
rst  38
-    
rst  38
ld   a,EF
jr   c,582A
ld   hl,sp+0F
ei   
ld   c,FA
inc  c
-    
inc  b
-    
ld   (ff00+20),a
ld   (ff00+20),a
ld   (ff00+20),a
ret  nz
ld   b,b
add  b
add  b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,0101
ld   bc,0202
ld   (bc),a
ld   (bc),a
ccf  
cpl  
ccf  
inc  a
ld   (hl),a
ld   e,h
di   
sbc  a
ld   a,(ff00+1F)
ld   a,(ff00+1F)
ld   a,(ff00+FF)
jr   nz,58D3
rst  38
-    
rst  38
ld   a,EF
jr   c,586A
ld   sp,hl
ld   c,FA
ld   c,FA
inc  c
-    
inc  b
-    
ret  nz
ld   b,b
ret  nz
ld   b,b
ret  nz
ld   b,b
add  b
add  b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rst  30
inc  e
rst  30
inc  (hl)
rst  30
cp   a
ld   l,h
ld   a,a
<corrupted stop>
ld   d,b
ld   e,a
ldd  (hl),a
ccf  
pop  af
rst  38
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   d,(hl)
ld   d,(hl)
ld   a,(hl)
ld   a,(hl)
ld   l,(hl)
ld   l,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
nop  
nop  
inc  a
inc  a
jr   58F2
jr   58F4
jr   58F6
jr   58F8
inc  a
inc  a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   b,b
ld   a,a
ret  nz
rst  38
jr   nz,5949
ldi  (hl),a
ccf  
ld   de,721F
ld   a,(hl)
cp   a
cp   a
rst  38
rst  38
rlca 
rlca 
ld   b,07
ld   b,07
ld   b,07
rlca 
rlca 
nop  
nop  
nop  
nop  
nop  
nop  
ret  nz
rst  38
nop  
rst  38
nop  
rst  38
ld   (bc),a
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   b,b
ld   a,a
ret  nz
rst  38
jr   nz,5989
jr   nz,598B
ld   de,721F
ld   a,(hl)
rst  38
rst  38
rst  38
rst  38
ld   (bc),a
cp   a,02
cp   a,04
-    
inc  b
-    
adc  b
ld   hl,sp+4E
ld   a,(hl)
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
add  b
add  b
ld   b,b
ld   b,b
nop  
nop  
nop  
nop  
nop  
nop  
rlca 
rlca 
nop  
nop  
nop  
nop  
rst  38
nop  
-    
ld   (bc),a
call 0932
or   a,08
rst  30
nop  
rst  38
nop  
nop  
nop  
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
-    
inc  bc
call z,0833
rst  30
ld   a,h
ld   b,h
ccf  
ccf  
<corrupted stop>
<corrupted stop>
ld   (de),a
rra  
add  hl,de
rra  
ccf  
ccf  
ld   a,3E
adc  a,F2
adc  (hl)
jp   c,F909
add  hl,bc
ld   sp,hl
ld   c,(hl)
cp   a,98
ld   hl,sp+FC
-    
ld   a,h
ld   a,h
rlca 
rlca 
rra  
jr   59F7
jr   nz,5A3A
ld   c,a
ld   a,a
ld   e,a
ld   (hl),b
ld   (hl),b
and  d
and  d
or   b
or   b
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   h,(hl)
ld   h,(hl)
halt 
halt 
ld   e,(hl)
ld   e,(hl)
ld   c,(hl)
ld   c,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
nop  
nop  
jr   59F0
jr   59F2
jr   59F4
jr   59F6
nop  
nop  
jr   59FA
nop  
nop  
ld   (de),a
ld   e,12
ld   e,12
ld   e,12
ld   e,7E
ld   a,(hl)
cp   a
add  e
rst  38
add  c
rst  38
rst  38
nop  
nop  
ld   (ff00+E0),a
jr   59F2
inc  b
-    
inc  c
-    
ld   hl,sp+C8
inc  l
inc  (hl)
ld   l,32
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
inc  l
inc  l
jr   5A2A
nop  
nop  
nop  
nop  
ld   (hl),36
ld   e,a
ld   c,c
ld   e,a
ld   b,c
ld   a,a
ld   b,c
ld   a,22
inc  e
inc  d
ld   (FE08),sp
ld   (bc),a
-    
dec  b
-    
dec  b
rst  38
rra  
rst  38
-    
rst  38
cp   a,EF
jr   c,5A22
add  hl,sp
nop  
inc  b
nop  
inc  b
nop  
inc  b
ld   bc,0105
dec  b
inc  bc
rlca 
ld   b,06
inc  c
inc  c
jp   z,C8C0
ret  nz
jp   z,88C0
add  b
adc  b
add  a
ld   (0A00),sp
nop  
ld   (6F00),sp
inc  de
cpl  
inc  de
ld   l,a
inc  de
cpl  
ld   de,D12D
inc  l
<corrupted stop>
<corrupted stop>
<corrupted stop>
jr   nz,5A07
jr   nz,5A09
jr   nz,5A0B
and  b
and  b
and  b
ld   (ff00+E0),a
ld   h,b
ld   h,b
jr   nc,5AA4
ld   (08A8),sp
jr   5A81
xor  b
ld   (0848),sp
xor  b
ld   (0818),sp
xor  b
ld   (0048),sp
cp   a,00
rst  38
ld   a,a
rst  38
ld   a,a
pop  bc
ld   a,a
pop  bc
ld   a,a
-    
ld   a,a
pop  bc
ld   bc,00FF
nop  
nop  
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
nop  
nop  
rst  38
nop  
<corrupted stop>
dec  bc
dec  bc
rlca 
inc  b
rlca 
inc  b
inc  bc
ld   (bc),a
ld   bc,0001
nop  
nop  
nop  
or   h
or   h
-    
-    
cp   h
cp   h
xor  a,6E
rst  20
daa  
ld   a,(ff00+10)
-    
sbc  h
ld   (hl),a
ld   e,a
nop  
nop  
nop  
nop  
rlca 
rlca 
rra  
jr   5B0C
jr   nz,5B4E
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
nop  
nop  
nop  
nop  
nop  
nop  
add  b
add  b
ret  nz
ld   b,b
ret  nz
ld   b,b
ret  nz
ld   b,b
add  b
add  b
ld   (bc),a
inc  bc
dec  b
inc  b
rlca 
inc  b
inc  b
rlca 
inc  b
rlca 
inc  b
ld   b,04
dec  b
inc  b
rlca 
adc  a,FA
inc  c
-    
ld   (08F8),sp
ld   hl,sp+08
ld   hl,sp+08
ld   hl,sp+08
ld   hl,sp+88
ld   hl,sp+00
inc  a
nop  
ld   a,(hl)
<corrupted stop>
inc  h
jp   C324
inc  h
jp   C324
inc  (hl)
jp   3C00
nop  
ld   h,(hl)
nop  
rst  20
inc  l
jp   C33C
inc  a
jp   423C
jr   5B8A
nop  
nop  
nop  
nop  
nop  
nop  
jr   nz,5B4C
sub  b
sub  b
cp   b
xor  b
xor  b
xor  b
<corrupted stop>
ld   a,(bc)
<corrupted stop>
ld   (0402),sp
nop  
inc  b
nop  
inc  b
nop  
inc  b
nop  
inc  b
nop  
inc  b
rla  
ld   d,b
jr   z,5BA8
ldi  a,(hl)
ld   h,b
jr   z,5BAC
ldi  a,(hl)
ld   h,b
jr   z,5BB0
jr   z,5BB9
ld   l,b
ld   h,b
sbc  a,2B
ld   l,17
ld   l,(hl)
rla  
ld   l,17
ld   l,(hl)
rla  
ld   l,17
ld   l,D7
ld   l,17
sbc  b
ld   c,b
or   b
ld   d,b
and  b
ld   h,b
and  b
jr   nz,5B0D
jr   nz,5B0F
jr   nz,5B11
jr   nz,5B13
jr   nz,5B7D
xor  b
ld   (0818),sp
xor  b
ld   (0848),sp
cp   b
ld   (083F),sp
cp   a
add  hl,bc
ld   a,a
nop  
ld   a,a
nop  
rst  38
ld   a,(hl)
rst  38
ld   a,(hl)
pop  bc
ld   a,(hl)
pop  bc
ld   a,(hl)
-    
ld   a,(hl)
pop  bc
nop  
rst  38
nop  
nop  
nop  
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
nop  
jr   c,5BE0
inc  (hl)
inc  h
inc  a
inc  h
ccf  
daa  
inc  a
daa  
inc  a
daa  
ccf  
cpl  
scf  
inc  a
rla  
inc  d
rla  
rra  
inc  e
rra  
ld   a,(ff00+FF)
nop  
rst  38
ld   (bc),a
rst  38
rst  38
rst  38
cp   a
and  b
cp   a
and  b
cp   a
cp   b
ld   a,a
ld   a,a
cpl  
cpl  
ld   a,a
ld   a,a
rst  30
sbc  h
rst  30
sbc  h
-    
dec  b
-    
dec  b
-    
dec  e
rst  38
rst  38
rst  30
-    
rst  38
cp   a,EF
jr   c,5BD2
jr   c,5BE6
ld   bc,0101
ld   bc,0201
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
inc  (hl)
jp   433C
inc  a
ld   b,e
jr   5C72
jr   5C74
ld   (0876),sp
ld   (hl),08
inc  (hl)
jr   5C3C
jr   5C3C
jr   5C3E
ld   (0034),sp
jr   5C1F
ld   (0800),sp
nop  
ld   (0000),sp
rrca 
rrca 
rra  
<corrupted stop>
jr   nz,5C9D
ld   b,b
ld   (hl),e
ld   b,e
ld   h,a
ld   c,h
ccf  
jr   z,5C35
nop  
add  b
add  b
call c,3E5C
ldi  (hl),a
ldd  (hl),a
ld   (ff00+c),a
or   c
pop  bc
jp   274B
ld   a,h
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   (ff00+E0),a
ret  nc
<corrupted stop>
ret  nc
ld   (ff00+20),a
ld   e,h
ld   d,b
ld   a,h
ld   d,b
add  hl,sp
jr   nc,5CD7
ld   c,h
xor  a,82
ret  nz
add  h
ld   h,b
ld   b,e
ld   sp,1F26
inc  a
cp   e
ld   h,d
pop  af
ld   b,c
ld   h,c
ld   b,c
jp   F703
inc  b
xor  a,08
sbc  h
ld   h,b
sub  b
<corrupted stop>
ld   (1818),sp
inc  a
ld   h,h
ld   a,(ff00+c)
jp   nz,60E3
add  hl,sp
jr   nz,5C75
nop  
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
nop  
rst  38
nop  
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
nop  
rst  38
rst  38
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
jr   c,5CDE
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   c,0E
ld   de,1111
ld   de,1212
di   
rra  
ld   a,(ff00+3F)
ld   a,(ff00+BF)
ld   h,b
ld   a,a
<corrupted stop>
ld   d,b
ld   e,a
jr   nc,5D11
pop  af
rst  38
rst  08
ei   
inc  c
-    
ld   (08F8),sp
ld   hl,sp+08
ld   hl,sp+08
ld   hl,sp+08
ld   hl,sp+88
ld   hl,sp+4E
ld   a,d
ret  
reti 
add  hl,bc
ld   sp,hl
ld   c,FE
ld   c,b
ld   hl,sp+98
ld   hl,sp+FC
-    
ld   a,h
ld   a,h
and  b
cp   a
ld   b,b
ld   a,a
ld   (ff00+FF),a
jr   nz,5D3B
ld   de,721F
ld   a,(hl)
rst  38
rst  38
rst  38
rst  38
nop  
inc  a
nop  
inc  e
nop  
inc  e
nop  
jr   5D0D
ld   (0000),sp
nop  
nop  
nop  
nop  
nop  
rst  38
nop  
xor  e
nop  
ld   d,l
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
dec  d
nop  
jr   5D29
dec  d
nop  
ld   (de),a
nop  
dec  d
nop  
jr   5D31
dec  d
nop  
ld   (de),a
ld   b,b
ld   b,b
ld   b,b
ret  nz
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ret  nz
ld   b,b
ld   b,b
ld   b,b
ld   b,b
ld   c,32
ld   c,32
ld   c,32
ld   c,32
rrca 
inc  sp
adc  a
or   e
adc  a,F3
xor  a,73
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
add  b
add  b
ret  nz
ld   b,b
nop  
nop  
nop  
nop  
add  b
add  b
ld   b,a
ld   b,a
rra  
jr   5DAE
jr   nz,5DF0
ld   b,b
ld   a,a
ld   b,b
ld   a,a
ld   b,b
cp   a
and  b
cp   a
and  b
cp   a
cp   b
ld   a,a
ld   a,a
ccf  
ccf  
ld   (hl),a
ld   a,h
rst  30
sbc  h
ld   a,(ff00+c)
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,F2
and  a,00
nop  
ld   bc,0101
ld   bc,0101
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   bc,F301
sbc  a
ld   a,(ff00+1F)
ld   a,(ff00+3F)
ld   (ff00+BF),a
ld   (hl),b
ld   a,a
<corrupted stop>
ld   d,b
ld   e,a
ld   sp,3E3F
ldi  (hl),a
rra  
rra  
<corrupted stop>
<corrupted stop>
ld   (de),a
rra  
add  hl,de
rra  
ccf  
ccf  
ld   a,3E
ld   (de),a
ld   e,12
ld   e,12
ld   e,12
ld   e,7E
ld   a,(hl)
rst  38
add  e
rst  38
add  c
rst  38
rst  38
ld   bc,0101
ld   bc,0101
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   bc,0001
nop  
ld   h,b
ld   (ff00+80),a
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
add  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
rlca 
inc  b
dec  bc
add  hl,bc
dec  bc
ld   a,(bc)
rrca 
ld   a,(bc)
rla  
ld   (de),a
rla  
inc  e
inc  d
rla  
rla  
inc  d
cpl  
inc  h
nop  
nop  
ld   (hl),b
ld   (hl),b
adc  a
adc  a
sbc  b
sbc  a
ld   (ff00+FF),a
ld   a,(ff00+9F)
ld   a,b
ld   d,a
ld   a,a
ld   c,h
dec  sp
cpl  
ret  nc
rst  18
ld   a,(ff00+FF)
ret  nz
rst  38
ret  nz
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   hl,sp+F8
ld   a,(ff00+F2)
pop  hl
push af
-    
ld   a,(ff00+c)
and  a,FF
rst  38
rst  38
add  c
jp   DF81
add  l
rst  18
add  l
rst  38
cp   l
rst  38
add  c
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rra  
rra  
rrca 
ld   c,a
add  a
xor  a
rst  00
ld   c,a
ld   h,a
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  38
rst  38
rst  38
nop  
nop  
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   c,a
ld   h,a
ld   a,(ff00+c)
and  a,F5
-    
ld   a,(ff00+c)
pop  hl
ld   hl,sp+F0
rst  38
ld   hl,sp+FF
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
rst  38
rst  38
nop  
rst  38
nop  
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
ld   c,a
ld   h,a
xor  a
rst  00
ld   c,a
add  a
rra  
rrca 
rst  38
rra  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
nop  
nop  
nop  
rst  28
rst  20
rst  08
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
inc  h
inc  c
rst  20
rst  08
nop  
rst  28
nop  
nop  
rst  38
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rlca 
rlca 
jr   5F07
ld   hl,473E
ld   a,a
ld   e,a
ld   a,a
add  hl,sp
jr   nc,5F6C
ld   h,d
ei   
or   d
ld   (ff00+E0),a
jr   5EF0
add  h
ld   a,h
ld   (ff00+c),a
cp   a,FA
cp   a,9C
inc  c
sbc  a,46
rst  18
ld   c,l
rst  38
and  b
rst  38
jp   nz,547F
ld   a,a
ld   e,h
ccf  
ld   l,3F
inc  hl
rra  
jr   5F1A
rlca 
rst  38
dec  b
rst  38
ld   b,e
cp   a,2A
cp   a,3A
-    
ld   (hl),h
-    
call nz,18F8
ld   (ff00+E0),a
rlca 
rlca 
rra  
jr   5F67
jr   nz,5FAA
ld   c,a
ld   a,a
ld   e,a
ld   (hl),b
ld   (hl),b
and  d
and  d
or   b
or   b
ld   (ff00+E0),a
ld   hl,sp+18
ld   a,h
inc  b
cp   a,F2
cp   a,FA
ld   c,0E
ld   b,l
ld   b,l
dec  c
dec  c
or   h
or   h
ld   h,h
ld   h,h
inc  a
inc  a
ld   l,2E
daa  
daa  
<corrupted stop>
inc  c
inc  c
inc  bc
inc  bc
dec  l
dec  l
ld   h,26
inc  a
inc  a
ld   (hl),h
ld   (hl),h
-    
-    
ld   (3008),sp
jr   nc,5F23
ret  nz
cpl  
inc  h
cpl  
inc  h
cpl  
inc  h
cpl  
inc  h
ld   h,a
ld   a,h
cp   h
and  a
rst  38
-    
dec  de
dec  de
nop  
nop  
nop  
nop  
ld   bc,0101
ld   bc,0303
inc  bc
inc  bc
inc  bc
ld   (bc),a
rlca 
inc  b
inc  b
rlca 
rlca 
inc  b
rlca 
inc  b
inc  b
inc  b
ld   b,06
dec  b
dec  b
dec  b
dec  b
ld   b,06
rlca 
inc  b
rlca 
inc  b
inc  b
rlca 
inc  b
inc  b
inc  b
inc  b
rlca 
rlca 
rlca 
rlca 
ld   b,06
ld   b,06
ld   b,06
inc  b
inc  b
rlca 
rlca 
dec  b
dec  b
inc  bc
inc  bc
dec  b
dec  b
ld   c,0E
rrca 
rra  
ld   bc,0110
<corrupted stop>
<corrupted stop>
ld   (0701),sp
inc  b
add  hl,bc
nop  
rrca 
ld   (F801),sp
pop  af
ld   c,(hl)
pop  bc
ld   (bc),a
rst  00
adc  h
cp   l
add  h
xor  l
ld   h,d
rst  08
ld   a,(hl)
cp   a,EC
sub  b
rst  28
sbc  a
ld   a,(DAF7)
rst  20
cp   l
cp   l
or   l
xor  l
jp   nc,7FEF
ld   a,a
ld   hl,sp+F8
jr   5FD0
jr   c,5F72
cp   b
ld   (10B0),sp
ld   (ff00+E0),a
ret  nc
jr   nc,5FE3
ld   a,(ff00+18)
jr   6027
jr   nc,6059
ld   h,b
ret  nz
ret  nz
ret  nz
ret  nz
rst  38
rst  38
add  e
add  e
ld   h,b
ld   h,d
ld   a,(bc)
nop  
ld   (0800),sp
rlca 
ld   (0800),sp
ld   bc,F1F8
ld   hl,sp+F1
ld   (6C01),sp
<corrupted stop>
<corrupted stop>
pop  de
inc  l
ld   de,90AC
rst  28
sbc  a
rst  28
sbc  a
-    
sub  b
jr   603E
inc  c
inc  c
ld   b,C6
inc  bc
jp   0303
rst  38
rst  38
pop  bc
pop  bc
ld   b,46
nop  
inc  b
nop  
inc  c
ld   (bc),a
<corrupted stop>
<corrupted stop>
<corrupted stop>
<corrupted stop>
<corrupted stop>
<corrupted stop>
ld   c,h
inc  c
ld   c,h
add  hl,bc
ld   c,c
dec  bc
ld   c,e
ld   a,(bc)
ld   c,d
<corrupted stop>
ld   (de),a
ld   d,d
<corrupted stop>
ld   a,(hl)
inc  sp
ld   a,(hl)
inc  sp
cp   (hl)
sub  e
cp   a,D3
ld   a,(hl)
ld   d,e
ld   a,0B
ld   a,(hl)
ld   c,e
ld   a,0B
and  b
jr   nz,5FF7
jr   nc,6001
ld   c,b
sbc  b
ld   c,b
sbc  b
ld   c,b
sbc  b
ld   c,b
sbc  b
ld   c,b
sbc  b
ld   c,b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,0101
ld   bc,0202
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
nop  
ld   bc,0202
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
inc  bc
ld   (bc),a
inc  bc
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
ld   (bc),a
inc  bc
ld   (bc),a
ld   (bc),a
ld   b,06
ld   c,0A
ld   c,0A
dec  bc
ld   a,(bc)
dec  bc
ld   a,(bc)
rrca 
ld   a,(bc)
ld   a,(bc)
ld   a,(bc)
ld   b,06
ld   a,(bc)
ld   a,(bc)
ld   a,(de)
ld   (de),a
rra  
rra  
nop  
nop  
nop  
nop  
rra  
rra  
ccf  
jr   nz,613C
ld   b,a
ld   a,h
ld   c,h
ld   a,h
ld   c,h
ld   a,h
ld   c,h
nop  
nop  
nop  
nop  
ld   (ff00+E0),a
ld   a,(ff00+30)
ld   hl,sp+18
ld   hl,sp+98
ld   hl,sp+98
ld   hl,sp+98
ld   a,a
ld   c,a
ld   a,a
ld   b,b
ld   a,a
ld   c,a
ld   a,h
ld   c,h
ld   a,h
ld   c,h
ld   a,h
ld   a,h
nop  
nop  
nop  
nop  
ld   hl,sp+98
ld   hl,sp+18
ld   hl,sp+98
ld   hl,sp+98
ld   hl,sp+98
ld   hl,sp+F8
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,h
ld   a,h
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   a,h
ld   a,h
nop  
nop  
nop  
nop  
ld   a,(hl)
ld   a,(hl)
ld   h,b
ld   h,b
ld   a,h
ld   a,h
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   a,(hl)
ld   a,(hl)
nop  
nop  
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   c,(hl)
ld   c,(hl)
inc  a
inc  a
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   h,(hl)
ld   h,(hl)
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,(hl)
ld   h,(hl)
inc  a
inc  a
nop  
nop  
nop  
nop  
ld   b,(hl)
ld   b,(hl)
ld   l,(hl)
ld   l,(hl)
ld   a,(hl)
ld   a,(hl)
ld   d,(hl)
ld   d,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   a,(hl)
ld   a,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
nop  
nop  
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,FF01
ld   bc,FF01
rst  38
rst  38
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   a,(ff00+F0)
ld   a,(ff00+B0)
ld   a,(ff00+B0)
ld   a,(ff00+F0)
nop  
nop  
nop  
nop  
rlca 
rlca 
jr   61AB
jr   nz,61CD
jr   nc,61CF
jr   61A9
ccf  
inc  l
ld   a,e
ld   c,a
ld   (hl),b
ld   e,a
sub  b
sbc  a
sub  b
sbc  a
ld   (hl),b
ld   a,a
ld   de,3E1F
ld   a,3E
ld   a,00
nop  
ld   a,h
ld   a,h
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   a,h
ld   a,h
ld   l,b
ld   l,b
ld   h,(hl)
ld   h,(hl)
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
ld   h,(hl)
inc  a
inc  a
nop  
nop  
nop  
nop  
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   h,b
ld   a,(hl)
ld   a,(hl)
nop  
nop  
nop  
nop  
inc  a
inc  a
ld   h,(hl)
ld   h,(hl)
ld   h,b
ld   h,b
ld   l,(hl)
ld   l,(hl)
ld   h,(hl)
ld   h,(hl)
ld   a,3E
nop  
nop  
nop  
xor  a,00
nop  
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
ld   bc,0200
nop  
ld   (bc),a
nop  
inc  b
nop  
ld   (0800),sp
nop  
stop
<corrupted stop>
add  b
ret  nz
ld   b,b
ret  nz
ld   b,b
ld   (ff00+20),a
jr   nc,625E
jr   nc,6260
jr   c,625A
jr   623C
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
inc  bc
nop  
inc  bc
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   (08F8),sp
jr   6239
xor  b
ld   (0048),sp
add  b
nop  
add  b
nop  
add  b
nop  
add  b
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
jr   nz,6247
jr   nz,6249
jr   nz,626A
jr   nz,624D
ld   b,b
nop  
ld   b,b
nop  
ld   b,b
nop  
ld   b,b
inc  e
inc  h
inc  c
inc  (hl)
inc  c
inc  (hl)
inc  b
-    
ld   c,32
ld   c,32
ld   c,32
ld   c,32
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
rra  
nop  
jr   6281
dec  d
nop  
ld   (de),a
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   b,b
ret  nz
ld   b,b
ret  nz
ld   b,b
ld   b,b
ld   b,b
ld   b,b
nop  
ld   (bc),a
nop  
inc  bc
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
ld   (bc),a
nop  
inc  bc
nop  
ld   (bc),a
nop  
ld   (bc),a
ld   (08AF),sp
ld   a,(de)
ld   (08AD),sp
ld   c,a
ld   (08A8),sp
jr   62B9
xor  b
ld   (0048),sp
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   bc,0200
nop  
ld   b,b
dec  d
ld   b,b
dec  d
ld   b,b
dec  d
ld   b,b
dec  d
ret  nz
dec  d
pop  bc
rla  
ld   b,e
ld   d,46
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
rst  38
nop  
ldi  a,(hl)
jr   nz,6335
nop  
dec  e
ld   bc,0009
rlca 
ld   bc,000B
inc  bc
jr   nz,6344
nop  
jr   nz,6363
ld   b,00
ld   a,(bc)
add  b
rla  
nop  
ld   b,01
ld   b,00
inc  b
ld   bc,0005
ld   e,80
dec  bc
nop  
ld   b,80
inc  e
nop  
ld   a,(bc)
<corrupted stop>
ld   de,0104
ld   (bc),a
nop  
inc  b
ld   bc,0006
nop  
<corrupted stop>
nop  
inc  b
<corrupted stop>
nop  
ld   a,(de)
add  b
inc  h
nop  
dec  d
ld   bc,0007
jr   nz,6387
inc  b
nop  
dec  b
<corrupted stop>
nop  
dec  c
<corrupted stop>
nop  
inc  bc
<corrupted stop>
nop  
dec  h
add  b
dec  d
nop  
dec  de
<corrupted stop>
nop  
inc  de
add  b
inc  bc
nop  
inc  e
add  b
add  hl,de
nop  
ld   a,(de)
ld   bc,0006
ld   a,(bc)
jr   nz,639D
nop  
add  hl,bc
jr   nz,63A2
nop  
inc  d
<corrupted stop>
nop  
ld   c,80
ld   d,00
ld   a,(bc)
<corrupted stop>
ld   de,1006
ld   d,00
inc  de
add  b
dec  h
nop  
inc  e
ld   bc,0006
inc  bc
jr   nz,63BE
nop  
ld   c,20
inc  bc
nop  
inc  b
jr   nz,63C6
nop  
inc  bc
jr   nz,63CD
nop  
dec  c
add  b
ld   hl,1300
ld   bc,0007
dec  b
ld   bc,0006
inc  b
ld   bc,0005
ld   b,20
inc  bc
nop  
dec  b
jr   nz,63E2
nop  
inc  e
jr   nz,63E7
nop  
ld   c,80
ld   (de),a
nop  
inc  c
<corrupted stop>
nop  
ld   (bc),a
ld   bc,0008
<corrupted stop>
ld   (1E00),sp
add  b
add  hl,de
nop  
<corrupted stop>
inc  bc
nop  
inc  b
<corrupted stop>
nop  
inc  h
add  b
inc  e
nop  
dec  b
ld   bc,0005
ld   de,0320
nop  
ld   (de),a
add  b
jr   nz,6411
ld   a,(bc)
<corrupted stop>
ld   de,0106
nop  
nop  
inc  b
<corrupted stop>
nop  
inc  b
<corrupted stop>
nop  
ld   (bc),a
<corrupted stop>
nop  
inc  b
<corrupted stop>
nop  
ld   a,(bc)
nop  
nop  
nop  
nop  
nop  
nop  
nop  
ld   c,l
jr   nz,643C
ld   hl,2006
dec  bc
nop  
rlca 
jr   nz,6442
nop  
ld   h,h
stop
ld   de,1006
dec  b
nop  
cpl  
add  b
ld   d,00
rla  
jr   nz,6451
nop  
ld   b,20
ld   b,00
<corrupted stop>
jr   6455
inc  (hl)
ld   bc,0005
ld   bc,0E10
ld   de,1006
jr   nz,6461
ld   a,(bc)
add  b
ld   a,(bc)
nop  
dec  hl
jr   nz,646E
nop  
ld   b,20
dec  b
nop  
dec  b
jr   nz,6476
nop  
ld   a,(bc)
add  b
inc  c
nop  
ld   a,(bc)
ld   bc,0007
ld   (bc),a
<corrupted stop>
nop  
dec  b
<corrupted stop>
nop  
dec  c
add  b
inc  e
nop  
ld   (hl),l
ld   bc,0006
ld   c,80
rra  
nop  
ld   a,(de)
ld   bc,0006
nop  
<corrupted stop>
nop  
dec  b
<corrupted stop>
nop  
inc  b
<corrupted stop>
nop  
inc  bc
<corrupted stop>
nop  
inc  c
add  b
rrca 
nop  
ld   a,(bc)
ld   bc,0007
nop  
<corrupted stop>
nop  
dec  b
add  b
rra  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
<corrupted stop>
nop  
inc  b
ld   (0400),sp
ld   (0008),sp
inc  b
inc  d
<corrupted stop>
<corrupted stop>
inc  d
jr   64F7
nop  
inc  c
inc  b
jr   64E8
inc  d
inc  d
ld   (0404),sp
inc  c
nop  
jr   64F5
nop  
ld   (0C0C),sp
jr   64F7
inc  c
ld   (1800),sp
<corrupted stop>
inc  d
jr   6508
inc  h
ld   h,(hl)
ld   b,c
ld   h,(hl)
dec  a
ld   h,a
and  e
ld   h,(hl)
ld   (hl),c
ld   h,a
-    
ld   h,(hl)
ld   l,h
ld   h,(hl)
cp   h
ld   h,(hl)
inc  l
ld   h,(hl)
ld   c,c
ld   h,(hl)
ld   d,c
ld   h,a
ld   c,c
ld   h,(hl)
ld   c,c
ld   h,(hl)
inc  b
ld   h,a
ld   (hl),d
ld   h,(hl)
call nz,1166
ld   l,b
add  hl,de
ld   l,b
jp   c,E267
ld   h,a
ld   hl,2168
ld   l,b
ld   hl,EA68
ld   h,a
ld   (hl),b
ld   l,a
ld   a,e
ld   l,a
add  (hl)
ld   l,a
sub  c
ld   l,a
sbc  h
ld   l,a
and  a
ld   l,a
or   d
ld   l,a
cp   l
ld   l,a
ret  z
ld   l,a
-    
ld   l,a
sbc  a,6F
jp   hl
ld   l,a
-    
ld   l,a
rst  38
ld   l,a
ld   a,(bc)
ld   (hl),b
dec  d
ld   (hl),b
jr   nz,65C2
ret  
push af
push bc
push de
push hl
ld   a,(DF7F)
cp   a,01
jr   z,65A4
cp   a,02
jr   z,65DD
ld   a,(DF7E)
and  a
jr   nz,65E3
ld   a,(ff00+E4)
and  a
jr   z,657A
xor  a
ld   (DFE0),a
ld   (DFE8),a
ld   (DFF0),a
ld   (DFF8),a
call 6552
call 6A0E
call 6A2E
call 6879
call 6A52
call 6C75
call 6A96
xor  a
ld   (DFE0),a
ld   (DFE8),a
ld   (DFF0),a
ld   (DFF8),a
ld   (DF7F),a
pop  hl
pop  de
pop  bc
pop  af
ret  
call 69F8
xor  a
ld   (DFE1),a
ld   (DFF1),a
ld   (DFF9),a
ld   hl,DFBF
res  7,(hl)
ld   hl,DF9F
res  7,(hl)
ld   hl,DFAF
res  7,(hl)
ld   hl,DFCF
res  7,(hl)
ld   hl,6F1A
call 69C9
ld   a,30
ld   (DF7E),a
ld   hl,65FB
call 698E
jr   658F
ld   hl,65FF
jr   65D3
xor  a
ld   (DF7E),a
jr   6568
ld   hl,DF7E
dec  (hl)
ld   a,(hl)
cp   a,28
jr   z,65D8
cp   a,20
jr   z,65D0
cp   a,18
jr   z,65D8
cp   a,10
jr   nz,658F
inc  (hl)
jr   658F
or   d
-    
add  e
rst  00
or   d
-    
pop  bc
rst  00
ld   a,(DFF1)
cp   a,01
ret  
ld   a,(DFE1)
cp   a,05
ret  
ld   a,(DFE1)
cp   a,07
ret  
nop  
or   l
ret  nc
ld   b,b
rst  00
nop  
or   l
jr   nz,665E
rst  00
nop  
or   (hl)
and  c
add  b
rst  00
ld   a,05
ld   hl,6615
jp   6967
call 69BC
and  a
ret  nz
ld   hl,DFE4
inc  (hl)
ld   a,(hl)
cp   a,02
jp   z,664E
ld   hl,661A
jp   6987
ld   a,03
ld   hl,661F
jp   6967
call 69BC
and  a
ret  nz
xor  a
ld   (DFE1),a
ld   (ff00+10),a
ld   a,08
ld   (ff00+12),a
ld   a,80
ld   (ff00+14),a
ld   hl,DF9F
res  7,(hl)
ret  
nop  
add  b
pop  hl
pop  bc
add  a
nop  
add  b
pop  hl
xor  h
add  a
ld   hl,6662
jp   6967
ld   hl,DFE4
inc  (hl)
ld   a,(hl)
cp   a,04
jr   z,6692
cp   a,0B
jr   z,6698
cp   a,0F
jr   z,6692
cp   a,18
jp   z,6689
ret  
ld   a,01
ld   hl,DFF0
ld   (hl),a
jp   664E
ld   hl,6667
jp   6987
ld   hl,6662
jp   6987
ld   c,b
cp   h
ld   b,d
ld   h,(hl)
add  a
call 6603
ret  z
call 660F
ret  z
call 6609
ret  z
ld   a,02
ld   hl,669E
jp   6967
nop  
or   b
pop  hl
or   b
rst  00
ld   a,07
ld   hl,66B7
jp   6967
call 69BC
and  a
ret  nz
ld   hl,66B7
call 6987
ld   hl,DFE4
inc  (hl)
ld   a,(hl)
cp   a,03
jp   z,664E
ret  
ld   a,80
-    
nop  
call nz,8393
add  e
ld   (hl),e
ld   h,e
ld   d,e
ld   b,e
inc  sp
inc  hl
inc  de
nop  
nop  
inc  hl
ld   b,e
ld   h,e
add  e
and  e
jp   E3D3
rst  38
call 6603
ret  z
call 660F
ret  z
ld   a,06
ld   hl,66DA
jp   6967
call 69BC
and  a
ret  nz
ld   hl,DFE4
ld   c,(hl)
inc  (hl)
ld   b,00
ld   hl,66DF
add  hl,bc
ld   a,(hl)
and  a
jp   z,664E
ld   e,a
ld   hl,66EA
add  hl,bc
ld   a,(hl)
ld   d,a
ld   b,86
ld   c,12
ld   a,e
ld   (ff00+c),a
inc  c
ld   a,d
ld   (ff00+c),a
inc  c
ld   a,b
ld   (ff00+c),a
ret  
dec  sp
add  b
or   d
add  a
add  a
and  d
sub  e
ld   h,d
ld   b,e
inc  hl
nop  
add  b
ld   b,b
add  b
ld   b,b
add  b
call 6603
ret  z
call 660F
ret  z
call 6609
ret  z
ld   a,03
ld   hl,672D
jp   6967
call 69BC
and  a
ret  nz
ld   hl,DFE4
ld   c,(hl)
inc  (hl)
ld   b,00
ld   hl,6732
add  hl,bc
ld   a,(hl)
and  a
jp   z,664E
ld   e,a
ld   hl,6738
add  hl,bc
ld   a,(hl)
ld   d,a
ld   b,87
jr   6722
call 660F
ret  z
ld   a,28
ld   hl,677D
jp   6967
or   a
add  b
sub  b
rst  38
add  e
nop  
pop  de
ld   b,l
add  b
nop  
pop  af
ld   d,h
add  b
nop  
push de
ld   h,l
add  b
nop  
ld   (hl),b
ld   h,(hl)
add  b
ld   h,l
ld   h,l
ld   h,l
ld   h,h
ld   d,a
ld   d,(hl)
ld   d,l
ld   d,h
ld   d,h
ld   d,h
ld   d,h
ld   d,h
ld   b,a
ld   b,(hl)
ld   b,(hl)
ld   b,l
ld   b,l
ld   b,l
ld   b,h
ld   b,h
ld   b,h
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
inc  (hl)
ld   (hl),b
ld   h,b
ld   (hl),b
ld   (hl),b
ld   (hl),b
add  b
sub  b
and  b
ret  nc
ld   a,(ff00+E0)
ret  nc
ret  nz
or   b
and  b
sub  b
add  b
ld   (hl),b
ld   h,b
ld   d,b
ld   b,b
jr   nc,67FD
jr   nz,67EF
jr   nz,67F1
jr   nz,67F3
jr   nz,67F5
jr   nz,67F7
jr   nz,67E9
<corrupted stop>
jr   nc,67FE
adc  d
ld   h,a
jp   6967
ld   a,30
ld   hl,678E
jp   6967
call 69BC
and  a
ret  nz
ld   hl,DFFC
ld   a,(hl)
ld   c,a
cp   a,24
jp   z,6826
inc  (hl)
ld   b,00
push bc
ld   hl,6792
add  hl,bc
ld   a,(hl)
ld   (ff00+22),a
pop  bc
ld   hl,67B6
add  hl,bc
ld   a,(hl)
ld   (ff00+21),a
ld   a,80
ld   (ff00+23),a
ret  
ld   a,20
ld   hl,6786
jp   6967
ld   a,12
ld   hl,6782
jp   6967
call 69BC
and  a
ret  nz
xor  a
ld   (DFF9),a
ld   a,08
ld   (ff00+21),a
ld   a,80
ld   (ff00+23),a
ld   hl,DFCF
res  7,(hl)
ret  
add  b
ldd  a,(hl)
jr   nz,689C
add  a,21
ld   a,(bc)
ld   l,a
call 693E
ld   a,(ff00+04)
and  a,1F
ld   b,a
ld   a,D0
add  b
ld   (DFF5),a
ld   hl,6838
jp   6995
ld   a,(ff00+04)
and  a,0F
ld   b,a
ld   hl,DFF4
inc  (hl)
ld   a,(hl)
ld   hl,DFF5
cp   a,0E
jr   nc,686F
inc  (hl)
inc  (hl)
ld   a,(hl)
and  a,F0
or   b
ld   c,1D
ld   (ff00+c),a
ret  
cp   a,1E
jp   z,691F
dec  (hl)
dec  (hl)
dec  (hl)
jr   6867
ld   a,(DFF0)
cp   a,01
jp   z,68A8
cp   a,02
jp   z,683D
ld   a,(DFF1)
cp   a,01
jp   z,68F3
cp   a,02
jp   z,6854
ret  
add  b
add  b
jr   nz,6835
add  a
add  b
ld   hl,sp+20
sbc  b
add  a
add  b
ei   
jr   nz,6838
add  a
add  b
or   a,20
sub  l
add  a
ld   hl,6EDA
call 693E
ld   hl,6897
ld   a,(hl)
ld   (DFF6),a
ld   a,01
ld   (DFF5),a
ld   hl,6894
jp   6995
ld   a,00
ld   (DFF5),a
ld   hl,689C
ld   a,(hl)
ld   (DFF6),a
ld   hl,6899
jr   68BD
ld   a,01
ld   (DFF5),a
ld   hl,68A1
ld   a,(hl)
ld   (DFF6),a
ld   hl,689E
jr   68BD
ld   a,02
ld   (DFF5),a
ld   hl,68A6
ld   a,(hl)
ld   (DFF6),a
ld   hl,68A3
jr   68BD
ld   hl,DFF4
inc  (hl)
ldi  a,(hl)
cp   a,09
jr   z,68C0
cp   a,13
jr   z,68D1
cp   a,17
jr   z,68E2
cp   a,20
jr   z,691F
ldi  a,(hl)
cp   a,00
ret  z
cp   a,01
jr   z,6915
cp   a,02
jr   z,6919
ret  
inc  (hl)
inc  (hl)
jr   691B
dec  (hl)
dec  (hl)
ld   a,(hl)
ld   (ff00+1D),a
ret  
xor  a
ld   (DFF1),a
ld   (ff00+1A),a
ld   hl,DFBF
res  7,(hl)
ld   hl,DF9F
res  7,(hl)
ld   hl,DFAF
res  7,(hl)
ld   hl,DFCF
res  7,(hl)
ld   hl,6F1A
jr   6963
push hl
ld   (DFF1),a
ld   hl,DFBF
set  7,(hl)
xor  a
ld   (DFF4),a
ld   (DFF5),a
ld   (DFF6),a
ld   (ff00+1A),a
ld   hl,DF9F
set  7,(hl)
ld   hl,DFAF
set  7,(hl)
ld   hl,DFCF
set  7,(hl)
pop  hl
call 69C9
ret  
push af
dec  e
ld   a,(DF71)
ld   (de),a
inc  e
pop  af
inc  e
ld   (de),a
dec  e
xor  a
ld   (de),a
inc  e
inc  e
ld   (de),a
inc  e
ld   (de),a
ld   a,e
cp   a,E5
jr   z,6987
cp   a,F5
jr   z,6995
cp   a,FD
jr   z,699C
ret  
push bc
ld   c,10
ld   b,05
jr   69A1
push bc
ld   c,16
ld   b,04
jr   69A1
push bc
ld   c,1A
ld   b,05
jr   69A1
push bc
ld   c,20
ld   b,04
ldi  a,(hl)
ld   (ff00+c),a
inc  c
dec  b
jr   nz,69A1
pop  bc
ret  
inc  e
ld   (DF71),a
inc  e
dec  a
sla  a
ld   c,a
ld   b,00
add  hl,bc
ld   c,(hl)
inc  hl
ld   b,(hl)
ld   l,c
ld   h,b
ld   a,h
ret  
push de
ld   l,e
ld   h,d
inc  (hl)
ldi  a,(hl)
cp   (hl)
jr   nz,69C7
dec  l
xor  a
ld   (hl),a
pop  de
ret  
push bc
ld   c,30
ldi  a,(hl)
ld   (ff00+c),a
inc  c
ld   a,c
cp   a,40
jr   nz,69CC
pop  bc
ret  
xor  a
ld   (DFE1),a
ld   (DFE9),a
ld   (DFF1),a
ld   (DFF9),a
ld   (DF9F),a
ld   (DFAF),a
ld   (DFBF),a
ld   (DFCF),a
ld   a,FF
ld   (ff00+25),a
ld   a,03
ld   (DF78),a
ld   a,08
ld   (ff00+12),a
ld   (ff00+17),a
ld   (ff00+21),a
ld   a,80
ld   (ff00+14),a
ld   (ff00+19),a
ld   (ff00+23),a
xor  a
ld   (ff00+10),a
ld   (ff00+1A),a
ret  
ld   de,DFE0
ld   a,(de)
and  a
jr   z,6A21
ld   hl,DF9F
set  7,(hl)
ld   hl,6500
call 69A9
jp   hl
inc  e
ld   a,(de)
and  a
jr   z,6A2D
ld   hl,6510
call 69AD
jp   hl
ret  
ld   de,DFF8
ld   a,(de)
and  a
jr   z,6A41
ld   hl,DFCF
set  7,(hl)
ld   hl,6520
call 69A9
jp   hl
inc  e
ld   a,(de)
and  a
jr   z,6A4D
ld   hl,6528
call 69AD
jp   hl
ret  
call 69D6
ret  
ld   hl,DFE8
ldi  a,(hl)
and  a
ret  z
cp   a,FF
jr   z,6A4E
ld   (hl),a
ld   b,a
ld   hl,6530
and  a,1F
call 69AD
call 6B44
call 6A6D
ret  
ld   a,(DFE9)
and  a
ret  z
ld   hl,6AEF
dec  a
jr   z,6A7E
inc  hl
inc  hl
inc  hl
inc  hl
jr   6A75
ldi  a,(hl)
ld   (DF78),a
ldi  a,(hl)
ld   (DF76),a
ldi  a,(hl)
ld   (DF79),a
ldi  a,(hl)
ld   (DF7A),a
xor  a
ld   (DF75),a
ld   (DF77),a
ret  
ld   a,(DFE9)
and  a
jr   z,6AD9
ld   hl,DF75
ld   a,(DF78)
cp   a,01
jr   z,6ADD
cp   a,03
jr   z,6AD9
inc  (hl)
ldi  a,(hl)
cp   (hl)
jr   nz,6AE2
dec  l
ld   (hl),00
inc  l
inc  l
inc  (hl)
ld   a,(DF79)
bit  0,(hl)
jp   z,6AC0
ld   a,(DF7A)
ld   b,a
ld   a,(DFF1)
and  a
jr   z,6ACB
set  2,b
set  6,b
ld   a,(DFF9)
and  a
jr   z,6AD5
set  3,b
set  7,b
ld   a,b
ld   (ff00+25),a
ret  
ld   a,FF
jr   6AD6
ld   a,(DF79)
jr   6AC0
ld   a,(DFF9)
and  a
jr   nz,6AD9
ld   a,(DFF1)
and  a
jr   nz,6AD9
ret  
ld   bc,EF24
ld   d,(hl)
ld   bc,E500
nop  
ld   bc,FD20
nop  
ld   bc,DE20
rst  30
ld   (bc),a
jr   6B81
rst  30
inc  bc
jr   6AFD
ld   a,a
inc  bc
ld   c,b
rst  18
ld   e,e
ld   bc,DB18
rst  20
ld   bc,FD00
rst  30
inc  bc
jr   nz,6B95
rst  30
ld   bc,ED20
rst  30
ld   bc,ED20
rst  30
ld   bc,ED20
rst  30
ld   bc,ED20
rst  30
ld   bc,ED20
rst  30
ld   bc,EF20
rst  30
ld   bc,EF20
rst  30
ldi  a,(hl)
ld   c,a
ld   a,(hl)
ld   b,a
ld   a,(bc)
ld   (de),a
inc  e
inc  bc
ld   a,(bc)
ld   (de),a
ret  
ldi  a,(hl)
ld   (de),a
inc  e
ldi  a,(hl)
ld   (de),a
ret  
call 69F8
xor  a
ld   (DF75),a
ld   (DF77),a
ld   de,DF80
ld   b,00
ldi  a,(hl)
ld   (de),a
inc  e
call 6B3E
ld   de,DF90
call 6B3E
ld   de,DFA0
call 6B3E
ld   de,DFB0
call 6B3E
ld   de,DFC0
call 6B3E
ld   hl,DF90
ld   de,DF94
call 6B33
ld   hl,DFA0
ld   de,DFA4
call 6B33
ld   hl,DFB0
ld   de,DFB4
call 6B33
ld   hl,DFC0
ld   de,DFC4
call 6B33
ld   bc,0410
ld   hl,DF92
ld   (hl),01
ld   a,c
add  l
ld   l,a
dec  b
jr   nz,6B9B
xor  a
ld   (DF9E),a
ld   (DFAE),a
ld   (DFBE),a
ret  
push hl
xor  a
ld   (ff00+1A),a
ld   l,e
ld   h,d
call 69C9
pop  hl
jr   6BE4
call 6BEA
call 6BFF
ld   e,a
call 6BEA
call 6BFF
ld   d,a
call 6BEA
call 6BFF
ld   c,a
inc  l
inc  l
ld   (hl),e
inc  l
ld   (hl),d
inc  l
ld   (hl),c
dec  l
dec  l
dec  l
dec  l
push hl
ld   hl,DF70
ld   a,(hl)
pop  hl
cp   a,03
jr   z,6BAE
call 6BEA
jp   6C8F
push de
ldi  a,(hl)
ld   e,a
ldd  a,(hl)
ld   d,a
inc  de
ld   a,e
ldi  (hl),a
ld   a,d
ldd  (hl),a
pop  de
ret  
push de
ldi  a,(hl)
ld   e,a
ldd  a,(hl)
ld   d,a
inc  de
inc  de
jr   6BF0
ldi  a,(hl)
ld   c,a
ldd  a,(hl)
ld   b,a
ld   a,(bc)
ld   b,a
ret  
pop  hl
jr   6C35
ld   a,(DF70)
cp   a,03
jr   nz,6C20
ld   a,(DFB8)
bit  7,a
jr   z,6C20
ld   a,(hl)
cp   a,06
jr   nz,6C20
ld   a,40
ld   (ff00+1C),a
push hl
ld   a,l
add  a,09
ld   l,a
ld   a,(hl)
and  a
jr   nz,6C06
ld   a,l
add  a,04
ld   l,a
bit  7,(hl)
jr   nz,6C06
pop  hl
call 6D98
dec  l
dec  l
jp   6D6A
dec  l
dec  l
dec  l
dec  l
call 6BF6
ld   a,l
add  a,04
ld   e,a
ld   d,h
call 6B33
cp   a,00
jr   z,6C6C
cp   a,FF
jr   z,6C55
inc  l
jp   6C8D
dec  l
push hl
call 6BF6
call 6BFF
ld   e,a
call 6BEA
call 6BFF
ld   d,a
pop  hl
ld   a,e
ldi  (hl),a
ld   a,d
ldd  (hl),a
jr   6C41
ld   hl,DFE9
ld   (hl),00
call 69D6
ret  
ld   hl,DFE9
ld   a,(hl)
and  a
ret  z
ld   a,01
ld   (DF70),a
ld   hl,DF90
inc  l
ldi  a,(hl)
and  a
jp   z,6C35
dec  (hl)
jp   nz,6C09
inc  l
inc  l
call 6BFF
cp   a,00
jp   z,6C3A
cp   a,9D
jp   z,6BBA
and  a,F0
cp   a,A0
jr   nz,6CBC
ld   a,b
and  a,0F
ld   c,a
ld   b,00
push hl
ld   de,DF81
ld   a,(de)
ld   l,a
inc  de
ld   a,(de)
ld   h,a
add  hl,bc
ld   a,(hl)
pop  hl
dec  l
ldi  (hl),a
call 6BEA
call 6BFF
ld   a,b
ld   c,a
ld   b,00
call 6BEA
ld   a,(DF70)
cp   a,04
jp   z,6CED
push hl
ld   a,l
add  a,05
ld   l,a
ld   e,l
ld   d,h
inc  l
inc  l
ld   a,c
cp   a,01
jr   z,6CE8
ld   (hl),00
ld   hl,6E33
add  hl,bc
ldi  a,(hl)
ld   (de),a
inc  e
ld   a,(hl)
ld   (de),a
pop  hl
jp   6D04
ld   (hl),01
pop  hl
jr   6D04
push hl
ld   de,DFC6
ld   hl,6EC5
add  hl,bc
ldi  a,(hl)
ld   (de),a
inc  e
ld   a,e
cp   a,CB
jr   nz,6CF5
ld   c,20
ld   hl,DFC4
jr   6D32
push hl
ld   a,(DF70)
cp   a,01
jr   z,6D2D
cp   a,02
jr   z,6D29
ld   c,1A
ld   a,(DFBF)
bit  7,a
jr   nz,6D1E
xor  a
ld   (ff00+c),a
ld   a,80
ld   (ff00+c),a
inc  c
inc  l
inc  l
inc  l
inc  l
ldi  a,(hl)
ld   e,a
ld   d,00
jr   6D3E
ld   c,16
jr   6D32
ld   c,10
ld   a,00
inc  c
inc  l
inc  l
inc  l
ldd  a,(hl)
and  a
jr   nz,6D88
ldi  a,(hl)
ld   e,a
inc  l
ldi  a,(hl)
ld   d,a
push hl
inc  l
inc  l
ldi  a,(hl)
and  a
jr   z,6D47
ld   e,01
inc  l
inc  l
ld   (hl),00
inc  l
ld   a,(hl)
pop  hl
bit  7,a
jr   nz,6D65
ld   a,d
ld   (ff00+c),a
inc  c
ld   a,e
ld   (ff00+c),a
inc  c
ldi  a,(hl)
ld   (ff00+c),a
inc  c
ld   a,(hl)
or   a,80
ld   (ff00+c),a
ld   a,l
or   a,05
ld   l,a
res  0,(hl)
pop  hl
dec  l
ldd  a,(hl)
ldd  (hl),a
dec  l
ld   de,DF70
ld   a,(de)
cp   a,04
jr   z,6D7B
inc  a
ld   (de),a
ld   de,0010
add  hl,de
jp   6C83
ld   hl,DF9E
inc  (hl)
ld   hl,DFAE
inc  (hl)
ld   hl,DFBE
inc  (hl)
ret  
ld   b,00
push hl
pop  hl
inc  l
jr   6D3B
ld   a,b
srl  a
ld   l,a
ld   h,00
add  hl,de
ld   e,(hl)
ret  
push hl
ld   a,l
add  a,06
ld   l,a
ld   a,(hl)
and  a,0F
jr   z,6DBA
ld   (DF71),a
ld   a,(DF70)
ld   c,13
cp   a,01
jr   z,6DBC
ld   c,18
cp   a,02
jr   z,6DBC
ld   c,1D
cp   a,03
jr   z,6DBC
pop  hl
ret  
inc  l
ldi  a,(hl)
ld   e,a
ld   a,(hl)
ld   d,a
push de
ld   a,l
add  a,04
ld   l,a
ld   b,(hl)
ld   a,(DF71)
cp   a,01
jr   6DD7
cp   a,03
jr   6DD2
ld   hl,FFFF
jr   6DF3
ld   de,6DFC
call 6D8F
bit  0,b
jr   nz,6DE3
swap e
ld   a,e
and  a,0F
bit  3,a
jr   z,6DF0
ld   h,FF
or   a,F0
jr   6DF2
ld   h,00
ld   l,a
pop  de
add  hl,de
ld   a,l
ld   (ff00+c),a
inc  c
ld   a,h
ld   (ff00+c),a
jr   6DBA
nop  
nop  
nop  
nop  
nop  
nop  
stop
rrca 
nop  
nop  
ld   de,0F00
ld   a,(ff00+01)
ld   (de),a
<corrupted stop>
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
ld   bc,1012
rst  38
rst  28
nop  
rrca 
inc  l
nop  
sbc  h
nop  
ld   b,01
ld   l,e
ld   bc,01C9
inc  hl
ld   (bc),a
ld   (hl),a
ld   (bc),a
add  a,02
ld   (de),a
inc  bc
ld   d,(hl)
inc  bc
sbc  e
inc  bc
jp   c,1603
inc  b
ld   c,(hl)
inc  b
add  e
inc  b
or   l
inc  b
push hl
inc  b
ld   de,3B05
dec  b
ld   h,e
dec  b
adc  c
dec  b
xor  h
dec  b
adc  a,05
-    
dec  b
ld   a,(bc)
ld   b,27
ld   b,42
ld   b,5B
ld   b,72
ld   b,89
ld   b,9E
ld   b,B2
ld   b,C4
ld   b,D6
ld   b,E7
ld   b,F7
ld   b,06
rlca 
inc  d
rlca 
ld   hl,2D07
rlca 
add  hl,sp
rlca 
ld   b,h
rlca 
ld   c,a
rlca 
ld   e,c
rlca 
ld   h,d
rlca 
ld   l,e
rlca 
ld   (hl),e
rlca 
ld   a,e
rlca 
add  e
rlca 
adc  d
rlca 
sub  b
rlca 
sub  a
rlca 
sbc  l
rlca 
and  d
rlca 
and  a
rlca 
xor  h
rlca 
or   c
rlca 
or   (hl)
rlca 
cp   d
rlca 
cp   (hl)
rlca 
pop  bc
rlca 
call nz,C807
rlca 
rlc  a
adc  a,07
pop  de
rlca 
call nc,D607
rlca 
reti 
rlca 
-    
rlca 
-    
rlca 
rst  18
rlca 
nop  
nop  
nop  
nop  
nop  
ret  nz
and  c
nop  
ldd  a,(hl)
nop  
ret  nz
or   c
nop  
add  hl,hl
ld   bc,61C0
nop  
ldd  a,(hl)
nop  
ret  nz
ld   (de),a
inc  (hl)
ld   b,l
ld   h,a
sbc  d
cp   h
sbc  a,FE
sbc  b
ld   a,d
or   a
cp   (hl)
xor  b
halt 
ld   d,h
ld   sp,2301
ld   b,h
ld   d,l
ld   h,a
adc  b
sbc  d
cp   e
xor  c
adc  b
halt 
ld   d,l
ld   b,h
inc  sp
ldi  (hl),a
ld   de,2301
ld   b,l
ld   h,a
adc  c
xor  e
call FEEF
call c,98BA
halt 
ld   d,h
ldd  (hl),a
<corrupted stop>
add  d
inc  hl
inc  (hl)
ld   b,l
ld   d,(hl)
ld   h,a
ld   a,b
adc  c
sbc  d
xor  e
cp   h
call 3264
<corrupted stop>
inc  hl
ld   d,(hl)
ld   a,b
sbc  c
sbc  b
halt 
ld   h,a
sbc  d
rst  18
cp   a,C9
add  l
ld   b,d
ld   de,0231
inc  b
ld   (2010),sp
ld   b,b
inc  c
jr   6F63
dec  b
nop  
ld   bc,0503
ld   a,(bc)
inc  d
jr   z,6F8C
rrca 
ld   e,3C
inc  bc
ld   b,0C
jr   6F74
ld   h,b
ld   (de),a
inc  h
ld   c,b
ld   (0010),sp
rlca 
ld   c,1C
jr   c,6FC0
dec  d
ldi  a,(hl)
ld   d,h
inc  b
ld   (2010),sp
ld   b,b
add  b
jr   6F8B
ld   h,b
inc  b
add  hl,bc
ld   (de),a
inc  h
ld   c,b
sub  b
dec  de
ld   (hl),6C
inc  c
jr   6F6C
ld   a,(bc)
inc  d
jr   z,6FBC
and  b
ld   e,3C
ld   a,b
nop  
ccf  
ld   l,a
-    
ld   a,h
ld   a,(0C7C)
ld   a,l
inc  e
ld   a,l
nop  
ld   (hl),6F
ld   b,e
ld   a,(hl)
ccf  
ld   a,(hl)
ld   b,l
ld   a,(hl)
ld   b,a
ld   a,(hl)
nop  
ccf  
ld   l,a
ld   (hl),76
ld   l,76
inc  a
halt 
ld   e,(hl)
halt 
nop  
ldi  a,(hl)
ld   l,a
ei   
ld   (hl),l
rst  30
ld   (hl),l
-    
ld   (hl),l
nop  
nop  
nop  
ccf  
ld   l,a
adc  l
ld   (hl),c
ld   (hl),e
ld   (hl),c
and  a
ld   (hl),c
pop  bc
ld   (hl),c
nop  
ccf  
ld   l,a
pop  bc
ld   (hl),d
or   e
ld   (hl),d
rst  08
ld   (hl),d
-    
ld   (hl),d
nop  
ccf  
ld   l,a
add  hl,sp
ld   (hl),b
dec  hl
ld   (hl),b
nop  
nop  
nop  
nop  
nop  
ld   (hl),6F
sbc  b
ld   a,(hl)
adc  h
ld   a,(hl)
and  h
ld   a,(hl)
or   b
ld   a,(hl)
nop  
ccf  
ld   l,a
inc  hl
ld   a,h
rra  
ld   a,h
dec  h
ld   a,h
daa  
ld   a,h
nop  
ccf  
ld   l,a
nop  
nop  
ei   
ld   a,c
nop  
nop  
nop  
nop  
nop  
ccf  
ld   l,a
nop  
nop  
ld   hl,257A
ld   a,d
nop  
nop  
nop  
ccf  
ld   l,a
ld   l,(hl)
ld   a,d
ld   l,d
ld   a,d
ld   (hl),b
ld   a,d
nop  
nop  
nop  
ccf  
ld   l,a
jp   c,DE7A
ld   a,d
ld   (ff00+7A),a
ld   (ff00+c),a
ld   a,d
nop  
ccf  
ld   l,a
ld   h,b
ld   a,e
ld   h,(hl)
ld   a,e
ld   l,d
ld   a,e
ld   l,(hl)
ld   a,e
nop  
ccf  
ld   l,a
ld   h,a
ld   a,b
ld   (hl),c
ld   a,b
ld   a,c
ld   a,b
add  c
ld   a,b
nop  
ld   e,h
ld   l,a
ld   a,75
ld   b,(hl)
ld   (hl),l
ld   c,h
ld   (hl),l
nop  
nop  
nop  
ccf  
ld   l,a
adc  b
ld   (hl),l
sub  b
ld   (hl),l
sub  (hl)
ld   (hl),l
nop  
nop  
ld   b,a
ld   (hl),b
ld   h,l
ld   (hl),b
ld   b,a
ld   (hl),b
ld   a,(hl)
ld   (hl),b
call nz,FF70
rst  38
dec  hl
ld   (hl),b
sub  e
ld   (hl),b
and  l
ld   (hl),b
sub  e
ld   (hl),b
or   (hl)
ld   (hl),b
dec  h
ld   (hl),c
rst  38
rst  38
add  hl,sp
ld   (hl),b
sbc  l
ld   (hl),h
nop  
ld   b,c
and  d
ld   b,h
ld   c,h
ld   d,(hl)
ld   c,h
ld   b,d
ld   c,h
ld   b,h
ld   c,h
ld   a,4C
inc  a
ld   c,h
ld   b,h
ld   c,h
ld   d,(hl)
ld   c,h
ld   b,d
ld   c,h
ld   b,h
ld   c,h
ld   a,4C
inc  a
ld   c,h
nop  
ld   b,h
ld   c,h
ld   b,h
ld   a,4E
ld   c,b
ld   b,d
ld   c,b
ld   b,d
ldd  a,(hl)
ld   c,h
ld   b,h
ld   a,4C
ld   c,b
ld   b,h
ld   b,d
ld   a,3C
inc  (hl)
inc  a
ld   b,d
ld   c,h
ld   c,b
nop  
ld   b,h
ld   c,h
ld   b,h
ld   a,4E
ld   c,b
ld   b,d
ld   c,b
ld   b,d
ldd  a,(hl)
ld   d,d
ld   c,b
ld   c,h
ld   d,d
ld   c,h
ld   b,h
ldd  a,(hl)
ld   b,d
xor  b
ld   b,h
nop  
sbc  l
ld   h,h
nop  
ld   b,c
and  e
ld   h,3E
inc  a
ld   h,2C
inc  (hl)
ld   a,36
inc  (hl)
ld   a,2C
inc  (hl)
nop  
ld   h,3E
jr   nc,70CB
ldd  a,(hl)
inc  l
ld   e,36
jr   nc,7051
inc  (hl)
ld   (hl),34
jr   nc,70E0
ldi  a,(hl)
nop  
and  e
ld   h,3E
jr   nc,70DD
ldd  a,(hl)
ldi  a,(hl)
inc  l
inc  (hl)
inc  (hl)
inc  l
ldi  (hl),a
inc  d
nop  
and  d
ld   d,d
ld   c,(hl)
ld   c,h
ld   c,b
ld   b,h
ld   b,d
ld   b,h
ld   c,b
ld   c,h
ld   b,h
ld   c,b
ld   c,(hl)
ld   c,h
ld   c,(hl)
and  e
ld   d,d
ld   b,d
and  d
ld   b,h
ld   c,b
and  e
ld   c,h
ld   c,b
ld   c,h
ld   d,(hl)
ld   d,b
and  d
ld   d,(hl)
ld   e,d
and  e
ld   e,h
ld   e,d
and  d
ld   d,(hl)
ld   d,d
ld   d,b
ld   c,h
ld   d,b
ld   c,d
xor  b
ld   c,h
and  a
ld   d,d
and  c
ld   d,(hl)
ld   e,b
and  e
ld   d,(hl)
and  d
ld   d,d
ld   c,(hl)
ld   d,d
ld   c,h
ld   c,(hl)
ld   c,b
and  a
ld   d,(hl)
and  c
ld   e,d
ld   e,h
and  e
ld   e,d
and  d
ld   d,(hl)
ld   d,h
ld   d,(hl)
ld   d,b
ld   d,h
ld   c,h
ld   e,d
ld   d,h
ld   c,h
ld   d,h
ld   e,d
ld   h,b
ld   h,(hl)
ld   d,h
ld   h,h
ld   d,h
ld   h,b
ld   d,h
and  e
ld   e,h
and  d
ld   h,b
ld   e,h
ld   e,d
ld   e,h
and  c
ld   d,(hl)
ld   e,d
and  h
ld   d,(hl)
and  d
ld   bc,A200
inc  (hl)
ldd  a,(hl)
ld   b,h
ldd  a,(hl)
jr   nc,7166
inc  (hl)
ldd  a,(hl)
inc  l
ldd  a,(hl)
ldi  a,(hl)
ldd  a,(hl)
inc  l
ldd  a,(hl)
ld   b,h
ldd  a,(hl)
jr   nc,7172
inc  (hl)
ldd  a,(hl)
inc  l
ldd  a,(hl)
ldi  a,(hl)
ldd  a,(hl)
inc  l
inc  (hl)
inc  l
ld   h,3E
jr   c,7177
jr   c,7171
jr   c,717B
jr   c,70EE
inc  (hl)
ld   b,d
ldi  a,(hl)
and  d
inc  (hl)
ldd  a,(hl)
ld   b,d
ldd  a,(hl)
jr   nc,718F
ld   l,34
ld   h,34
ld   l,34
xor  b
jr   nc,7100
ldd  (hl),a
jr   c,718B
jr   c,7195
jr   c,710D
inc  (hl)
and  e
inc  (hl)
ldi  a,(hl)
inc  h
inc  e
jr   nz,7191
inc  l
jr   nc,71A4
xor  b
ld   h,00
rst  00
ld   (hl),c
sub  a,71
rrca 
ld   (hl),d
sub  a,71
ld   b,c
ld   (hl),d
and  h
ld   (hl),d
sub  a,71
rrca 
ld   (hl),d
rst  00
ld   (hl),c
sub  a,71
halt 
ld   (hl),d
rst  38
rst  38
ld   (hl),e
ld   (hl),c
call z,EE71
ld   (hl),c
daa  
ld   (hl),d
xor  a,71
ld   d,l
ld   (hl),d
xor  c
ld   (hl),d
xor  a,71
daa  
ld   (hl),d
call z,EE71
ld   (hl),c
adc  d
ld   (hl),d
rst  38
rst  38
adc  l
ld   (hl),c
pop  de
ld   (hl),c
-    
ld   (hl),c
inc  (hl)
ld   (hl),d
-    
ld   (hl),c
ld   h,h
ld   (hl),d
xor  (hl)
ld   (hl),d
-    
ld   (hl),c
inc  (hl)
ld   (hl),d
pop  de
ld   (hl),c
-    
ld   (hl),c
sub  a
ld   (hl),d
rst  38
rst  38
and  a
ld   (hl),c
ld   a,(bc)
ld   (hl),d
rst  38
rst  38
pop  bc
ld   (hl),c
sbc  l
add  h
nop  
add  b
nop  
sbc  l
ld   d,h
nop  
add  b
nop  
sbc  l
ld   a,(de)
ld   l,a
and  b
nop  
and  d
ld   b,h
ld   c,b
ld   b,h
ld   b,d
ld   b,h
ld   c,b
ld   c,h
ld   c,(hl)
and  e
ld   d,d
and  d
ld   bc,A356
ld   e,h
ld   bc,58A9
ld   e,h
ld   e,b
xor  b
ld   c,b
nop  
and  e
ld   bc,3E3E
ld   bc,4444
ld   bc,4848
ld   bc,4040
nop  
and  e
ld   c,(hl)
ld   c,(hl)
ld   c,(hl)
ld   b,h
ld   d,(hl)
ld   d,(hl)
ld   d,d
ld   e,b
ld   e,b
ld   b,b
ld   d,d
ld   d,d
nop  
and  e
ld   b,0B
dec  bc
nop  
and  d
ld   b,b
ld   b,h
ld   b,b
ld   a,40
ld   b,h
ld   c,b
ld   c,h
and  e
ld   c,(hl)
and  d
ld   bc,A352
ld   e,b
ld   bc,56A9
ld   e,b
ld   d,(hl)
xor  b
ld   b,h
nop  
ld   bc,3A3A
ld   bc,4040
ld   bc,4444
ld   bc,4040
nop  
ld   b,h
ld   c,h
ld   c,h
ld   b,h
ld   d,d
ld   d,d
ld   c,(hl)
ld   d,(hl)
ld   d,(hl)
ld   b,h
ld   c,h
ld   c,h
nop  
and  e
ld   e,b
and  a
ld   d,(hl)
and  d
ld   d,d
and  e
ld   d,(hl)
and  a
ld   c,(hl)
and  d
ld   c,b
ld   c,h
ld   c,h
and  e
ld   c,h
ld   c,(hl)
xor  b
ld   d,d
nop  
ld   bc,4646
ld   bc,4444
and  d
ld   b,b
ld   b,b
and  e
ld   b,b
ld   b,b
xor  b
ld   b,b
nop  
ld   b,(hl)
ld   c,(hl)
ld   c,(hl)
ld   b,h
ld   d,(hl)
ld   d,(hl)
and  d
ld   d,d
ld   d,d
and  e
ld   d,d
ld   c,b
ld   c,h
and  a
ld   c,b
and  d
ld   b,(hl)
nop  
and  e
ld   d,d
and  a
ld   e,b
and  d
ld   d,(hl)
and  e
ld   d,(hl)
and  a
ld   e,h
and  d
ld   h,(hl)
ld   h,b
ld   h,b
and  e
ld   h,b
ld   h,h
xor  b
ld   h,(hl)
nop  
ld   bc,4646
ld   bc,4444
ld   bc,3A40
ld   bc,4446
nop  
ld   b,(hl)
ld   c,(hl)
ld   c,(hl)
ld   b,h
ld   d,(hl)
ld   d,(hl)
ld   b,b
ld   d,d
ld   b,h
ld   c,(hl)
ld   e,b
ld   d,(hl)
nop  
sbc  l
ld   h,e
nop  
add  b
nop  
sbc  l
ld   b,h
nop  
add  b
nop  
sbc  l
ld   a,(de)
ld   l,a
and  b
nop  
ld   b,73
ldd  a,(hl)
ld   (hl),e
ld   h,d
ld   (hl),e
ld   h,d
ld   (hl),e
call nz,FF73
rst  38
or   e
ld   (hl),d
inc  bc
ld   (hl),e
scf  
ld   (hl),e
adc  c
ld   (hl),e
adc  c
ld   (hl),e
ld   b,(hl)
ld   (hl),h
rst  38
rst  38
pop  bc
ld   (hl),d
ld   a,(de)
ld   (hl),e
ld   c,(hl)
ld   (hl),e
or   b
ld   (hl),e
or   b
ld   (hl),e
or   b
ld   (hl),e
or   b
ld   (hl),e
or   b
ld   (hl),e
or   b
ld   (hl),e
cp   e
ld   (hl),h
reti 
ld   (hl),h
reti 
ld   (hl),h
reti 
ld   (hl),h
jp   hl
ld   (hl),h
ld   sp,hl
ld   (hl),h
ld   sp,hl
ld   (hl),h
add  hl,bc
ld   (hl),l
add  hl,bc
ld   (hl),l
add  hl,de
ld   (hl),l
add  hl,de
ld   (hl),l
add  hl,bc
ld   (hl),l
add  hl,hl
ld   (hl),l
rst  38
rst  38
rst  08
ld   (hl),d
ld   l,73
rst  38
rst  38
-    
ld   (hl),d
and  l
ld   bc,9D00
ld   h,d
nop  
add  b
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,7342
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,7349
nop  
sbc  l
ld   a,(de)
ld   l,a
and  b
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,7356
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,735D
nop  
and  d
ld   b,A1
ld   b,06
and  d
ld   b,06
nop  
and  l
ld   bc,9D00
ldd  (hl),a
nop  
add  b
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,7376
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,737D
nop  
sbc  l
ld   a,(de)
ld   l,a
and  b
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,738A
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,7391
nop  
sbc  l
add  d
nop  
add  b
and  d
ldd  a,(hl)
ld   c,b
ld   d,d
ld   d,b
ld   d,d
and  c
ld   c,b
ld   c,b
and  d
ld   c,d
ld   b,h
ld   c,b
and  c
ld   b,b
ld   b,b
and  d
ld   b,h
ld   a,40
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ld   a,38
ldd  a,(hl)
jr   nc,73B5
jr   c,73BF
jr   nc,73B9
ld   a,00
sbc  l
ld   d,e
nop  
ld   b,b
and  d
jr   nc,73D0
ld   b,b
ld   b,h
ld   b,b
and  c
ld   a,40
and  d
ld   b,h
ld   a,40
and  c
jr   c,73D7
and  d
ld   a,38
ldd  a,(hl)
and  c
ld   l,30
and  d
jr   c,73D7
jr   nc,73D1
inc  l
inc  l
jr   nc,73D5
inc  l
jr   c,73B0
sbc  l
ld   a,(de)
ld   l,a
and  b
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,73EC
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   nc,73F3
nop  
xor  b
ldd  a,(hl)
and  d
ld   a,38
xor  b
ldd  a,(hl)
and  e
ld   a,A2
ld   b,b
and  c
ld   b,b
ld   b,b
and  d
ld   b,h
ld   a,40
and  c
ld   b,b
ld   b,b
and  d
ld   b,h
ld   a,A8
ld   b,b
and  e
ld   b,h
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,d
ld   b,h
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,d
ld   b,h
xor  b
ld   c,b
and  e
ld   c,h
and  d
ld   c,(hl)
and  c
ld   c,(hl)
ld   c,(hl)
and  d
ld   c,(hl)
ld   c,(hl)
ld   d,d
ld   c,(hl)
ld   c,(hl)
ld   c,h
ld   c,(hl)
and  c
ld   c,(hl)
ld   c,(hl)
and  d
ld   c,(hl)
ld   c,(hl)
ld   d,d
ld   c,(hl)
ld   c,(hl)
ld   c,h
ld   c,(hl)
and  c
ld   c,(hl)
ld   c,(hl)
and  d
ld   c,(hl)
ld   c,(hl)
ld   c,h
and  c
ld   c,h
ld   c,h
and  d
ld   c,h
ld   c,h
ld   c,d
and  c
ld   c,d
ld   c,d
and  d
ld   c,d
ld   b,h
ld   a,40
ld   b,h
ld   (hl),44
and  c
ld   b,b
ld   b,b
and  d
ld   (hl),A3
ld   b,b
and  c
ld   (hl),3A
and  d
ld   (hl),30
ld   b,h
and  c
ld   b,b
ld   b,b
and  d
ld   (hl),A3
ld   b,b
and  c
ld   (hl),3A
and  d
ld   (hl),2E
and  l
ld   (hl),A8
ld   bc,38A3
nop  
xor  b
jr   nc,73EB
jr   nc,747B
xor  b
jr   nc,73F1
ld   (hl),A5
ld   bc,01A8
and  e
ld   a,A2
ld   b,b
and  c
ld   b,b
ld   b,b
and  d
ld   b,h
ld   a,40
and  c
ld   b,b
ld   b,b
and  d
ld   b,h
ld   a,A8
ld   (hl),A3
ldd  a,(hl)
and  d
ld   a,A1
ld   b,b
ld   b,h
and  d
ld   a,44
ld   c,b
ld   c,b
ld   c,b
ldd  a,(hl)
ld   a,A1
ld   b,b
ld   b,h
and  d
ld   a,44
ld   b,(hl)
ld   b,(hl)
ld   b,(hl)
ldd  a,(hl)
ld   a,A1
ld   b,b
ld   b,h
and  d
ld   a,44
ldd  a,(hl)
and  c
ld   a,40
and  d
ldd  a,(hl)
ld   b,b
ldd  a,(hl)
and  c
ld   a,40
and  d
ld   a,3E
inc  l
ldd  a,(hl)
ld   a,26
jr   nc,743B
jr   nc,74CC
and  d
jr   nc,7442
jr   nc,7442
jr   nc,74D7
and  d
jr   nc,74CE
ld   l,A1
ld   l,2E
and  d
ld   l,A3
ld   l,A1
ld   l,32
and  d
ld   l,28
and  l
ld   h,A8
ld   bc,2CA3
nop  
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  (hl),a
inc  l
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
jr   c,74FA
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  (hl),a
inc  l
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
inc  l
ld   e,00
and  d
jr   z,747D
ld   b,b
jr   z,7481
ld   e,36
jr   z,7484
ld   b,b
jr   z,7488
ld   e,36
nop  
and  d
jr   z,748D
ld   b,b
jr   z,7491
ld   e,36
jr   z,7494
ld   b,b
jr   z,7498
inc  l
ld   b,h
nop  
and  d
ld   e,A1
ld   (hl),1E
and  d
ld   e,36
jr   z,74A4
ld   b,b
jr   z,74A8
jr   z,7548
nop  
and  d
ld   e,A1
ld   (hl),1E
and  d
ld   e,36
ld   e,A1
ld   (hl),1E
and  d
ld   e,36
nop  
and  d
ldi  (hl),a
and  c
ldd  a,(hl)
ldi  (hl),a
and  d
ldi  (hl),a
ldd  a,(hl)
ldi  (hl),a
and  c
ldd  a,(hl)
ldi  (hl),a
and  d
ldi  (hl),a
ldd  a,(hl)
nop  
and  d
ld   e,A1
ld   (hl),1E
and  d
ld   e,36
ld   e,A1
ld   (hl),1E
and  d
and  h
ld   a,00
ld   (hl),3E
ld   b,h
and  h
ld   b,h
ld   d,d
ld   (hl),l
ld   e,l
ld   (hl),l
rst  38
rst  38
ld   b,b
ld   (hl),l
ld   e,c
ld   (hl),l
rst  38
rst  38
ld   b,(hl)
ld   (hl),l
ld   (hl),a
ld   (hl),l
rst  38
rst  38
ld   c,h
ld   (hl),l
sbc  l
jr   nz,7555
add  c
xor  d
ld   bc,9D00
ld   (hl),b
nop  
add  c
and  d
ld   b,d
ldd  (hl),a
jr   c,75A4
ld   b,(hl)
inc  (hl)
inc  a
ld   b,(hl)
ld   c,d
jr   c,75AB
ld   c,d
ld   c,h
inc  a
ld   b,d
ld   c,h
ld   b,(hl)
inc  (hl)
inc  a
ld   b,(hl)
ld   b,b
ld   l,34
ld   b,b
nop  
sbc  l
ld   a,(de)
ld   l,a
ld   hl,42A8
and  e
ldi  a,(hl)
xor  b
ld   b,d
and  e
ldi  a,(hl)
xor  b
ld   b,d
and  e
ldi  a,(hl)
nop  
sbc  h
ld   (hl),l
and  a
ld   (hl),l
rst  38
rst  38
adc  d
ld   (hl),l
and  e
ld   (hl),l
rst  38
rst  38
sub  b
ld   (hl),l
jp   hl
ld   (hl),l
rst  38
rst  38
sub  (hl)
ld   (hl),l
sbc  l
jr   nz,759F
add  c
xor  d
ld   bc,9D00
ld   (hl),b
nop  
add  c
and  d
ld   c,h
ld   b,d
ld   d,b
ld   b,d
ld   d,h
ld   b,d
ld   d,b
ld   b,d
ld   d,(hl)
ld   b,d
ld   d,h
ld   b,d
ld   d,b
ld   b,d
ld   d,h
ld   b,d
ld   c,h
ld   b,d
ld   d,b
ld   b,d
ld   d,h
ld   b,d
ld   d,b
ld   b,d
ld   d,(hl)
ld   b,d
ld   d,h
ld   b,d
ld   d,b
ld   b,d
ld   d,h
ld   b,d
ld   e,d
ld   b,(hl)
ld   d,(hl)
ld   b,(hl)
ld   d,h
ld   b,(hl)
ld   d,b
ld   b,(hl)
ld   c,(hl)
ld   b,(hl)
ld   d,b
ld   b,(hl)
ld   d,h
ld   b,(hl)
ld   d,b
ld   b,(hl)
ld   d,b
ld   a,4C
ld   a,4C
ld   a,4A
ld   a,4A
ld   a,46
ld   a,4A
ld   a,50
ld   a,00
sbc  l
ld   a,(de)
ld   l,a
ld   hl,4CA5
ld   c,d
ld   b,(hl)
ld   b,d
jr   c,7632
ld   b,d
ld   b,d
nop  
rst  38
ld   (hl),l
nop  
nop  
rrca 
halt 
ld   e,76
sbc  l
or   d
nop  
add  b
and  d
ld   h,b
ld   e,h
ld   h,b
ld   e,h
ld   h,b
ld   h,d
ld   h,b
ld   e,h
and  h
ld   h,b
nop  
sbc  l
sub  d
nop  
add  b
and  d
ld   d,d
ld   c,(hl)
ld   d,d
ld   c,(hl)
ld   d,d
ld   d,h
ld   d,d
ld   c,(hl)
and  h
ld   d,d
sbc  l
ld   a,(de)
ld   l,a
jr   nz,75C5
ld   h,d
ld   h,b
ld   h,d
ld   h,b
ld   h,d
ld   h,(hl)
ld   h,d
ld   h,b
and  e
ld   h,d
ld   bc,766A
ld   h,h
ld   (hl),a
ld   h,h
ld   (hl),a
nop  
nop  
cp   d
halt 
and  l
ld   (hl),a
scf  
ld   a,b
rlca 
ld   (hl),a
and  a,77
and  a,77
ld   a,(ff00+77)
and  a,77
and  a,77
ld   sp,hl
ld   (hl),a
ld   a,(ff00+77)
and  a,77
and  a,77
ld   sp,hl
ld   (hl),a
ld   a,(ff00+77)
ld   (bc),a
ld   a,b
inc  c
ld   a,b
ld   sp,hl
ld   (hl),a
ld   a,(ff00+77)
and  a,77
ld   d,(hl)
ld   (hl),a
ld   d,(hl)
ld   (hl),a
dec  d
ld   a,b
dec  d
ld   a,b
dec  d
ld   a,b
dec  d
ld   a,b
sbc  l
jp   8000
and  d
inc  a
ld   a,3C
ld   a,38
ld   d,b
and  e
ld   bc,3CA2
ld   a,3C
ld   a,38
ld   d,b
and  e
ld   bc,01A2
ld   c,b
ld   bc,0146
ld   b,d
ld   bc,A146
ld   b,d
ld   b,(hl)
and  d
ld   b,d
ld   b,d
jr   c,7634
inc  a
ld   bc,3EA2
ld   b,d
ld   a,42
inc  a
ld   d,h
and  e
ld   bc,3EA2
ld   b,d
ld   a,42
inc  a
ld   d,h
and  e
ld   bc,01A2
ld   d,(hl)
ld   bc,0154
ld   d,h
ld   bc,A250
ld   bc,50A1
ld   d,h
and  d
ld   d,b
ld   c,(hl)
and  e
ld   d,b
ld   bc,9D00
ld   (hl),h
nop  
add  b
and  d
ld   (hl),38
ld   (hl),38
ld   l,3E
and  e
ld   bc,36A2
jr   c,7701
jr   c,76FB
ld   a,A3
ld   bc,01A2
ld   (hl),01
ld   (hl),01
ldd  (hl),a
ld   bc,3636
ldd  (hl),a
ldd  (hl),a
jr   nc,7681
ld   (hl),01
and  d
jr   c,771F
jr   c,7721
ld   (hl),4E
and  e
ld   bc,38A2
inc  a
jr   c,772A
ld   (hl),4E
and  e
ld   bc,01A2
ld   d,b
ld   bc,014E
ld   b,(hl)
ld   bc,A246
ld   bc,48A1
ld   c,(hl)
and  d
ld   c,b
ld   b,(hl)
and  e
ld   b,b
ld   bc,9D00
ld   a,(de)
ld   l,a
jr   nz,76AE
ld   c,b
ld   b,(hl)
ld   c,b
ld   b,(hl)
ld   a,20
and  e
ld   bc,48A2
ld   b,(hl)
ld   c,b
ld   b,(hl)
ld   a,20
and  e
ld   bc,2EA2
inc  a
ld   l,24
inc  h
inc  h
inc  h
inc  a
ldi  a,(hl)
ld   a,2A
ld   a,A6
ld   l,A3
ld   bc,01A1
and  d
ld   c,b
ld   b,(hl)
ld   c,b
ld   b,(hl)
ld   l,2E
and  e
ld   bc,48A2
ld   b,(hl)
ld   c,b
ld   b,(hl)
ld   l,2E
and  e
ld   bc,2AA2
inc  a
ldi  a,(hl)
inc  a
ld   l,3E
ld   l,3E
ld   l,42
ld   l,42
and  (hl)
jr   c,76F5
ld   bc,01A1
nop  
xor  b
ld   bc,06A2
dec  bc
xor  b
ld   bc,06A2
dec  bc
and  l
ld   bc,0001
sbc  l
push bc
nop  
add  b
and  c
ld   b,(hl)
ld   c,d
and  h
ld   b,(hl)
and  d
ld   bc,50A3
xor  b
ld   c,d
and  e
ld   bc,42A1
ld   b,(hl)
and  h
ld   b,d
and  d
ld   bc,4EA3
and  c
ld   c,(hl)
ld   d,b
and  h
ld   b,(hl)
and  a
ld   bc,40A1
ld   b,(hl)
and  h
ld   b,b
and  d
ld   bc,46A3
and  c
ld   b,(hl)
ld   c,d
and  h
ld   b,d
and  a
ld   bc,36A1
jr   c,773D
ld   (hl),A2
ld   bc,3CA3
and  a
ld   b,d
and  h
ld   b,b
and  d
ld   bc,9D00
add  h
nop  
ld   b,c
and  c
ld   b,b
ld   b,d
and  h
ld   b,b
and  d
ld   bc,40A3
xor  b
ld   b,d
and  e
ld   bc,3CA1
ld   b,b
and  h
inc  a
and  d
ld   bc,3CA3
and  c
inc  a
ld   b,b
and  h
ld   b,b
and  a
ld   bc,36A1
ldd  (hl),a
and  h
ld   l,A2
ld   bc,40A3
and  c
ld   (hl),38
and  h
ldd  (hl),a
and  a
ld   bc,2EA1
ldd  (hl),a
and  h
ld   l,A2
ld   bc,2AA3
and  a
jr   nc,7786
ld   l,A2
ld   bc,A200
jr   c,7821
ld   bc,3838
jr   c,77EF
jr   c,77F0
ld   l,2E
ld   bc,2E2E
ld   l,01
ld   l,00
ldi  a,(hl)
ldi  a,(hl)
ld   bc,2A2A
ldi  a,(hl)
ld   bc,002A
and  d
jr   c,783D
ld   bc,3638
ld   (hl),01
ld   (hl),00
ldd  (hl),a
ldd  (hl),a
ld   bc,2E32
ld   l,01
ld   l,00
and  d
ld   b,0B
ld   bc,0606
dec  bc
ld   bc,0606
dec  bc
ld   bc,0606
dec  bc
ld   bc,0606
dec  bc
ld   bc,0606
dec  bc
ld   bc,0606
dec  bc
ld   bc,0106
dec  bc
ld   bc,000B
sbc  l
ld   h,(hl)
nop  
add  c
and  a
ld   e,b
ld   e,d
and  e
ld   e,b
and  a
ld   e,(hl)
and  h
ld   e,d
and  d
ld   bc,50A7
ld   d,h
and  e
ld   e,b
and  a
ld   e,d
and  h
ld   e,b
and  d
ld   bc,50A7
and  e
ld   c,(hl)
and  a
ld   c,(hl)
ld   e,b
ld   d,h
and  e
ld   c,d
and  a
ld   e,d
ld   e,(hl)
and  e
ld   e,d
and  a
ld   d,h
and  h
ld   d,b
and  d
ld   bc,8900
ld   a,b
inc  c
ld   a,c
adc  c
ld   a,b
sub  c
ld   a,c
nop  
nop  
xor  b
ld   a,b
inc  sp
ld   a,c
xor  b
ld   a,b
or   l
ld   a,c
ret  nc
ld   a,b
ld   e,c
ld   a,c
ret  nc
ld   a,b
ret  c
ld   a,c
ld   sp,hl
ld   a,b
ld   a,a
ld   a,c
ld   sp,hl
ld   a,b
ld   a,a
ld   a,c
sbc  l
pop  de
nop  
add  b
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   d,d
ld   c,h
ld   c,b
ld   b,h
and  c
ld   c,h
ld   d,d
nop  
sbc  l
or   d
nop  
add  b
and  d
ld   d,d
and  c
ld   d,d
ld   d,d
and  d
ld   d,d
and  c
ld   d,d
ld   d,d
and  d
ld   b,h
and  c
ld   b,h
ld   b,h
and  d
ld   b,h
ld   bc,A14C
ld   c,h
ld   c,h
and  d
ld   c,h
and  c
ld   c,h
ld   c,h
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
ld   bc,9D00
ld   a,(de)
ld   l,a
jr   nz,7877
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   c,(hl)
and  c
ld   d,d
ld   d,d
and  d
ld   d,(hl)
ld   bc,5CA2
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   b,h
and  c
ld   c,b
ld   c,b
and  d
ld   c,h
ld   bc,A200
ld   b,A7
ld   bc,0BA2
dec  bc
dec  bc
ld   bc,06A2
and  a
ld   bc,0BA2
dec  bc
dec  bc
ld   bc,A200
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   b,h
and  c
ld   b,h
ld   d,d
and  d
ld   b,d
and  c
ld   b,d
ld   d,d
and  d
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   c,h
and  c
ld   c,h
ld   d,d
and  d
ld   b,h
and  c
ld   b,h
ld   d,d
and  d
ld   c,b
ld   b,h
and  c
ld   c,b
ld   d,d
ld   d,(hl)
ld   e,d
nop  
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ld   (hl),A1
ld   (hl),36
and  d
ld   (hl),01
nop  
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   b,h
and  c
ld   b,h
ld   b,h
and  d
ld   b,h
and  c
ld   b,h
ld   b,h
and  d
ld   b,d
and  c
ld   b,d
ld   b,d
and  d
ld   b,d
ld   bc,A200
ld   bc,010B
dec  bc
ld   bc,010B
dec  bc
ld   bc,010B
dec  bc
ld   bc,0B0B
ld   bc,A200
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   b,h
and  c
ld   b,h
ld   d,d
and  d
ld   b,d
and  c
ld   b,d
ld   d,d
and  d
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   c,h
and  c
ld   c,h
ld   d,d
and  d
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   b,h
ld   d,d
and  e
ld   e,h
nop  
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ldd  a,(hl)
and  c
ldd  a,(hl)
ldd  a,(hl)
and  d
ld   bc,A33A
ld   c,h
nop  
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   c,b
and  c
ld   c,b
ld   c,b
and  d
ld   b,h
and  c
ld   b,h
ld   b,h
and  d
ld   b,h
and  c
ld   b,h
ld   b,h
and  d
ld   bc,A34C
ld   b,h
nop  
rst  38
ld   a,c
nop  
nop  
sbc  l
jp   nz,4000
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   d,d
ld   c,h
ld   c,b
and  c
ld   b,h
ld   b,d
and  d
ld   b,h
and  h
ld   bc,2700
ld   a,d
nop  
nop  
ld   b,(hl)
ld   a,d
sbc  l
jp   nz,8000
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   c,h
ld   b,h
ld   d,d
and  e
ld   e,h
and  h
ld   bc,9D00
ld   a,(de)
ld   l,a
jr   nz,79ED
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   c,(hl)
ld   d,d
ld   d,(hl)
ld   bc,5CA2
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   d,d
ld   c,h
ld   b,h
ld   bc,01A5
ld   (hl),d
ld   a,d
nop  
nop  
sub  c
ld   a,d
xor  a
ld   a,d
sbc  l
jp   nz,8000
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   c,h
ld   b,h
ld   d,d
and  e
ld   e,h
and  h
ld   bc,9D00
jp   nz,4000
and  d
ld   c,(hl)
and  c
ld   c,(hl)
ld   d,d
and  d
ld   d,(hl)
ld   c,(hl)
and  e
ld   c,b
ld   c,b
and  d
ld   c,h
and  c
ld   c,h
ld   c,d
and  d
ld   c,h
ld   b,h
inc  (hl)
ld   c,h
and  e
ld   c,h
and  l
ld   bc,9D00
ld   a,(de)
ld   l,a
jr   nz,7A56
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   c,(hl)
ld   d,d
and  c
ld   d,(hl)
ld   d,(hl)
and  d
ld   d,(hl)
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   d,d
ld   c,h
and  c
ld   b,h
ld   b,h
and  d
ld   bc,01A5
nop  
-    
ld   a,d
nop  
nop  
inc  bc
ld   a,e
jr   nz,7B5D
ld   c,d
ld   a,e
sbc  l
jp   nz,8000
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   c,h
ld   b,h
ld   d,d
and  e
ld   e,h
and  h
ld   bc,9D00
or   d
nop  
add  b
and  d
ld   c,(hl)
and  c
ld   c,(hl)
ld   d,d
and  d
ld   d,(hl)
ld   c,(hl)
and  e
ld   c,b
ld   c,b
and  d
ld   c,h
and  c
ld   c,h
ld   c,d
and  d
ld   c,h
ld   b,h
inc  (hl)
ld   c,h
and  e
ld   c,h
and  l
ld   bc,1A9D
ld   l,a
jr   nz,7AC7
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
ld   c,(hl)
ld   d,(hl)
ld   e,h
ld   d,(hl)
ld   c,(hl)
ld   b,h
ld   a,44
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
and  d
ld   e,h
and  c
ld   e,h
ld   e,h
ld   d,d
ld   c,h
ld   b,h
ld   c,h
ld   e,h
ld   bc,01A2
and  l
ld   bc,0BA2
dec  bc
dec  bc
dec  bc
and  d
dec  bc
dec  bc
dec  bc
ld   bc,0BA2
dec  bc
dec  bc
dec  bc
and  d
dec  bc
dec  bc
dec  bc
ld   bc,01A5
ld   (hl),d
ld   a,e
ret  
ld   a,e
nop  
nop  
sub  c
ld   a,e
-    
ld   a,e
and  e
ld   a,e
-    
ld   a,e
or   (hl)
ld   a,e
dec  c
ld   a,h
sbc  l
pop  de
nop  
add  b
and  d
ld   e,h
and  c
ld   e,h
ld   e,d
and  d
ld   e,h
ld   e,h
ld   d,(hl)
ld   d,d
ld   c,(hl)
ld   d,(hl)
and  d
ld   d,d
and  c
ld   d,d
ld   d,b
and  d
ld   d,d
ld   d,d
ld   c,h
ld   c,b
ld   b,h
and  c
ld   c,h
ld   d,d
nop  
and  d
ld   d,d
and  a
ld   bc,44A2
ld   b,h
ld   b,h
ld   bc,A74C
ld   bc,3AA2
ldd  a,(hl)
ldd  a,(hl)
ld   bc,A200
ld   e,h
and  a
ld   bc,4EA2
ld   d,d
ld   d,(hl)
ld   bc,5CA2
and  a
ld   bc,44A2
ld   c,b
ld   c,h
ld   bc,A200
ld   b,A7
ld   bc,0BA2
dec  bc
dec  bc
ld   bc,06A2
and  a
ld   bc,0BA2
dec  bc
dec  bc
ld   bc,A200
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   b,h
and  c
ld   b,h
ld   d,d
and  d
ld   b,d
and  c
ld   b,d
ld   d,d
and  d
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   c,h
and  c
ld   c,h
ld   d,d
and  d
ld   c,b
and  c
ld   c,b
ld   d,d
and  d
ld   e,h
ld   d,d
and  e
ld   e,h
nop  
ld   bc,013A
ldd  a,(hl)
ld   bc,013A
ldd  a,(hl)
ld   bc,013A
ldd  a,(hl)
ld   bc,A33A
inc  (hl)
ld   bc,0148
ld   c,b
ld   bc,0148
ld   c,b
ld   bc,0144
ld   b,h
ld   bc,A34C
ld   b,h
and  d
ld   bc,010B
dec  bc
ld   bc,010B
dec  bc
ld   bc,010B
dec  bc
and  d
ld   bc,0B0B
ld   bc,7C29
nop  
nop  
ld   e,(hl)
ld   a,h
sub  d
ld   a,h
add  a,7C
sbc  l
or   e
nop  
add  b
and  (hl)
ld   d,d
and  c
ld   d,b
and  (hl)
ld   d,d
and  c
ld   d,b
and  (hl)
ld   d,d
and  c
ld   c,b
and  e
ld   bc,4CA6
and  c
ld   c,d
and  (hl)
ld   c,h
and  c
ld   c,d
and  (hl)
ld   c,h
and  c
ld   b,d
and  e
ld   bc,3EA6
and  c
ld   b,d
and  (hl)
ld   b,h
and  c
ld   c,b
and  (hl)
ld   c,h
and  c
ld   d,b
and  (hl)
ld   d,d
and  c
ld   d,(hl)
and  (hl)
ld   d,d
and  c
ld   l,d
nop  
sbc  l
sub  e
nop  
ret  nz
and  (hl)
ld   b,d
and  c
ld   b,b
and  (hl)
ld   b,d
and  c
ld   b,b
and  (hl)
ld   b,d
and  c
ld   b,d
and  e
ld   bc,3AA6
and  c
jr   c,7C1B
ldd  a,(hl)
and  c
jr   c,7C1F
ldd  a,(hl)
and  c
ldd  a,(hl)
and  e
ld   bc,38A6
and  c
jr   c,7C29
ldd  a,(hl)
and  c
ld   a,A6
ld   b,d
and  c
ld   b,h
and  (hl)
ld   c,b
and  c
ld   c,h
and  (hl)
ld   b,d
and  c
ld   b,d
sbc  l
ld   a,(de)
ld   l,a
and  b
and  (hl)
ld   c,b
and  c
ld   b,(hl)
and  (hl)
ld   c,b
and  c
ld   b,(hl)
and  (hl)
ld   c,b
and  c
ld   d,d
and  e
ld   bc,44A6
and  c
ld   b,d
and  (hl)
ld   b,h
and  c
ld   b,d
and  (hl)
ld   b,h
and  c
ld   c,h
and  e
ld   bc,48A6
and  c
ldd  a,(hl)
and  (hl)
ld   a,A1
ld   b,d
and  (hl)
ld   b,h
and  c
ld   c,b
and  (hl)
ld   c,h
and  c
ld   d,b
and  (hl)
ld   d,d
and  c
ldd  a,(hl)
and  (hl)
dec  bc
and  c
ld   b,A6
dec  bc
and  c
ld   b,A6
dec  bc
and  c
ld   b,A3
ld   bc,0BA6
and  c
ld   b,A6
dec  bc
and  c
ld   b,A6
dec  bc
and  c
ld   b,A3
ld   bc,0BA6
and  c
ld   b,A6
dec  bc
and  c
ld   b,A6
dec  bc
and  c
ld   b,A3
ld   bc,0BA6
and  c
ld   b,29
ld   a,l
rst  38
rst  38
-    
ld   a,h
inc  h
ld   a,l
jr   nc,7D7B
ld   d,(hl)
ld   a,l
ld   a,l
ld   a,l
ld   d,(hl)
ld   a,l
sbc  a
ld   a,l
pop  bc
ld   a,l
rst  38
rst  38
cp   a,7C
ld   (hl),7D
ld   h,a
ld   a,l
adc  (hl)
ld   a,l
ld   h,a
ld   a,l
or   b
ld   a,l
ld   (bc),a
ld   a,(hl)
rst  38
rst  38
ld   c,7D
add  hl,sp
ld   a,l
inc  a
ld   a,l
rst  38
rst  38
ld   e,7D
sbc  l
ld   h,b
nop  
add  c
nop  
sbc  l
jr   nz,7D2C
add  c
xor  d
ld   bc,A300
ld   bc,5450
ld   e,b
nop  
and  l
ld   bc,A500
ld   bc,A300
ld   bc,0106
ld   b,01
and  d
ld   b,06
and  e
ld   bc,A306
ld   bc,0106
ld   b,01
and  d
ld   b,06
ld   bc,0601
ld   b,00
and  a
ld   e,d
and  d
ld   e,(hl)
and  a
ld   e,d
and  d
ld   e,b
and  a
ld   e,b
and  d
ld   d,h
and  a
ld   e,b
and  d
ld   d,h
nop  
sbc  l
ld   a,(206E)
and  d
ld   e,d
ld   h,d
ld   l,b
ld   (hl),b
ld   e,d
ld   h,d
ld   l,b
ld   (hl),b
ld   e,d
ld   h,h
ld   h,(hl)
ld   l,h
ld   e,d
ld   h,h
ld   h,(hl)
ld   l,h
nop  
and  a
ld   d,h
and  d
ld   d,b
and  a
ld   d,h
and  d
ld   d,b
and  a
ld   d,b
and  d
ld   c,h
and  a
ld   c,d
and  d
ld   d,b
nop  
ld   e,b
ld   e,(hl)
ld   h,h
ld   l,h
ld   e,b
ld   e,(hl)
ld   h,h
ld   l,h
ld   d,b
ld   d,h
ld   e,b
ld   e,(hl)
ld   d,b
ld   e,b
ld   e,(hl)
ld   h,h
nop  
and  a
ld   d,h
and  d
ld   d,b
and  a
ld   d,h
and  d
ld   d,b
and  a
ld   d,b
and  d
ld   c,h
and  a
ld   c,d
and  d
ld   b,(hl)
nop  
ld   e,b
ld   e,(hl)
ld   h,h
ld   l,h
ld   e,b
ld   e,(hl)
ld   h,h
ld   l,h
ld   d,b
ld   d,h
ld   e,b
ld   e,(hl)
ld   d,b
ld   e,b
ld   e,(hl)
ld   h,h
nop  
and  a
ld   c,d
and  d
ld   c,h
and  a
ld   c,d
and  d
ld   b,(hl)
and  a
ld   b,(hl)
and  d
ld   b,h
and  a
ld   b,(hl)
and  d
ld   c,d
and  a
ld   c,h
and  d
ld   d,b
and  a
ld   c,h
and  d
ld   c,d
and  a
ld   c,d
and  d
ld   b,(hl)
and  a
ld   c,d
and  d
ld   c,h
and  a
ld   d,b
and  d
ld   c,(hl)
and  a
ld   d,b
and  d
ld   d,d
and  a
ld   e,b
and  d
ld   d,h
and  a
ld   e,d
and  d
ld   d,h
and  a
ld   d,d
and  d
ld   d,b
and  a
ld   c,h
and  d
ld   c,d
and  d
ld   b,d
jr   c,7E39
ld   c,d
and  e
ld   b,d
ld   bc,4A00
ld   d,d
ld   e,b
ld   e,(hl)
ld   c,d
ld   e,b
ld   e,(hl)
ld   h,d
ld   d,h
ld   h,d
ld   l,b
ld   l,h
ld   d,h
ld   h,d
ld   l,b
ld   l,h
ld   b,(hl)
ld   c,h
ld   d,h
ld   e,(hl)
ld   b,(hl)
ld   c,h
ld   d,h
ld   e,d
ld   d,b
ld   e,b
ld   e,(hl)
ld   h,h
ld   d,b
ld   e,(hl)
ld   h,h
ld   l,h
ld   c,d
ld   d,b
ld   e,b
ld   e,(hl)
ld   c,d
ld   e,b
ld   e,(hl)
ld   h,d
ld   c,(hl)
ld   d,h
ld   e,d
ld   h,d
ld   c,(hl)
ld   d,h
ld   e,d
ld   h,(hl)
ld   d,b
ld   e,b
ld   e,(hl)
ld   h,h
ld   d,b
ld   e,(hl)
ld   h,h
ld   l,b
xor  b
ld   e,d
and  e
ld   bc,4900
ld   a,(hl)
nop  
nop  
ld   e,c
ld   a,(hl)
ld   l,b
ld   a,(hl)
ld   a,b
ld   a,(hl)
sbc  l
or   c
nop  
add  b
and  a
ld   bc,5EA1
ld   e,(hl)
and  (hl)
ld   l,b
and  c
ld   e,(hl)
and  h
ld   l,b
nop  
sbc  l
sub  c
nop  
add  b
and  a
ld   bc,54A1
ld   d,h
and  (hl)
ld   e,(hl)
and  c
ld   e,b
and  h
ld   e,(hl)
sbc  l
ld   a,(de)
ld   l,a
jr   nz,7E14
ld   bc,4EA1
ld   c,(hl)
and  (hl)
ld   e,b
and  c
ld   d,b
and  e
ld   e,b
ld   bc,01A7
and  c
ld   b,06
and  (hl)
dec  bc
and  c
ld   b,A0
ld   b,06
ld   b,06
ld   b,06
ld   b,06
and  e
ld   bc,7EB6
inc  hl
ld   a,a
or   (hl)
ld   a,(hl)
ld   l,(hl)
ld   a,a
rst  38
rst  38
adc  h
ld   a,(hl)
ld   (ff00+7E),a
ld   c,d
ld   a,a
ld   (ff00+7E),a
sub  c
ld   a,a
rst  38
rst  38
sbc  b
ld   a,(hl)
or   a,7E
ld   e,h
ld   a,a
or   a,7E
xor  c
ld   a,a
rst  38
rst  38
and  h
ld   a,(hl)
inc  c
ld   a,a
rst  38
rst  38
or   b
ld   a,(hl)
sbc  l
add  d
nop  
add  b
and  d
ld   d,h
and  c
ld   d,h
ld   d,h
ld   d,h
ld   c,d
ld   b,(hl)
ld   c,d
and  d
ld   d,h
and  c
ld   d,h
ld   d,h
ld   d,h
ld   e,b
ld   e,h
ld   e,b
and  d
ld   d,h
and  c
ld   d,h
ld   d,h
ld   e,b
ld   d,h
ld   d,d
ld   d,h
and  c
ld   e,b
ld   e,h
ld   e,b
ld   e,h
and  d
ld   e,b
and  c
ld   d,(hl)
ld   e,b
nop  
sbc  l
ld   h,d
nop  
add  b
and  d
ld   bc,0144
ld   b,b
ld   bc,0144
ld   b,(hl)
ld   bc,0144
ld   b,h
ld   bc,0140
ld   b,b
nop  
sbc  l
ld   a,(de)
ld   l,a
jr   nz,7E9D
ld   d,h
ld   d,h
ld   c,d
ld   d,d
ld   d,h
ld   d,h
ld   c,d
ld   e,b
ld   d,h
ld   d,h
ld   d,d
ld   d,h
ld   c,(hl)
ld   d,h
ld   c,d
ld   d,d
nop  
and  d
ld   b,0B
ld   b,0B
ld   b,0B
ld   b,0B
ld   b,0B
ld   b,0B
ld   b,A1
dec  bc
dec  bc
ld   b,A2
dec  bc
and  c
ld   b,00
and  d
ld   e,(hl)
and  c
ld   e,(hl)
ld   e,(hl)
ld   e,(hl)
ld   d,h
ld   d,b
ld   d,h
and  d
ld   e,(hl)
and  c
ld   e,(hl)
ld   e,(hl)
ld   e,(hl)
ld   h,d
ld   h,(hl)
ld   h,d
and  d
ld   e,(hl)
and  c
ld   e,(hl)
ld   e,h
and  d
ld   e,b
and  c
ld   e,b
ld   d,h
and  c
ld   d,d
ld   d,h
ld   d,d
ld   d,h
and  d
ld   d,d
and  c
ld   c,(hl)
ld   d,d
nop  
and  d
ld   bc,0146
ld   c,d
ld   bc,0146
ld   c,d
ld   bc,0146
ld   b,(hl)
ld   bc,0146
ld   b,(hl)
nop  
and  d
ld   b,(hl)
ld   d,h
ld   d,h
ld   d,h
ld   b,(hl)
ld   d,h
ld   d,h
ld   d,h
ld   b,(hl)
ld   d,h
ld   d,d
ld   e,b
ld   b,h
ld   d,d
ld   c,d
ld   e,b
nop  
and  d
ld   h,d
and  c
ld   h,d
ld   h,d
ld   h,d
ld   e,(hl)
ld   e,d
ld   e,(hl)
and  d
ld   h,d
and  c
ld   h,d
ld   h,d
ld   h,d
ld   e,(hl)
ld   e,d
ld   e,(hl)
and  d
ld   h,d
and  c
ld   c,d
ld   c,(hl)
and  d
ld   d,d
and  c
ld   c,d
ld   e,h
and  e
ld   e,b
and  c
ld   d,h
and  (hl)
ld   l,h
nop  
and  d
ld   bc,014A
ld   c,d
ld   bc,014A
ld   c,d
ld   bc,46A1
ld   b,(hl)
and  d
ld   b,(hl)
and  c
ld   b,(hl)
ld   b,(hl)
and  e
ld   b,(hl)
and  d
ld   b,h
ld   bc,A200
ld   b,d
ld   e,d
ld   d,b
ld   e,d
ld   b,d
ld   e,d
ld   d,b
ld   e,d
ld   c,d
and  c
ld   d,d
ld   d,d
and  d
ld   d,d
and  c
ld   d,d
ld   d,d
and  e
ld   d,d
and  d
ld   d,h
ld   bc,0000
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
jp   6553
jp   69D6
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop  
nop 
