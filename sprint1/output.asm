jp 028b
nop
nop
nop
nop
nop
jp 028b
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
add a
pop hl
ld e, a
ld d, 00
add hl, de
ld e, (hl)
inc hl
ld d, (hl)
push de
pop hl
jp hl
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
jp 01fd
rst 38
rst 38
rst 38
rst 38
rst 38
jp 2712
rst 38
rst 38
rst 38
rst 38
rst 38
jp 2712
rst 38
rst 38
rst 38
rst 38
rst 38
jp 017e
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
Header
jp 028b
call 2a2b
ld a, (ff00 + 41)
and 03
jr nz, fa
ld b, (hl)
ld a, (ff00 + 41)
and 03
jr nz, fa
ld a, (hl)
and b
ret
ld a, e
add a, (hl)
daa
ldi (hl), a
ld a, d
adc (hl)
daa
ldi (hl), a
ld a, 00
adc (hl)
daa
ld (hl), a
ld a, 01
ld (ff00 + e0), a
ret nc
ld a, 99
ldd (hl), a
ldd (hl), a
ld (hl), a
ret
push af
push hl
push de
push bc
call 018e
ld a, 01
ld (ff00 + cc), a
pop bc
pop de
pop hl
pop af
reti
ld a, (ff00 + cd)
rst 28
sbc e
ld bc, 01c2
rst 00
ld bc, 01dd
ld a, 28
ld a, (ff00 + e1)
cp 07
jr z, 08
cp 06
ret z
ld a, 06
ld (ff00 + e1), a
ret
ld a, (ff00 + 01)
cp 55
jr nz, 08
ld a, 29
ld (ff00 + cb), a
ld a, 01
jr 08
cp 29
ret nz
ld a, 55
ld (ff00 + cb), a
xor a
ld (ff00 + 02), a
ret
ld a, (ff00 + 01)
ld (ff00 + d0), a
ret
ld a, (ff00 + 01)
ld (ff00 + d0), a
ld a, (ff00 + cb)
cp 29
ret z
ld a, (ff00 + cf)
ld (ff00 + 01), a
ld a, ff
ld (ff00 + cf), a
ld a, 80
ld (ff00 + 02), a
ret
ld a, (ff00 + 01)
ld (ff00 + d0), a
ld a, (ff00 + cb)
cp 29
ret z
ld a, (ff00 + cf)
ld (ff00 + 01), a
ei
call 0b07
ld a, 80
ld (ff00 + 02), a
ret
ld a, (ff00 + cd)
cp 02
ret nz
xor a
ld (ff00 + 0f), a
ei
ret
push af
push bc
push de
push hl
ld a, (ff00 + ce)
and a
jr z, 12
ld a, (ff00 + cb)
cp 29
jr nz, 0c
xor a
ld (ff00 + ce), a
ld a, (ff00 + cf)
ld (ff00 + 01), a
ld hl, ff02
ld (hl), 81
call 2240
call 242c
call 2417
call 23fe
call 23ec
call 23dd
call 23ce
call 23bf
call 23b0
call 23a1
call 2392
call 2383
call 2358
call 2349
call 233a
call 232b
call 231c
call 230d
call 22fe
call 1f32
call ffb6
call 192e
ld a, (c0ce)
and a
jr z, 1a
ld a, (ff00 + 98)
cp 03
jr nz, 14
ld hl, 986d
call 249b
ld a, 01
ld (ff00 + e0), a
ld hl, 9c6d
call 249b
xor a
ld (c0ce), a
ld hl, ffe2
inc (hl)
xor a
ld (ff00 + 43), a
ld (ff00 + 42), a
inc a
ld (ff00 + 85), a
pop hl
pop de
pop bc
pop af
reti
xor a
ld hl, dfff
ld c, 10
ld b, 00
ldd (hl), a
dec b
jr nz, fc
dec c
jr nz, f9
ld a, 01
di
ld (ff00 + 0f), a
ld (ff00 + ff), a
xor a
ld (ff00 + 42), a
ld (ff00 + 43), a
ld (ff00 + a4), a
ld (ff00 + 41), a
ld (ff00 + 01), a
ld (ff00 + 02), a
ld a, 80
ld (ff00 + 40), a
ld a, (ff00 + 44)
cp 94
jr nz, fa
ld a, 03
ld (ff00 + 40), a
ld a, e4
ld (ff00 + 47), a
ld (ff00 + 48), a
ld a, c4
ld (ff00 + 49), a
ld hl, ff26
ld a, 80
ldd (hl), a
ld a, ff
ldd (hl), a
ld (hl), 77
ld a, 01
ld (2000), a
ld sp, cfff
xor a
ld hl, dfff
ld b, 00
ldd (hl), a
dec b
jr nz, fc
ld hl, cfff
ld c, 10
ld b, 00
ldd (hl), a
dec b
jr nz, fc
dec c
jr nz, f9
ld hl, 9fff
ld c, 20
xor a
ld b, 00
ldd (hl), a
dec b
jr nz, fc
dec c
jr nz, f9
ld hl, feff
ld b, 00
ldd (hl), a
dec b
jr nz, fc
ld hl, fffe
ld b, 80
ldd (hl), a
dec b
jr nz, fc
ld c, b6
ld b, 0c
ld hl, 2ac7
ldi a, (hl)
ld (ff00 + c), a
inc c
dec b
jr nz, fa
call 27e9
call 7ff3
ld a, 09
ld (ff00 + ff), a
ld a, 37
ld (ff00 + c0), a
ld a, 1c
ld (ff00 + c1), a
ld a, 24
ld (ff00 + e1), a
ld a, 80
ld (ff00 + 40), a
ei
xor a
ld (ff00 + 0f), a
ld (ff00 + 4a), a
ld (ff00 + 4b), a
ld (ff00 + 06), a
call 29fa
call 0377
call 7ff0
ld a, (ff00 + 80)
and 0f
cp 0f
jp z, 029a
ld hl, ffa6
ld b, 02
ld a, (hl)
and a
jr z, 01
dec (hl)
inc l
dec b
jr nz, f7
ld a, (ff00 + c5)
and a
jr z, 04
ld a, 09
ld (ff00 + ff), a
ld a, (ff00 + 85)
and a
jr z, fb
xor a
ld (ff00 + 85), a
jp 0343
ld a, (ff00 + e1)
rst 28
add hl, hl
inc e
dec a
dec e
xor b
ld (de), a
rst 18
ld (de), a
ld h, c
dec e
add a, c
dec e
add hl, de
inc b
and 04
xor b
inc d
ld a, (ff00 + 14)
ld l, e
ld a, (de)
dec de
ld e, 71
rra
ld a, d
rra
adc c
dec d
inc d
dec d
rst 18
dec d
inc hl
ld d, 8d
ld d, de
ld d, 4f
rla
ld (hl), a
add hl, de
unknown
ld b, 99
rlca
sub d
ld (0953), sp
sub l
dec bc
ld c, a
dec c
ld b, c
dec bc
sub (hl)
dec c
add a
ld c, 76
ld de, 0dfd
xor 0e
add hl, hl
ld e, 9c
ld e, e6
inc bc
stop
cb 11
ld c, d
ld (de), a
ld h, b
ld (de), a
add a, b
ld (de), a
inc (hl)
ld b, 64
ld b, 17
inc de
ld l, c
inc de
adc b
inc de
or l
inc de
cb 13
ld (ff00 + c), a
inc de
add hl, de
inc d
ld c, c
inc d
ld a, a
inc de
ld a, 28
call 2874
call 282b
ld de, 4a4f
call 283f
call 17ee
ld hl, c300
ld de, 64d0
ld a, (de)
ldi (hl), a
inc de
ld a, h
cp c4
jr nz, f8
ld a, d3
ld (ff00 + 40), a
ld a, 7d
ld (ff00 + a6), a
ld a, 25
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 06
ld (ff00 + e1), a
ret
call 2874
xor a
ld (ff00 + e9), a
ld (ff00 + 98), a
ld (ff00 + 9c), a
ld (ff00 + 9b), a
ld (ff00 + fb), a
ld (ff00 + 9f), a
ld (ff00 + e3), a
ld (ff00 + e7), a
ld (ff00 + c7), a
call 22f3
call 26a5
call 282b
ld hl, c800
ld a, 2f
ldi (hl), a
ld a, h
cp cc
jr nz, f8
ld hl, c801
call 26fd
ld hl, c80c
call 26fd
ld hl, ca41
ld b, 0c
ld a, 8e
ldi (hl), a
dec b
jr nz, fc
ld de, 4bb7
call 283f
call 17ee
ld hl, c000
ld (hl), 80
inc l
ld (hl), 10
inc l
ld (hl), 58
ld a, 03
ld (dfe8), a
ld a, d3
ld (ff00 + 40), a
ld a, 07
ld (ff00 + e1), a
ld a, 7d
ld (ff00 + a6), a
ld a, 04
ld (ff00 + c6), a
ld a, (ff00 + e4)
and a
ret nz
ld a, 13
ld (ff00 + c6), a
ret
ld a, 37
ld (ff00 + c0), a
ld a, 09
ld (ff00 + c2), a
xor a
ld (ff00 + c5), a
ld (ff00 + b0), a
ld (ff00 + ed), a
ld (ff00 + ea), a
ld a, 63
ld (ff00 + eb), a
ld a, 30
ld (ff00 + ec), a
ld a, (ff00 + e4)
cp 02
ld a, 02
jr nz, 1a
ld a, 77
ld (ff00 + c0), a
ld a, 09
ld (ff00 + c3), a
ld a, 02
ld (ff00 + c4), a
ld a, 64
ld (ff00 + eb), a
ld a, 30
ld (ff00 + ec), a
ld a, 11
ld (ff00 + b0), a
ld a, 01
ld (ff00 + e4), a
ld a, 0a
ld (ff00 + e1), a
call 2874
call 2801
ld de, 4d1f
call 283f
call 17ee
ld a, d3
ld (ff00 + 40), a
ret
ld a, ff
ld (ff00 + e9), a
ret
ld a, (ff00 + a6)
and a
jr nz, 0a
ld hl, ffc6
dec (hl)
jr z, 9b
ld a, 7d
ld (ff00 + a6), a
call 0b07
ld a, 55
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, 0a
ld a, (ff00 + cb)
and a
jr nz, 3a
xor a
ld (ff00 + cc), a
jr 67
ld a, (ff00 + 81)
ld b, a
ld a, (ff00 + c5)
cb 50
jr nz, 48
cb 60
jr nz, 53
cb 68
jr nz, 54
cb 58
ret z
and a
ld a, 08
jr z, 2c
ld a, b
cp 08
ret nz
ld a, (ff00 + cb)
cp 29
jr z, 12
ld a, 29
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + cb)
and a
jr z, 32
ld a, 2a
ld (ff00 + e1), a
xor a
ld (ff00 + a6), a
ld (ff00 + c2), a
ld (ff00 + c3), a
ld (ff00 + c4), a
ld (ff00 + e4), a
ret
push af
ld a, (ff00 + 80)
cb 7f
jr z, 02
ld (ff00 + f4), a
pop af
jr e6
xor 01
ld (ff00 + c5), a
and a
ld a, 10
jr z, 02
ld a, 60
ld (c001), a
ret
and a
ret nz
xor a
jr ec
and a
ret z
xor a
jr e9
ld a, (ff00 + e4)
and a
ret z
call 0b07
xor a
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + 81)
cb 5f
jr z, 0d
ld a, 33
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, 06
ld (ff00 + e1), a
ret
ld hl, ffb0
ld a, (ff00 + e4)
cp 02
ld b, 10
jr z, 02
ld b, 1d
ld a, (hl)
cp b
ret nz
ld a, 06
ld (ff00 + e1), a
ret
ld a, (ff00 + e4)
and a
ret z
ld a, (ff00 + e9)
cp ff
ret z
ld a, (ff00 + ea)
and a
jr z, 05
dec a
ld (ff00 + ea), a
jr 1c
ld a, (ff00 + eb)
ld h, a
ld a, (ff00 + ec)
ld l, a
ldi a, (hl)
ld b, a
ld a, (ff00 + ed)
xor b
and b
ld (ff00 + 81), a
ld a, b
ld (ff00 + ed), a
ldi a, (hl)
ld (ff00 + ea), a
ld a, h
ld (ff00 + eb), a
ld a, l
ld (ff00 + ec), a
jr 03
xor a
ld (ff00 + 81), a
ld a, (ff00 + 80)
ld (ff00 + ee), a
ld a, (ff00 + ed)
ld (ff00 + 80), a
ret
xor a
ld (ff00 + ed), a
jr ef
ret
ld a, (ff00 + e4)
and a
ret z
ld a, (ff00 + e9)
cp ff
ret nz
ld a, (ff00 + 80)
ld b, a
ld a, (ff00 + ed)
cp b
jr z, 19
ld a, (ff00 + eb)
ld h, a
ld a, (ff00 + ec)
ld l, a
ld a, (ff00 + ed)
ldi (hl), a
ld a, (ff00 + ea)
ldi (hl), a
ld a, h
ld (ff00 + eb), a
ld a, l
ld (ff00 + ec), a
ld a, b
ld (ff00 + ed), a
xor a
ld (ff00 + ea), a
ret
ld a, (ff00 + ea)
inc a
ld (ff00 + ea), a
ret
ld a, (ff00 + e4)
and a
ret z
ld a, (ff00 + e9)
and a
ret nz
ld a, (ff00 + ee)
ld (ff00 + 80), a
ret
ld hl, ff02
cb fe
jr 0a
ld a, 03
ld (ff00 + cd), a
ld a, (ff00 + cb)
cp 29
jr nz, ef
call 14b3
ld a, 80
ld (c210), a
call 26c5
ld (ff00 + ce), a
xor a
ld (ff00 + 01), a
ld (ff00 + cf), a
ld (ff00 + dc), a
ld (ff00 + d2), a
ld (ff00 + d3), a
ld (ff00 + d4), a
ld (ff00 + d5), a
ld (ff00 + e3), a
call 7ff3
ld a, 2b
ld (ff00 + e1), a
ret
ld a, (ff00 + cb)
cp 29
jr z, 16
ld a, (ff00 + f0)
and a
jr z, 1e
xor a
ld (ff00 + f0), a
ld de, c201
call 14f6
call 157b
call 26c5
jr 0d
ld a, (ff00 + 81)
cb 47
jr nz, 07
cb 5f
jr nz, 03
call 1514
ld a, (ff00 + cb)
cp 29
jr z, 1e
ld a, (ff00 + cc)
and a
ret z
xor a
ld (ff00 + cc), a
ld a, 39
ld (ff00 + cf), a
ld a, (ff00 + d0)
cp 50
jr z, 2d
ld b, a
ld a, (ff00 + c1)
cp b
ret z
ld a, b
ld (ff00 + c1), a
ld a, 01
ld (ff00 + f0), a
ret
ld a, (ff00 + 81)
cb 5f
jr nz, 22
cb 47
jr nz, 1e
ld a, (ff00 + cc)
and a
ret z
xor a
ld (ff00 + cc), a
ld a, (ff00 + cf)
cp 50
jr z, 09
ld a, (ff00 + c1)
ld (ff00 + cf), a
ld a, 01
ld (ff00 + ce), a
ret
call 17ee
ld a, 16
ld (ff00 + e1), a
ret
ld a, 50
jr ed
ld hl, ff02
cb fe
jr 1f
ld a, 03
ld (ff00 + cd), a
ld a, (ff00 + cb)
cp 29
jr nz, ef
call 0b10
call 0b10
call 0b10
ld b, 00
ld hl, c300
call 0b10
ldi (hl), a
dec b
jr nz, f9
call 2874
call 2801
ld de, 525c
call 283f
call 17ee
ld a, 2f
call 2038
ld a, 03
ld (ff00 + ce), a
xor a
ld (ff00 + 01), a
ld (ff00 + cf), a
ld (ff00 + dc), a
ld (ff00 + d2), a
ld (ff00 + d3), a
ld (ff00 + d4), a
ld (ff00 + d5), a
ld (ff00 + e3), a
ld (ff00 + cc), a
ld hl, c400
ld b, 0a
ld a, 28
ldi (hl), a
dec b
jr nz, fc
ld a, (ff00 + d6)
and a
jp nz, 07da
call 157b
ld a, d3
ld (ff00 + 40), a
ld hl, c080
ld de, 0772
ld b, 20
call 0792
ld hl, c200
ld de, 2741
ld c, 02
call 17da
call 087b
call 26c5
xor a
ld (ff00 + d7), a
ld (ff00 + d8), a
ld (ff00 + d9), a
ld (ff00 + da), a
ld (ff00 + db), a
ld a, 17
ld (ff00 + e1), a
ret
ld b, b
jr z, ae
nop
ld b, b
jr nc, ae
jr nz, 48
jr z, af
nop
ld c, b
jr nc, af
jr nz, 78
jr z, c0
nop
ld a, b
jr nc, c0
jr nz, 80
jr z, c1
nop
add a, b
jr nc, c1
jr nz, 1a
ldi (hl), a
inc de
dec b
jr nz, fa
ret
ld a, (ff00 + cb)
cp 29
jr z, 23
ld a, (ff00 + cc)
and a
jr z, 13
ld a, (ff00 + d0)
cp 60
jr z, 2d
cp 06
jr nc, 02
ld (ff00 + ac), a
ld a, (ff00 + ad)
ld (ff00 + cf), a
xor a
ld (ff00 + cc), a
ld de, c210
call 17ca
ld hl, ffad
jr 68
ld a, (ff00 + 81)
cb 5f
jr z, 04
ld a, 60
jr 4d
ld a, (ff00 + cc)
and a
jr z, 50
ld a, (ff00 + cf)
cp 60
jr nz, 38
call 17ee
ld a, (ff00 + d6)
and a
jr nz, 18
ld a, 18
ld (ff00 + e1), a
ld a, (ff00 + cb)
cp 29
ret nz
xor a
ld (ff00 + a0), a
ld a, 06
ld de, ffe0
ld hl, c9a2
call 1bc3
ret
ld a, (ff00 + cb)
cp 29
jp nz, 0895
xor a
ld (ff00 + a0), a
ld a, 06
ld de, ffe0
ld hl, c9a2
call 1bc3
jp 0895
ld a, (ff00 + d0)
cp 06
jr nc, 02
ld (ff00 + ad), a
ld a, (ff00 + ac)
ld (ff00 + cf), a
xor a
ld (ff00 + cc), a
inc a
ld (ff00 + ce), a
ld de, c200
call 17ca
ld hl, ffac
ld a, (hl)
cb 60
jr nz, 14
cb 68
jr nz, 22
cb 70
jr nz, 24
cb 78
jr z, 13
cp 03
jr nc, 0f
add a, 03
jr 05
cp 05
jr z, 07
inc a
ld (hl), a
ld a, 01
ld (dfe0), a
call 087b
call 26c5
ret
and a
jr z, f6
dec a
jr ed
cp 03
jr c, ef
sub 03
jr e5
ld b, b
ld h, b
ld b, b
ld (hl), b
ld b, b
add a, b
ld d, b
ld h, b
ld d, b
ld (hl), b
ld d, b
add a, b
ld a, b
ld h, b
ld a, b
ld (hl), b
ld a, b
add a, b
adc b
ld h, b
adc b
ld (hl), b
adc b
add a, b
ld a, (ff00 + ac)
ld de, c201
ld hl, 0863
call 17b9
ld a, (ff00 + ad)
ld de, c211
ld hl, 086f
call 17b9
ret
call 2874
xor a
ld (c210), a
ld (ff00 + 98), a
ld (ff00 + 9c), a
ld (ff00 + 9b), a
ld (ff00 + fb), a
ld (ff00 + 9f), a
ld (ff00 + cc), a
ld (ff00 + 01), a
ld (ff00 + ce), a
ld (ff00 + d0), a
ld (ff00 + cf), a
ld (ff00 + d1), a
call 26a5
call 22f3
call 204d
xor a
ld (ff00 + e3), a
ld (ff00 + e7), a
call 17ee
ld de, 53c4
push de
ld a, 01
ld (ff00 + a9), a
ld (ff00 + c5), a
call 283f
pop de
ld hl, 9c00
call 2842
ld de, 288d
ld hl, 9c63
ld c, 0a
call 1fd8
ld hl, c200
ld de, 2713
call 270a
ld hl, c210
ld de, 271b
call 270a
ld hl, 9951
ld a, 30
ld (ff00 + 9e), a
ld (hl), 00
dec l
ld (hl), 03
call 1b43
xor a
ld (ff00 + a0), a
ld a, (ff00 + cb)
cp 29
ld de, 0943
ld a, (ff00 + ac)
jr z, 05
ld de, 0933
ld a, (ff00 + ad)
ld hl, 98b0
ld (hl), a
ld h, 9c
ld (hl), a
ld hl, c080
ld b, 10
call 0792
ld a, 77
ld (ff00 + c0), a
ld a, d3
ld (ff00 + 40), a
ld a, 19
ld (ff00 + e1), a
ld a, 01
ld (ff00 + cd), a
ret
jr 84
ret nz
nop
jr 8c
ret nz
jr nz, 20
add a, h
pop bc
nop
jr nz, 8c
pop bc
jr nz, 18
add a, h
xor (hl)
nop
jr 8c
xor (hl)
jr nz, 20
add a, h
xor a
nop
jr nz, 8c
xor a
jr nz, 3e
ld (ffe0), sp
xor a
ld (ff00 + 0f), a
ld a, (ff00 + cb)
cp 29
jp nz, 0a65
call 0b07
call 0b07
xor a
ld (ff00 + cc), a
ld a, 29
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 55
jr nz, e4
ld de, 0016
ld c, 0a
ld hl, c902
ld b, 0a
xor a
ld (ff00 + cc), a
call 0b07
ldi a, (hl)
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
dec b
jr nz, eb
add hl, de
dec c
jr nz, e5
ld a, (ff00 + ac)
cp 05
jr z, 3d
ld hl, ca22
ld de, 0040
add hl, de
inc a
cp 05
jr nz, fa
ld de, ca22
ld c, 0a
ld b, 0a
ld a, (de)
ldi (hl), a
inc e
dec b
jr nz, fa
push de
ld de, ffd6
add hl, de
pop de
push hl
ld hl, ffd6
add hl, de
push hl
pop de
pop hl
dec c
jr nz, e7
ld de, ffd6
ld b, 0a
ld a, h
cp c8
jr z, 09
ld a, 2f
ldi (hl), a
dec b
jr nz, fc
add hl, de
jr f0
call 0b07
call 0b07
xor a
ld (ff00 + cc), a
ld a, 29
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 55
jr nz, e4
ld hl, c300
ld b, 00
xor a
ld (ff00 + cc), a
ldi a, (hl)
call 0b07
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
inc b
jr nz, eb
call 0b07
call 0b07
xor a
ld (ff00 + cc), a
ld a, 30
ld (ff00 + 01), a
ld a, 81
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 56
jr nz, e4
call 0afb
ld a, 09
ld (ff00 + ff), a
ld a, 1c
ld (ff00 + e1), a
ld a, 02
ld (ff00 + e3), a
ld a, 03
ld (ff00 + cd), a
ld a, (ff00 + cb)
cp 29
jr z, 05
ld hl, ff02
cb fe
ld hl, c300
ldi a, (hl)
ld (c203), a
ldi a, (hl)
ld (c213), a
ld a, h
ld (ff00 + af), a
ld a, l
ld (ff00 + b0), a
ret
ld a, (ff00 + ad)
inc a
ld b, a
ld hl, ca42
ld de, ffc0
dec b
jr z, 03
add hl, de
jr fa
call 0b07
xor a
ld (ff00 + cc), a
ld a, 55
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 29
jr nz, e7
ld de, 0016
ld c, 0a
ld b, 0a
xor a
ld (ff00 + cc), a
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
ldi (hl), a
dec b
jr nz, ec
add hl, de
dec c
jr nz, e6
call 0b07
xor a
ld (ff00 + cc), a
ld a, 55
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 29
jr nz, e7
ld b, 00
ld hl, c300
xor a
ld (ff00 + cc), a
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
ldi (hl), a
inc b
jr nz, ec
call 0b07
xor a
ld (ff00 + cc), a
ld a, 56
ld (ff00 + 01), a
ld a, 80
ld (ff00 + 02), a
ld a, (ff00 + cc)
and a
jr z, fb
ld a, (ff00 + 01)
cp 30
jr nz, e7
jp 0a35
ld hl, ca42
ld a, 80
ld b, 0a
ldi (hl), a
dec b
jr nz, fc
ret
push bc
ld b, fa
ld b, b
dec b
jr nz, fc
pop bc
ret
push hl
push bc
ld a, (ff00 + fc)
and fc
ld c, a
ld h, 03
ld a, (ff00 + 04)
ld b, a
xor a
dec b
jr z, 0a
inc a
inc a
inc a
inc a
cp 1c
jr z, f4
jr f3
ld d, a
ld a, (ff00 + ae)
ld e, a
dec h
jr z, 07
or d
or c
and fc
cp c
jr z, e1
ld a, d
ld (ff00 + ae), a
ld a, e
ld (ff00 + fc), a
pop bc
pop hl
ret
ld a, 01
ld (ff00 + ff), a
ld a, (ff00 + e3)
and a
jr nz, 1c
ld b, 44
ld c, 20
call 11a3
ld a, 02
ld (ff00 + cd), a
call 26d7
call 26ea
call 157b
xor a
ld (ff00 + d6), a
ld a, 1a
ld (ff00 + e1), a
ret
cp 05
ret nz
ld hl, c030
ld b, 12
ld (hl), f0
inc hl
ld (hl), 10
inc hl
ld (hl), b6
inc hl
ld (hl), 80
inc hl
dec b
jr nz, f1
ld a, (c3ff)
ld b, 0a
ld hl, c400
dec a
jr z, 06
inc l
dec b
jr nz, f9
jr f2
ld (hl), 2f
ld a, 03
ld (ff00 + ce), a
ret
ld a, 01
ld (ff00 + ff), a
ld hl, c09c
xor a
ldi (hl), a
ld (hl), 50
inc l
ld (hl), 27
inc l
ld (hl), 00
call 1c68
call 1ce3
call 2515
call 20f7
call 2199
call 25f5
call 22ad
call 0bff
ld a, (ff00 + d5)
and a
jr z, 14
ld a, 77
ld (ff00 + cf), a
ld (ff00 + b1), a
ld a, aa
ld (ff00 + d1), a
ld a, 1b
ld (ff00 + e1), a
ld a, 05
ld (ff00 + a7), a
jr 10
ld a, (ff00 + e1)
cp 01
jr nz, 1b
ld a, aa
ld (ff00 + cf), a
ld (ff00 + b1), a
ld a, 77
ld (ff00 + d1), a
xor a
ld (ff00 + dc), a
ld (ff00 + d2), a
ld (ff00 + d3), a
ld (ff00 + d4), a
ld a, (ff00 + cb)
cp 29
jr nz, 02
ld (ff00 + ce), a
call 0c54
call 0cf0
ret
ld de, 0020
ld hl, c802
ld a, 2f
ld c, 12
ld b, 0a
push hl
cp (hl)
jr nz, 0a
inc hl
dec b
jr nz, f9
pop hl
add hl, de
dec c
jr nz, f1
push hl
pop hl
ld a, c
ld (ff00 + b1), a
cp 0c
ld a, (dfe9)
jr nc, 07
cp 08
ret nz
call 157b
ret
cp 08
ret z
ld a, (dff0)
cp 02
ret z
ld a, 08
ld (dfe8), a
ret
ld a, (ff00 + cb)
cp 29
jr z, 52
ld a, 01
ld (df7f), a
ld (ff00 + ab), a
ld a, (ff00 + cf)
ld (ff00 + f1), a
xor a
ld (ff00 + f2), a
ld (ff00 + cf), a
call 1d26
ret
ld a, (ff00 + cc)
and a
ret z
ld hl, c030
ld de, 0004
xor a
ld (ff00 + cc), a
ld a, (ff00 + d0)
cp aa
jr z, 61
cp 77
jr z, 49
cp 94
jr z, cb
ld b, a
and a
jr z, 51
cb 7f
jr nz, 6f
cp 13
jr nc, 17
ld a, 12
sub b
ld c, a
inc c
ld a, 98
ld (hl), a
add hl, de
sub 08
dec b
jr nz, f9
ld a, f0
dec c
jr z, 04
ld (hl), a
add hl, de
jr f9
ld a, (ff00 + dc)
and a
jr z, 07
or 80
ld (ff00 + b1), a
xor a
ld (ff00 + dc), a
ld a, ff
ld (ff00 + d0), a
ld a, (ff00 + cb)
cp 29
ld a, (ff00 + b1)
jr nz, 07
ld (ff00 + cf), a
ld a, 01
ld (ff00 + ce), a
ret
ld (ff00 + cf), a
ret
ld a, (ff00 + d1)
cp aa
jr z, 26
ld a, 77
ld (ff00 + d1), a
ld a, 01
ld (ff00 + e1), a
jr ce
ld c, 13
jr c1
ld a, (ff00 + d1)
cp 77
jr z, 12
ld a, aa
ld (ff00 + d1), a
ld a, 1b
ld (ff00 + e1), a
ld a, 05
ld (ff00 + a7), a
ld c, 01
ld b, 12
jr a0
ld a, 01
ld (ff00 + ef), a
jr ac
and 7f
cp 05
jr nc, a6
ld (ff00 + d2), a
jr ae
ld a, (ff00 + d3)
and a
jr z, 07
cb 7f
ret z
and 07
jr 0a
ld a, (ff00 + d2)
and a
ret z
ld (ff00 + d3), a
xor a
ld (ff00 + d2), a
ret
ld c, a
push bc
ld hl, c822
ld de, ffe0
add hl, de
dec c
jr nz, fc
ld de, c822
ld c, 11
ld b, 0a
ld a, (de)
ldi (hl), a
inc e
dec b
jr nz, fa
push de
ld de, 0016
add hl, de
pop de
push hl
ld hl, 0016
add hl, de
push hl
pop de
pop hl
dec c
jr nz, e7
pop bc
ld de, c400
ld b, 0a
ld a, (de)
ldi (hl), a
inc de
dec b
jr nz, fa
push de
ld de, 0016
add hl, de
pop de
dec c
jr nz, ec
ld a, 02
ld (ff00 + e3), a
ld (ff00 + d4), a
xor a
ld (ff00 + d3), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 01
ld (ff00 + ff), a
ld a, 03
ld (ff00 + cd), a
ld a, (ff00 + d1)
cp 77
jr nz, 0c
ld a, (ff00 + d0)
cp aa
jr nz, 10
ld a, 01
ld (ff00 + ef), a
jr 0a
cp aa
jr nz, 06
ld a, (ff00 + d0)
cp 77
jr z, f0
ld b, 34
ld c, 43
call 11a3
xor a
ld (ff00 + e3), a
ld a, (ff00 + d1)
cp aa
ld a, 1e
jr nz, 02
ld a, 1d
ld (ff00 + e1), a
ld a, 28
ld (ff00 + a6), a
ld a, 1d
ld (ff00 + c6), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, (ff00 + ef)
and a
jr nz, 05
ld a, (ff00 + d7)
inc a
ld (ff00 + d7), a
call 0fd3
ld de, 274d
ld a, (ff00 + cb)
cp 29
jr z, 03
ld de, 275f
ld hl, c200
ld c, 03
call 17da
ld a, 19
ld (ff00 + a6), a
ld a, (ff00 + ef)
and a
jr z, 05
ld hl, c220
ld (hl), 80
ld a, 03
call 26c7
ld a, 20
ld (ff00 + e1), a
ld a, 09
ld (dfe8), a
ld a, (ff00 + d7)
cp 05
ret nz
ld a, 11
ld (dfe8), a
ret
ld a, (ff00 + d7)
cp 05
jr nz, 07
ld a, (ff00 + c6)
and a
jr z, 08
jr 22
ld a, (ff00 + 81)
cb 5f
jr z, 1c
ld a, 60
ld (ff00 + cf), a
ld (ff00 + ce), a
jr 1d
ld a, 01
ld (ff00 + ff), a
ld a, (ff00 + cc)
jr z, 0c
ld a, (ff00 + cb)
cp 29
jr z, d7
ld a, (ff00 + d0)
cp 60
jr z, 09
call 0e21
ld a, 03
call 26c7
ret
ld a, 1f
ld (ff00 + e1), a
ld (ff00 + cc), a
ret
ld a, (ff00 + a6)
and a
jr nz, 23
ld hl, ffc6
dec (hl)
ld a, 19
ld (ff00 + a6), a
call 0fc4
ld hl, c201
ld a, (hl)
xor 30
ldi (hl), a
cp 60
call z, 0f7b
inc l
push af
ld a, (hl)
xor 01
ld (hl), a
ld l, 13
ldd (hl), a
pop af
dec l
ld (hl), a
ld a, (ff00 + d7)
cp 05
jr nz, 28
ld a, (ff00 + c6)
ld hl, c221
cp 06
jr z, 1b
cp 08
jr nc, 1b
ld a, (hl)
cp 72
jr nc, 06
cp 69
ret z
inc (hl)
inc (hl)
ret
ld (hl), 69
inc l
inc l
ld (hl), 57
ld a, 06
ld (dfe0), a
ret
dec l
ld (hl), 80
ret
ld a, (ff00 + a7)
and a
ret nz
ld a, 0f
ld (ff00 + a7), a
ld hl, c223
ld a, (hl)
xor 01
ld (hl), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, (ff00 + ef)
and a
jr nz, 05
ld a, (ff00 + d8)
inc a
ld (ff00 + d8), a
call 0fd3
ld de, 2771
ld a, (ff00 + cb)
cp 29
jr z, 03
ld de, 277d
ld hl, c200
ld c, 02
call 17da
ld a, 19
ld (ff00 + a6), a
ld a, (ff00 + ef)
and a
jr z, 05
ld hl, c210
ld (hl), 80
ld a, 02
call 26c7
ld a, 21
ld (ff00 + e1), a
ld a, 09
ld (dfe8), a
ld a, (ff00 + d8)
cp 05
ret nz
ld a, 11
ld (dfe8), a
ret
ld a, (ff00 + d8)
cp 05
jr nz, 07
ld a, (ff00 + c6)
and a
jr z, 08
jr 22
ld a, (ff00 + 81)
cb 5f
jr z, 1c
ld a, 60
ld (ff00 + cf), a
ld (ff00 + ce), a
jr 1d
ld a, 01
ld (ff00 + ff), a
ld a, (ff00 + cc)
jr z, 0c
ld a, (ff00 + cb)
cp 29
jr z, d7
ld a, (ff00 + d0)
cp 60
jr z, 09
call 0f12
ld a, 02
call 26c7
ret
ld a, 1f
ld (ff00 + e1), a
ld (ff00 + cc), a
ret
ld a, (ff00 + a6)
and a
jr nz, 1c
ld hl, ffc6
dec (hl)
ld a, 19
ld (ff00 + a6), a
call 0fc4
ld hl, c211
ld a, (hl)
xor 08
ldi (hl), a
cp 68
call z, 0f7b
inc l
ld a, (hl)
xor 01
ld (hl), a
ld a, (ff00 + d8)
cp 05
jr nz, 32
ld a, (ff00 + c6)
ld hl, c201
cp 05
jr z, 25
cp 06
jr z, 11
cp 08
jr nc, 21
ld a, (hl)
cp 72
jr nc, 18
cp 61
ret z
inc (hl)
inc (hl)
inc (hl)
inc (hl)
ret
dec l
ld (hl), 00
inc l
ld (hl), 61
inc l
inc l
ld (hl), 56
ld a, 06
ld (dfe0), a
ret
dec l
ld (hl), 80
ret
ld a, (ff00 + a7)
and a
ret nz
ld a, 0f
ld (ff00 + a7), a
ld hl, c203
ld a, (hl)
xor 01
ld (hl), a
ret
push af
push hl
ld a, (ff00 + d7)
cp 05
jr z, 1a
ld a, (ff00 + d8)
cp 05
jr z, 14
ld a, (ff00 + cb)
cp 29
jr nz, 0e
ld hl, c060
ld b, 24
ld de, 0fa0
ld a, (de)
ldi (hl), a
inc de
dec b
jr nz, fa
pop hl
pop af
ret
ld b, d
jr nc, 0d
nop
ld b, d
jr c, b2
nop
ld b, d
ld b, b
ld c, 00
ld b, d
ld c, b
inc e
nop
ld b, d
ld e, b
ld c, 00
ld b, d
ld h, b
dec e
nop
ld b, d
ld l, b
or l
nop
ld b, d
ld (hl), b
cp e
nop
ld b, d
ld a, b
dec e
nop
ld hl, c060
ld de, 0004
ld b, 09
xor a
ld (hl), a
add hl, de
dec b
jr nz, fb
ret
call 2874
ld hl, 55f4
ld bc, 1000
call 2838
call 27e9
ld hl, 9800
ld de, 552c
ld b, 04
call 2844
ld hl, 9980
ld b, 06
call 2844
ld a, (ff00 + cb)
cp 29
jr nz, 22
ld hl, 9841
ld (hl), bd
inc l
ld (hl), b2
inc l
ld (hl), 2e
inc l
ld (hl), be
inc l
ld (hl), 2e
ld hl, 9a01
ld (hl), b4
inc l
ld (hl), b5
inc l
ld (hl), bb
inc l
ld (hl), 2e
inc l
ld (hl), bc
ld a, (ff00 + ef)
and a
jr nz, 03
call 10e9
ld a, (ff00 + d7)
and a
jr z, 49
cp 05
jr nz, 16
ld hl, 98a5
ld b, 0b
ld a, (ff00 + cb)
cp 29
ld de, 1157
jr z, 03
ld de, 1162
call 113c
ld a, 04
ld c, a
ld a, (ff00 + cb)
cp 29
ld a, 93
jr nz, 02
ld a, 8f
ld (ff00 + a0), a
ld hl, 99e7
call 10ce
ld a, (ff00 + d9)
and a
jr z, 17
ld a, ac
ld (ff00 + a0), a
ld hl, 99f0
ld c, 01
call 10ce
ld hl, 98a6
ld de, 116d
ld b, 09
call 113c
ld a, (ff00 + d8)
and a
jr z, 3e
cp 05
jr nz, 16
ld hl, 98a5
ld b, 0b
ld a, (ff00 + cb)
cp 29
ld de, 1162
jr z, 03
ld de, 1157
call 113c
ld a, 04
ld c, a
ld a, (ff00 + cb)
cp 29
ld a, 8f
jr nz, 02
ld a, 93
ld (ff00 + a0), a
ld hl, 9827
call 10ce
ld a, (ff00 + da)
and a
jr z, 0c
ld a, ac
ld (ff00 + a0), a
ld hl, 9830
ld c, 01
call 10ce
ld a, (ff00 + db)
and a
jr z, 0b
ld hl, 98a7
ld de, 1151
ld b, 06
call 113c
ld a, d3
ld (ff00 + 40), a
call 17ee
ret
ld a, (ff00 + a0)
push hl
ld de, 0020
ld b, 02
push hl
ldi (hl), a
inc a
ld (hl), a
inc a
pop hl
add hl, de
dec b
jr nz, f6
pop hl
ld de, 0003
add hl, de
dec c
jr nz, e6
ret
ld hl, ffd7
ld de, ffd8
ld a, (ff00 + d9)
and a
jr nz, 3a
ld a, (ff00 + da)
and a
jr nz, 3c
ld a, (ff00 + db)
and a
jr nz, 21
ld a, (hl)
cp 04
jr z, 11
ld a, (de)
cp 04
ret nz
ld a, 05
ld (de), a
jr 0a
ld a, (de)
cp 03
ret nz
ld a, 03
jr 05
ld (hl), 05
xor a
ld (ff00 + db), a
xor a
ld (ff00 + d9), a
ld (ff00 + da), a
ret
ld a, (hl)
cp 04
jr nz, 06
ld (ff00 + d9), a
xor a
ld (ff00 + db), a
ret
ld (ff00 + da), a
jr f8
ld a, (hl)
cp 05
jr z, e1
jr db
ld a, (de)
cp 05
jr z, cd
jr d4
push bc
push hl
ld a, (de)
ldi (hl), a
inc de
dec b
jr nz, fa
pop hl
ld de, 0020
add hl, de
pop bc
ld a, b6
ldi (hl), a
dec b
jr nz, fc
ret
or b
or c
or d
or e
or c
ld a, b4
or l
cp e
ld l, bc
cpl
dec l
ld l, 3d
ld c, 3e
cp l
or d
ld l, be
ld l, 2f
dec l
ld l, 3d
ld c, 3e
or l
or b
ld b, c
or l
dec a
dec e
or l
cp (hl)
or c
ld a, 01
ld (ff00 + ff), a
ld a, (ff00 + a6)
and a
ret nz
call 17ee
xor a
ld (ff00 + ef), a
ld b, 27
ld c, 79
call 11a3
call 7ff3
ld a, (ff00 + d7)
cp 05
jr z, 0a
ld a, (ff00 + d8)
cp 05
jr z, 04
ld a, 01
ld (ff00 + d6), a
ld a, 16
ld (ff00 + e1), a
ret
ld a, (ff00 + cc)
and a
jr z, 14
xor a
ld (ff00 + cc), a
ld a, (ff00 + cb)
cp 29
ld a, (ff00 + d0)
jr nz, 11
cp b
jr z, 08
ld a, 02
ld (ff00 + cf), a
ld (ff00 + ce), a
pop hl
ret
ld a, c
ld (ff00 + cf), a
ld (ff00 + ce), a
ret
cp c
ret z
ld a, b
ld (ff00 + cf), a
pop hl
ret
call 1216
ld hl, 9ce6
ld de, 147f
ld b, 07
call 149b
ld hl, 9ce7
ld de, 1486
ld b, 07
call 149b
ld hl, 9d08
ld (hl), 72
inc l
ld (hl), c4
ld hl, 9d28
ld (hl), b7
inc l
ld (hl), b8
ld de, 27c5
ld hl, c200
ld c, 03
call 17da
ld a, 03
call 26c7
ld a, db
ld (ff00 + 40), a
ld a, bb
ld (ff00 + a6), a
ld a, 27
ld (ff00 + e1), a
ld a, 10
ld (dfe8), a
ret
call 2874
ld hl, 55f4
ld bc, 1000
call 2838
ld hl, 9fff
call 27ec
ld hl, 9dc0
ld de, 520c
ld b, 04
call 2844
ld hl, 9cec
ld de, 148d
ld b, 07
call 149b
ld hl, 9ced
ld de, 1494
ld b, 07
call 149b
ret
ld a, (ff00 + a6)
and a
ret nz
ld hl, c210
ld (hl), 00
ld l, 20
ld (hl), 00
ld a, ff
ld (ff00 + a6), a
ld a, 28
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
jr z, 04
call 145e
ret
ld a, 29
ld (ff00 + e1), a
ld hl, c213
ld (hl), 35
ld l, 23
ld (hl), 35
ld a, ff
ld (ff00 + a6), a
ld a, 2f
call 2032
ret
ld a, (ff00 + a6)
and a
jr z, 04
call 145e
ret
ld a, 02
ld (ff00 + e1), a
ld hl, 9d08
ld b, 2f
call 1a63
ld hl, 9d09
call 1a63
ld hl, 9d28
call 1a63
ld hl, 9d29
call 1a63
ret
ld a, (ff00 + a6)
and a
jr nz, 2e
ld a, 0a
ld (ff00 + a6), a
ld hl, c201
dec (hl)
ld a, (hl)
cp 58
jr nz, 21
ld hl, c210
ld (hl), 00
inc l
add a, 20
ldi (hl), a
ld (hl), 4c
inc l
ld (hl), 40
ld l, 20
ld (hl), 80
ld a, 03
call 26c7
ld a, 03
ld (ff00 + e1), a
ld a, 04
ld (dff8), a
ret
call 145e
ret
ld a, (ff00 + a6)
and a
jr nz, 1d
ld a, 0a
ld (ff00 + a6), a
ld hl, c211
dec (hl)
ld l, 01
dec (hl)
ld a, (hl)
cp d0
jr nz, 0d
ld a, 9c
ld (ff00 + c9), a
ld a, 82
ld (ff00 + ca), a
ld a, 2c
ld (ff00 + e1), a
ret
ld a, (ff00 + a7)
and a
jr nz, 0b
ld a, 06
ld (ff00 + a7), a
ld hl, c213
ld a, (hl)
xor 01
ld (hl), a
ld a, 03
call 26c7
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 06
ld (ff00 + a6), a
ld a, (ff00 + ca)
sub 82
ld e, a
ld d, 00
ld hl, 1359
add hl, de
push hl
pop de
ld a, (ff00 + c9)
ld h, a
ld a, (ff00 + ca)
ld l, a
ld a, (de)
call 1a62
push hl
ld de, 0020
add hl, de
ld b, b6
call 1a63
pop hl
inc hl
ld a, 02
ld (dfe0), a
ld a, h
ld (ff00 + c9), a
ld a, l
ld (ff00 + ca), a
cp 92
ret nz
ld a, ff
ld (ff00 + a6), a
ld a, 2d
ld (ff00 + e1), a
ret
or e
cp h
dec a
cp (hl)
cp e
or l
dec e
or d
cp l
or l
dec e
ld l, bc
dec a
ld c, 3e
ld a, (ff00 + a6)
and a
ret nz
call 2874
call 2801
call 22f3
ld a, 93
ld (ff00 + 40), a
ld a, 05
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 2e
ld (ff00 + e1), a
ret
call 1216
ld de, 27d7
ld hl, c200
ld c, 03
call 17da
ld a, (ff00 + f3)
ld (c203), a
ld a, 03
call 26c7
xor a
ld (ff00 + f3), a
ld a, db
ld (ff00 + 40), a
ld a, bb
ld (ff00 + a6), a
ld a, 2f
ld (ff00 + e1), a
ld a, 10
ld (dfe8), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld hl, c210
ld (hl), 00
ld l, 20
ld (hl), 00
ld a, a0
ld (ff00 + a6), a
ld a, 30
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
jr z, 04
call 145e
ret
ld a, 31
ld (ff00 + e1), a
ld a, 80
ld (ff00 + a6), a
ld a, 2f
call 2032
ret
ld a, (ff00 + a6)
and a
jr nz, 2e
ld a, 0a
ld (ff00 + a6), a
ld hl, c201
dec (hl)
ld a, (hl)
cp 6a
jr nz, 21
ld hl, c210
ld (hl), 00
inc l
add a, 10
ldi (hl), a
ld (hl), 54
inc l
ld (hl), 5c
ld l, 20
ld (hl), 80
ld a, 03
call 26c7
ld a, 32
ld (ff00 + e1), a
ld a, 04
ld (dff8), a
ret
call 145e
ret
ld a, (ff00 + a6)
and a
jr nz, 15
ld a, 0a
ld (ff00 + a6), a
ld hl, c211
dec (hl)
ld l, 01
dec (hl)
ld a, (hl)
cp e0
jr nz, 05
ld a, 33
ld (ff00 + e1), a
ret
ld a, (ff00 + a7)
and a
jr nz, 0b
ld a, 06
ld (ff00 + a7), a
ld hl, c213
ld a, (hl)
xor 01
ld (hl), a
ld a, 03
call 26c7
ret
call 2874
call 2801
call 7ff3
call 22f3
ld a, 93
ld (ff00 + 40), a
ld a, 10
ld (ff00 + e1), a
ret
ld a, (ff00 + a7)
and a
ret nz
ld a, 0a
ld (ff00 + a7), a
ld a, 03
ld (dff8), a
ld b, 02
ld hl, c210
ld a, (hl)
xor 80
ld (hl), a
ld l, 20
dec b
jr nz, f7
ld a, 03
call 26c7
ret
jp nz, caca
jp z, caca
jp z, cbc3
ld e, b
ld c, b
ld c, b
ld c, b
ld c, b
ret z
ld (hl), e
ld (hl), e
ld (hl), e
ld (hl), e
ld (hl), e
ld (hl), e
ret
ld (hl), h
ld (hl), h
ld (hl), h
ld (hl), h
ld (hl), h
ld (hl), h
ld a, (de)
ld (hl), a
inc de
push de
ld de, 0020
add hl, de
pop de
dec b
jr nz, f4
ret
ld a, 01
ld (ff00 + ff), a
xor a
ld (ff00 + 01), a
ld (ff00 + 02), a
ld (ff00 + 0f), a
call 2874
call 2801
ld de, 4d1f
call 283f
call 17ee
ld hl, c200
ld de, 2723
ld c, 02
call 17da
ld de, c201
call 14f1
ld a, (ff00 + c0)
ld e, 12
ld (de), a
inc de
cp 37
ld a, 1c
jr z, 02
ld a, 1d
ld (de), a
call 26c5
call 157b
ld a, d3
ld (ff00 + 40), a
ld a, 0e
ld (ff00 + e1), a
ret
ld a, 01
ld (dfe0), a
ld a, (ff00 + c1)
push af
sub 1c
add a
ld c, a
ld b, 00
ld hl, 150c
add hl, bc
ldi a, (hl)
ld (de), a
inc de
ld a, (hl)
ld (de), a
inc de
pop af
ld (de), a
ret
ld (hl), b
scf
ld (hl), b
ld (hl), a
add a, b
scf
add a, b
ld (hl), a
ld de, c200
call 17ca
ld hl, ffc1
ld a, (hl)
cb 58
jp nz, 15c7
cb 40
jp nz, 15c7
cb 48
jr nz, 41
inc e
cb 60
jr nz, 26
cb 68
jr nz, 2d
cb 70
jr nz, 16
cb 78
jp z, 15c3
cp 1e
jr nc, 09
add a, 02
ld (hl), a
call 14f1
call 157b
call 26c5
ret
cp 1e
jr c, f8
sub 02
jr ed
cp 1d
jr z, f0
cp 1f
jr z, ec
inc a
jr e2
cp 1c
jr z, e5
cp 1e
jr z, e1
dec a
jr d7
push af
ld a, (ff00 + c5)
and a
jr z, 03
pop af
jr b6
pop af
ld a, 0e
jr 5b
ld a, (ff00 + c1)
sub 17
cp 08
jr nz, 02
ld a, ff
ld (dfe8), a
ret
ld de, c210
call 17ca
ld hl, ffc0
ld a, (hl)
cb 58
jr nz, 30
cb 40
jr nz, 40
inc e
inc e
cb 60
jr nz, 0e
cb 68
jr z, 1e
cp 37
jr z, 1a
ld a, 37
ld b, 1c
jr 08
cp 77
jr z, 10
ld a, 77
ld b, 1d
ld (hl), a
push af
ld a, 01
ld (dfe0), a
pop af
ld (de), a
inc de
ld a, b
ld (de), a
call 26c5
ret
ld a, 02
ld (dfe0), a
ld a, (ff00 + c0)
cp 37
ld a, 10
jr z, 02
ld a, 12
ld (ff00 + e1), a
xor a
jr e7
ld a, 0f
jr f7
call 2874
ld de, 4e87
call 283f
call 1960
call 17ee
ld hl, c200
ld de, 272f
ld c, 01
call 17da
ld de, c201
ld a, (ff00 + c2)
ld hl, 1679
call 17b2
call 26c5
call 17f9
call 192e
ld a, d3
ld (ff00 + 40), a
ld a, 11
ld (ff00 + e1), a
ld a, (ff00 + c7)
and a
jr nz, 04
call 157b
ret
ld a, 15
ld (ff00 + e1), a
ret
ld de, c200
call 17ca
ld hl, ffc2
ld a, 0a
cb 58
jr nz, ee
cb 40
jr nz, ea
ld a, 08
cb 48
jr nz, e4
ld a, (hl)
cb 60
jr nz, 14
cb 68
jr nz, 26
cb 70
jr nz, 28
cb 78
jr z, 1a
cp 05
jr nc, 16
add a, 05
jr 05
cp 09
jr z, 0e
inc a
ld (hl), a
ld de, c201
ld hl, 1679
call 17b2
call 17f9
call 26c5
ret
and a
jr z, f9
dec a
jr e9
cp 05
jr c, f2
sub 05
jr e1
ld b, b
jr nc, 40
ld b, b
ld b, b
ld d, b
ld b, b
ld h, b
ld b, b
ld (hl), b
ld d, b
jr nc, 50
ld b, b
ld d, b
ld d, b
ld d, b
ld h, b
ld d, b
ld (hl), b
call 2874
ld de, 4fef
call 283f
call 17ee
ld hl, c200
ld de, 2735
ld c, 02
call 17da
ld de, c201
ld a, (ff00 + c3)
ld hl, 1736
call 17b2
ld de, c211
ld a, (ff00 + c4)
ld hl, 17a5
call 17b2
call 26c5
call 1813
call 192e
ld a, d3
ld (ff00 + 40), a
ld a, 13
ld (ff00 + e1), a
ld a, (ff00 + c7)
and a
jr nz, 04
call 157b
ret
ld a, 15
ld (ff00 + e1), a
ret
ld (ff00 + e1), a
xor a
ld (de), a
ret
ld de, c200
call 17ca
ld hl, ffc3
ld a, 0a
cb 58
jr nz, ec
ld a, 14
cb 40
jr nz, e6
ld a, 08
cb 48
jr nz, e0
ld a, (hl)
cb 60
jr nz, 14
cb 68
jr nz, 26
cb 70
jr nz, 28
cb 78
jr z, 1a
cp 05
jr nc, 16
add a, 05
jr 05
cp 09
jr z, 0e
inc a
ld (hl), a
ld de, c201
ld hl, 1736
call 17b2
call 1813
call 26c5
ret
and a
jr z, f9
dec a
jr e9
cp 05
jr c, f2
sub 05
jr e1
ld b, b
jr 40
jr z, 40
jr c, 40
ld c, b
ld b, b
ld e, b
ld d, b
jr 50
jr z, 50
jr c, 50
ld c, b
ld d, b
ld e, b
ld (ff00 + e1), a
xor a
ld (de), a
ret
ld de, c210
call 17ca
ld hl, ffc4
ld a, 0a
cb 58
jr nz, ec
cb 40
jr nz, e8
ld a, 13
cb 48
jr nz, e2
ld a, (hl)
cb 60
jr nz, 14
cb 68
jr nz, 26
cb 70
jr nz, 28
cb 78
jr z, 1a
cp 03
jr nc, 16
add a, 03
jr 05
cp 05
jr z, 0e
inc a
ld (hl), a
ld de, c211
ld hl, 17a5
call 17b2
call 1813
call 26c5
ret
and a
jr z, f9
dec a
jr e9
cp 03
jr c, f2
sub 03
jr e1
ld b, b
ld (hl), b
ld b, b
add a, b
ld b, b
sub b
ld d, b
ld (hl), b
ld d, b
add a, b
ld d, b
sub b
nop
push af
ld a, 01
ld (dfe0), a
pop af
push af
add a
ld c, a
ld b, 00
add hl, bc
ldi a, (hl)
ld (de), a
inc de
ld a, (hl)
ld (de), a
inc de
pop af
add a, 20
ld (de), a
ret
ld a, (ff00 + 81)
ld b, a
ld a, (ff00 + a6)
and a
ret nz
ld a, 10
ld (ff00 + a6), a
ld a, (de)
xor 80
ld (de), a
ret
push hl
ld b, 06
ld a, (de)
ldi (hl), a
inc de
dec b
jr nz, fa
pop hl
ld a, 10
add a, l
ld l, a
dec c
jr nz, ef
ld (hl), 80
ret
xor a
ld hl, c000
ld b, a0
ldi (hl), a
dec b
jr nz, fc
ret
call 1960
ld a, (ff00 + c2)
ld hl, d654
ld de, 001b
and a
jr z, 04
dec a
add hl, de
jr f9
inc hl
inc hl
push hl
pop de
call 1864
ret
call 1960
ld a, (ff00 + c3)
ld hl, d000
ld de, 00a2
and a
jr z, 04
dec a
add hl, de
jr f9
ld a, (ff00 + c4)
ld de, 001b
and a
jr z, 04
dec a
add hl, de
jr f9
inc hl
inc hl
push hl
pop de
call 1864
ret
ld b, 03
ld a, (hl)
and f0
jr nz, 0b
inc e
ldd a, (hl)
and 0f
jr nz, 0f
inc e
dec b
jr nz, f1
ret
ld a, (hl)
and f0
cb 37
ld (de), a
inc e
ldd a, (hl)
and 0f
ld (de), a
inc e
dec b
jr nz, f1
ret
ld b, 03
ldd a, (hl)
ld (de), a
dec de
dec b
jr nz, fa
ret
ld a, d
ld (ff00 + fb), a
ld a, e
ld (ff00 + fc), a
ld c, 03
ld hl, c0a2
push de
ld b, 03
ld a, (de)
sub (hl)
jr c, 10
jr nz, 05
dec l
dec de
dec b
jr nz, f5
pop de
inc de
inc de
inc de
dec c
jr nz, e8
jr 5e
pop de
ld a, (ff00 + fb)
ld d, a
ld a, (ff00 + fc)
ld e, a
push de
push bc
ld hl, 0006
add hl, de
push hl
pop de
dec hl
dec hl
dec hl
dec c
jr z, 05
call 185b
jr f8
ld hl, c0a2
ld b, 03
ldd a, (hl)
ld (de), a
dec e
dec b
jr nz, fa
pop bc
pop de
ld a, c
ld (ff00 + c8), a
ld hl, 0012
add hl, de
push hl
ld de, 0006
add hl, de
push hl
pop de
pop hl
dec c
jr z, 07
ld b, 06
call 185d
jr f6
ld a, 60
ld b, 05
ld (de), a
dec de
dec b
jr nz, fb
ld a, 0a
ld (de), a
ld a, d
ld (ff00 + c9), a
ld a, e
ld (ff00 + ca), a
xor a
ld (ff00 + 9c), a
ld (ff00 + c6), a
ld a, 01
ld (dfe8), a
ld (ff00 + c7), a
ld de, c9ac
ld a, (ff00 + fb)
ld h, a
ld a, (ff00 + fc)
ld l, a
ld b, 03
push hl
push de
push bc
call 1839
pop bc
pop de
ld hl, 0020
add hl, de
push hl
pop de
pop hl
push de
ld de, 0003
add hl, de
pop de
dec b
jr nz, e8
dec hl
dec hl
ld b, 03
ld de, c9a4
push de
ld c, 06
ldi a, (hl)
and a
jr z, 05
ld (de), a
inc de
dec c
jr nz, f7
pop de
push hl
ld hl, 0020
add hl, de
push hl
pop de
pop hl
dec b
jr nz, e8
call 26a5
ld a, 01
ld (ff00 + e8), a
ret
ld a, (ff00 + e8)
and a
ret z
ld hl, 99a4
ld de, c9a4
ld c, 06
push hl
ld b, 06
ld a, (de)
ldi (hl), a
inc e
dec b
jr nz, fa
inc e
inc l
inc e
inc l
dec c
jr z, 11
cb 41
jr nz, ed
pop hl
ld de, 0020
add hl, de
push hl
pop de
ld a, 30
add a, d
ld d, a
jr df
pop hl
xor a
ld (ff00 + e8), a
ret
ld hl, c9a4
ld de, 0020
ld a, 60
ld c, 03
ld b, 0e
push hl
ldi (hl), a
dec b
jr nz, fc
pop hl
add hl, de
dec c
jr nz, f4
ret
ld a, (ff00 + c8)
ld hl, 99e4
ld de, ffe0
dec a
jr z, 03
add hl, de
jr fa
ld a, (ff00 + c6)
ld e, a
ld d, 00
add hl, de
ld a, (ff00 + c9)
ld d, a
ld a, (ff00 + ca)
ld e, a
ld a, (ff00 + a6)
and a
jr nz, 12
ld a, 07
ld (ff00 + a6), a
ld a, (ff00 + 9c)
xor 01
ld (ff00 + 9c), a
ld a, (de)
jr z, 02
ld a, 2f
call 1a62
ld a, (ff00 + 81)
ld b, a
ld a, (ff00 + 80)
ld c, a
ld a, 17
cb 70
jr nz, 37
cb 71
jr nz, 2b
cb 78
jr nz, 58
cb 79
jr nz, 4c
cb 40
jr nz, 6c
cb 48
jp nz, 1a52
cb 58
ret z
ld a, (de)
call 1a62
call 157b
xor a
ld (ff00 + c7), a
ld a, (ff00 + c0)
cp 37
ld a, 11
jr z, 02
ld a, 13
ld (ff00 + e1), a
ret
ld a, (ff00 + aa)
dec a
ld (ff00 + aa), a
ret nz
ld a, 09
ld (ff00 + aa), a
ld b, 26
ld a, (ff00 + f4)
and a
jr z, 02
ld b, 27
ld a, (de)
cp b
jr nz, 0a
ld a, 2e
inc a
ld (de), a
ld a, 01
ld (dfe0), a
ret
cp 2f
jr nz, f4
ld a, 0a
jr f1
ld a, (ff00 + aa)
dec a
ld (ff00 + aa), a
ret nz
ld a, 09
ld (ff00 + aa), a
ld b, 26
ld a, (ff00 + f4)
and a
jr z, 02
ld b, 27
ld a, (de)
cp 0a
jr nz, 05
ld a, 30
dec a
jr d4
cp 2f
jr nz, f9
ld a, b
jr cd
ld a, (de)
call 1a62
ld a, 02
ld (dfe0), a
ld a, (ff00 + c6)
inc a
cp 06
jr z, 8c
ld (ff00 + c6), a
inc de
ld a, (de)
cp 60
jr nz, 03
ld a, 0a
ld (de), a
ld a, d
ld (ff00 + c9), a
ld a, e
ld (ff00 + ca), a
ret
ld a, (ff00 + c6)
and a
ret z
ld a, (de)
call 1a62
ld a, (ff00 + c6)
dec a
ld (ff00 + c6), a
dec de
jr e9
ld b, a
ld a, (ff00 + 41)
and 03
jr nz, fa
ld (hl), b
ret
call 2874
xor a
ld (c210), a
ld (ff00 + 98), a
ld (ff00 + 9c), a
ld (ff00 + 9b), a
ld (ff00 + fb), a
ld (ff00 + 9f), a
ld a, 2f
call 2032
call 204d
call 26a5
xor a
ld (ff00 + e3), a
ld (ff00 + e7), a
call 17ee
ld a, (ff00 + c0)
ld de, 403f
ld hl, ffc3
cp 77
ld a, 50
jr z, 08
ld a, f1
ld hl, ffc2
ld de, 3ed7
push de
ld (ff00 + e6), a
ld a, (hl)
ld (ff00 + a9), a
call 283f
pop de
ld hl, 9c00
call 2842
ld de, 288d
ld hl, 9c63
ld c, 0a
call 1fd8
ld h, 98
ld a, (ff00 + e6)
ld l, a
ld a, (ff00 + a9)
ld (hl), a
ld h, 9c
ld (hl), a
ld a, (ff00 + f4)
and a
jr z, 07
inc hl
ld (hl), 27
ld h, 98
ld (hl), 27
ld hl, c200
ld de, 2713
call 270a
ld hl, c210
ld de, 271b
call 270a
ld hl, 9951
ld a, (ff00 + c0)
cp 77
ld a, 25
jr z, 01
xor a
ld (ff00 + 9e), a
and 0f
ldd (hl), a
jr z, 02
ld (hl), 02
call 1b43
call 2062
call 2062
call 2062
call 26d7
xor a
ld (ff00 + a0), a
ld a, (ff00 + c0)
cp 77
jr nz, 25
ld a, 34
ld (ff00 + 99), a
ld a, (ff00 + c4)
ld hl, 98b0
ld (hl), a
ld h, 9c
ld (hl), a
and a
jr z, 15
ld b, a
ld a, (ff00 + e4)
and a
jr z, 05
call 1b76
jr 0a
ld a, b
ld de, ffc0
ld hl, 9a02
call 1bc3
ld a, d3
ld (ff00 + 40), a
xor a
ld (ff00 + e1), a
ret
ld a, (ff00 + a9)
ld e, a
ld a, (ff00 + f4)
and a
jr z, 0a
ld a, 0a
add a, e
cp 15
jr c, 02
ld a, 14
ld e, a
ld hl, 1b61
ld d, 00
add hl, de
ld a, (hl)
ld (ff00 + 99), a
ld (ff00 + 9a), a
ret
inc (hl)
jr nc, 2c
jr z, 24
jr nz, 1b
dec d
stop
add hl, bc
ld (0607), sp
dec b
dec b
inc b
inc b
inc bc
inc bc
ld (bc), a
ld hl, 99c2
ld de, 1b9b
ld c, 04
ld b, 0a
push hl
ld a, (de)
ld (hl), a
push hl
ld a, h
add a, 30
ld h, a
ld a, (de)
ld (hl), a
pop hl
inc l
inc de
dec b
jr nz, f1
pop hl
push de
ld de, 0020
add hl, de
pop de
dec c
jr nz, e4
ret
add a, l
cpl
add a, d
add a, (hl)
add a, e
cpl
cpl
add a, b
add a, d
add a, l
cpl
add a, d
add a, h
add a, d
add a, e
cpl
add a, e
cpl
add a
cpl
cpl
add a, l
cpl
add a, e
cpl
add a, (hl)
add a, d
add a, b
add a, c
cpl
add a, e
cpl
add a, (hl)
add a, e
cpl
add a, l
cpl
add a, l
cpl
cpl
ld b, a
dec b
jr z, 03
add hl, de
jr fa
ld a, (ff00 + 04)
ld b, a
ld a, 80
dec b
jr z, 08
cp 80
jr nz, f7
ld a, 2f
jr f5
cp 2f
jr z, 08
ld a, (ff00 + 04)
and 07
or 80
jr 02
ld (ff00 + a0), a
push af
ld a, l
and 0f
cp 0b
jr nz, 0b
ld a, (ff00 + a0)
cp 2f
jr z, 05
pop af
ld a, 2f
jr 01
pop af
ld (hl), a
push hl
push af
ld a, (ff00 + c5)
and a
jr nz, 04
ld de, 3000
add hl, de
pop af
ld (hl), a
pop hl
inc hl
ld a, l
and 0f
cp 0c
jr nz, b7
xor a
ld (ff00 + a0), a
ld a, h
and 0f
cp 0a
jr z, 06
ld de, 0016
add hl, de
jr a7
ld a, l
cp 2c
jr nz, f5
ret
call 1c68
ld a, (ff00 + ab)
and a
ret nz
call 0579
call 05af
call 05f0
call 2515
call 20f7
call 2199
call 25f5
call 22ad
call 1fec
call 0620
ret
cb 57
ret z
ld a, (c0de)
xor 01
ld (c0de), a
jr z, 09
ld a, 80
ld (c210), a
call 26ea
ret
xor a
jr f6
ld a, (ff00 + 80)
and 0f
cp 0f
jp z, 029a
ld a, (ff00 + e4)
and a
ret nz
ld a, (ff00 + 81)
cb 5f
jr z, d4
ld a, (ff00 + c5)
and a
jr nz, 45
ld hl, ff40
ld a, (ff00 + ab)
xor 01
ld (ff00 + ab), a
jr z, 2a
cb de
ld a, 01
ld (df7f), a
ld hl, 994e
ld de, 9d4e
ld b, 04
ld a, (ff00 + 41)
and 03
jr nz, fa
ldi a, (hl)
ld (de), a
inc de
dec b
jr nz, f4
ld a, 80
ld (c210), a
ld (c200), a
call 26d7
call 26ea
ret
cb 9e
ld a, 02
ld (df7f), a
ld a, (c0de)
and a
jr z, e6
xor a
jr e6
ld a, (ff00 + cb)
cp 29
ret nz
ld a, (ff00 + ab)
xor 01
ld (ff00 + ab), a
jr z, 33
ld a, 01
ld (df7f), a
ld a, (ff00 + d0)
ld (ff00 + f2), a
ld a, (ff00 + cf)
ld (ff00 + f1), a
call 1d26
ret
ld a, (ff00 + ab)
and a
ret z
ld a, (ff00 + cc)
jr z, 39
xor a
ld (ff00 + cc), a
ld a, (ff00 + cb)
cp 29
jr nz, 08
ld a, 94
ld (ff00 + cf), a
ld (ff00 + ce), a
pop hl
ret
xor a
ld (ff00 + cf), a
ld a, (ff00 + d0)
cp 94
jr z, 1f
ld a, (ff00 + f2)
ld (ff00 + d0), a
ld a, (ff00 + f1)
ld (ff00 + cf), a
ld a, 02
ld (df7f), a
xor a
ld (ff00 + ab), a
ld hl, 98ee
ld b, 8e
ld c, 05
call 1a63
inc l
dec c
jr nz, f9
ret
pop hl
ret
ld hl, 98ee
ld c, 05
ld de, 1d38
ld a, (de)
call 1a62
inc de
inc l
dec c
jr nz, f7
ret
add hl, de
ld a, (bc)
ld e, 1c
ld c, 3e
add a, b
ld (c200), a
ld (c210), a
call 26d7
call 26ea
xor a
ld (ff00 + 98), a
ld (ff00 + 9c), a
call 22f3
ld a, 87
call 2032
ld a, 46
ld (ff00 + a6), a
ld a, 0d
ld (ff00 + e1), a
ret
ld a, (ff00 + 81)
cb 47
jr nz, 03
cb 5f
ret z
xor a
ld (ff00 + e3), a
ld a, (ff00 + c5)
and a
ld a, 16
jr nz, 0a
ld a, (ff00 + c0)
cp 37
ld a, 10
jr z, 02
ld a, 12
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld hl, c802
ld de, 28dd
call 2858
ld a, (ff00 + c3)
and a
jr z, 2e
ld de, 0040
ld hl, c827
call 1ddf
ld de, 0100
ld hl, c887
call 1ddf
ld de, 0300
ld hl, c8e7
call 1ddf
ld de, 1200
ld hl, c947
call 1ddf
ld hl, c0a0
ld b, 03
xor a
ldi (hl), a
dec b
jr nz, fc
ld a, 80
ld (ff00 + a6), a
ld a, 80
ld (c200), a
ld (c210), a
call 26d7
call 26ea
call 7ff3
ld a, 25
ld (ff00 + 9e), a
ld a, 0b
ld (ff00 + e1), a
ret
push hl
ld hl, c0a0
ld b, 03
xor a
ldi (hl), a
dec b
jr nz, fc
ld a, (ff00 + c3)
ld b, a
inc b
ld hl, c0a0
call 0166
dec b
jr nz, f7
pop hl
ld b, 03
ld de, c0a2
ld a, (de)
and f0
jr nz, 0a
ld a, (de)
and 0f
jr nz, 0b
dec e
dec b
jr nz, f2
ret
ld a, (de)
and f0
cb 37
ldi (hl), a
ld a, (de)
and 0f
ldi (hl), a
dec e
dec b
jr nz, f2
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 01
ld (c0c6), a
ld a, 05
ld (ff00 + a6), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld hl, c802
ld de, 5157
call 2858
call 17ee
ld hl, c200
ld de, 2789
ld c, 0a
call 17da
ld a, 10
ld hl, c266
ld (hl), a
ld l, 76
ld (hl), a
ld hl, c20e
ld de, 1e8c
ld b, 0a
ld a, (de)
ldi (hl), a
ldi (hl), a
inc de
push de
ld de, 000e
add hl, de
pop de
dec b
jr nz, f3
ld a, (ff00 + c4)
cp 05
jr nz, 02
ld a, 09
inc a
ld b, a
ld hl, c200
ld de, 0010
xor a
ld (hl), a
add hl, de
dec b
jr nz, fb
ld a, (ff00 + c4)
add a, 0a
ld (dfe8), a
ld a, 25
ld (ff00 + 9e), a
ld a, 1b
ld (ff00 + a6), a
ld a, 23
ld (ff00 + e1), a
ret
inc e
rrca
ld e, 32
jr nz, 18
ld h, 1d
jr z, 2b
ld a, 0a
call 26c7
ret
ld a, (ff00 + a6)
cp 14
jr z, f4
and a
ret nz
ld hl, c20e
ld de, 0010
ld b, 0a
push hl
dec (hl)
jr nz, 15
inc l
ldd a, (hl)
ld (hl), a
ld a, l
and f0
or 03
ld l, a
ld a, (hl)
xor 01
ld (hl), a
cp 50
jr z, 23
cp 51
jr z, 25
pop hl
add hl, de
dec b
jr nz, e2
ld a, 0a
call 26c7
ld a, (dfe9)
and a
ret nz
call 17ee
ld a, (ff00 + c4)
cp 05
ld a, 26
jr z, 02
ld a, 05
ld (ff00 + e1), a
ret
dec l
dec l
ld (hl), 67
jr db
dec l
dec l
ld (hl), 5d
jr d5
xor a
ld (c0c6), a
ld de, c0c0
ld a, (de)
ld l, a
inc de
ld a, (de)
ld h, a
or l
jp z, 268e
dec hl
ld a, h
ld (de), a
dec de
ld a, l
ld (de), a
ld de, 0001
ld hl, c0c2
push de
call 0166
ld de, c0c4
ld hl, 99a5
call 2a7e
xor a
ld (ff00 + a6), a
pop de
ld hl, c0a0
call 0166
ld de, c0a2
ld hl, 9a25
call 2a82
ld a, 02
ld (dfe0), a
ret
ld a, (c0c6)
and a
ret z
ld a, (c0c5)
cp 04
jr z, b2
ld de, 0040
ld bc, 9823
ld hl, c0ac
and a
jr z, 23
ld de, 0100
ld bc, 9883
ld hl, c0b1
cp 01
jr z, 16
ld de, 0300
ld bc, 98e3
ld hl, c0b6
cp 02
jr z, 09
ld de, 1200
ld bc, 9943
ld hl, c0bb
call 262d
ret
ld a, (ff00 + 81)
and a
ret z
ld a, 02
ld (ff00 + e1), a
ret
ld a, (ff00 + a6)
and a
ret nz
ld a, 04
ld (dfe8), a
ld a, (ff00 + c5)
and a
jr z, 0a
ld a, 3f
ld (ff00 + a6), a
ld a, 1b
ld (ff00 + cc), a
jr 37
ld a, 2f
call 2032
ld hl, c843
ld de, 2992
ld c, 07
call 1fd8
ld hl, c983
ld de, 29ca
ld c, 06
call 1fd8
ld a, (ff00 + c0)
cp 37
jr nz, 14
ld hl, c0a2
ld a, (hl)
ld b, 58
cp 15
jr nc, 0f
inc b
cp 10
jr nc, 0a
inc b
cp 05
jr nc, 05
ld a, 04
ld (ff00 + e1), a
ret
ld a, b
ld (ff00 + f3), a
ld a, 90
ld (ff00 + a6), a
ld a, 34
ld (ff00 + e1), a
ret
ld b, 08
push hl
ld a, (de)
ldi (hl), a
inc de
dec b
jr nz, fa
pop hl
push de
ld de, 0020
add hl, de
pop de
dec c
jr nz, ed
ret
ld a, (ff00 + c0)
cp 37
ret nz
ld a, (ff00 + e1)
and a
ret nz
ld a, (ff00 + e3)
cp 05
ret nz
ld hl, c0ac
ld bc, 0005
ld a, (hl)
ld de, 0040
and a
jr nz, 17
add hl, bc
ld a, (hl)
ld de, 0100
and a
jr nz, 0f
add hl, bc
ld a, (hl)
ld de, 0300
and a
jr nz, 07
add hl, bc
ld de, 1200
ld a, (hl)
and a
ret z
ld (hl), 00
ld a, (ff00 + a9)
ld b, a
inc b
push bc
push de
ld hl, c0a0
call 0166
pop de
pop bc
dec b
jr nz, f3
ret
push af
ld a, 02
ld (ff00 + e3), a
pop af
ld hl, c802
ld c, 12
ld de, 0020
push hl
ld b, 0a
ldi (hl), a
dec b
jr nz, fc
pop hl
add hl, de
dec c
jr nz, f4
ret
ld hl, cbc2
ld de, 0016
ld c, 02
ld a, 2f
ld b, 0a
ldi (hl), a
dec b
jr nz, fc
add hl, de
dec c
jr nz, f6
ret
ld hl, c200
ld (hl), 00
inc l
ld (hl), 18
inc l
ld (hl), 3f
inc l
ld a, (c213)
ld (hl), a
and fc
ld c, a
ld a, (ff00 + e4)
and a
jr nz, 05
ld a, (ff00 + c5)
and a
jr z, 1d
ld h, c3
ld a, (ff00 + b0)
ld l, a
ld e, (hl)
inc hl
ld a, h
cp c4
jr nz, 03
ld hl, c300
ld a, l
ld (ff00 + b0), a
ld a, (ff00 + d3)
and a
jr z, 2a
or 80
ld (ff00 + d3), a
jr 24
ld h, 03
ld a, (ff00 + 04)
ld b, a
xor a
dec b
jr z, 0a
inc a
inc a
inc a
inc a
cp 1c
jr z, f4
jr f3
ld d, a
ld a, (ff00 + ae)
ld e, a
dec h
jr z, 07
or d
or c
and fc
cp c
jr z, e1
ld a, d
ld (ff00 + ae), a
ld a, e
ld (c213), a
call 26ea
ld a, (ff00 + 9a)
ld (ff00 + 99), a
ret
ld a, (c0c7)
and a
jr z, 0c
ld a, (ff00 + 81)
and b0
cp 80
jr nz, 25
xor a
ld (c0c7), a
ld a, (ff00 + a7)
and a
jr nz, 29
ld a, (ff00 + 98)
and a
jr nz, 24
ld a, (ff00 + e3)
and a
jr nz, 1f
ld a, 03
ld (ff00 + a7), a
ld hl, ffe5
inc (hl)
jr 26
ld a, (ff00 + 80)
and b0
cp 80
jr z, cd
ld hl, ffe5
ld (hl), 00
ld a, (ff00 + 99)
and a
jr z, 07
dec a
ld (ff00 + 99), a
call 26d7
ret
ld a, (ff00 + 98)
cp 03
ret z
ld a, (ff00 + e3)
and a
ret nz
ld a, (ff00 + 9a)
ld (ff00 + 99), a
ld hl, c201
ld a, (hl)
ld (ff00 + a0), a
add a, 08
ld (hl), a
call 26d7
call 25c7
and a
ret z
ld a, (ff00 + a0)
ld hl, c201
ld (hl), a
call 26d7
ld a, 01
ld (ff00 + 98), a
ld (c0c7), a
ld a, (ff00 + e5)
and a
jr z, 1b
ld c, a
ld a, (ff00 + c0)
cp 37
jr z, 37
ld de, c0c0
ld a, (de)
ld l, a
inc de
ld a, (de)
ld h, a
ld b, 00
dec c
add hl, bc
ld a, h
ld (de), a
ld a, l
dec de
ld (de), a
xor a
ld (ff00 + e5), a
ld a, (c201)
cp 18
ret nz
ld a, (c202)
cp 3f
ret nz
ld hl, fffb
ld a, (hl)
cp 01
jr nz, 0d
call 7ff3
ld a, 01
ld (ff00 + e1), a
ld a, 02
ld (dff0), a
ret
inc (hl)
ret
xor a
dec c
jr z, 04
inc a
daa
jr f9
ld e, a
ld d, 00
ld hl, c0a0
call 0166
ld a, 01
ld (c0ce), a
jr c2
ld a, (ff00 + 98)
cp 02
ret nz
ld a, 02
ld (dff8), a
xor a
ld (ff00 + a0), a
ld de, c0a3
ld hl, c842
ld b, 10
ld c, 0a
push hl
ldi a, (hl)
cp 2f
jp z, 2238
dec c
jr nz, f7
pop hl
ld a, h
ld (de), a
inc de
ld a, l
ld (de), a
inc de
ld a, (ff00 + a0)
inc a
ld (ff00 + a0), a
push de
ld de, 0020
add hl, de
pop de
dec b
jr nz, df
ld a, 03
ld (ff00 + 98), a
dec a
ld (ff00 + a6), a
ld a, (ff00 + a0)
and a
ret z
ld b, a
ld hl, ff9e
ld a, (ff00 + c0)
cp 77
jr z, 17
ld a, (ff00 + e7)
add a, b
ld (ff00 + e7), a
ld a, b
add a, (hl)
daa
ldi (hl), a
ld a, 00
adc (hl)
daa
ld (hl), a
jr nc, 16
ld (hl), 99
dec hl
ld (hl), 99
jr 0f
ld a, (hl)
or a
sub b
jr z, 3b
jr c, 39
daa
ld (hl), a
and f0
cp 90
jr z, 31
ld a, b
ld c, 06
ld hl, c0ac
ld b, 00
cp 01
jr z, 19
ld hl, c0b1
ld b, 01
cp 02
jr z, 10
ld hl, c0b6
ld b, 02
cp 03
jr z, 07
ld hl, c0bb
ld b, 04
ld c, 07
inc (hl)
ld a, b
ld (ff00 + dc), a
ld a, c
ld (dfe0), a
ret
pop hl
jr 8b
xor a
ld (ff00 + 9e), a
jr ca
ld a, (ff00 + 98)
cp 03
ret nz
ld a, (ff00 + a6)
and a
ret nz
ld de, c0a3
ld a, (ff00 + 9c)
cb 47
jr nz, 3c
ld a, (de)
and a
jr z, 52
sub 30
ld h, a
inc de
ld a, (de)
ld l, a
ld a, (ff00 + 9c)
cp 06
ld a, 8c
jr nz, 02
ld a, 2f
ld c, 0a
ldi (hl), a
dec c
jr nz, fc
inc de
ld a, (de)
and a
jr nz, e5
ld a, (ff00 + 9c)
inc a
ld (ff00 + 9c), a
cp 07
jr z, 05
ld a, 0a
ld (ff00 + a6), a
ret
xor a
ld (ff00 + 9c), a
ld a, 0d
ld (ff00 + a6), a
ld a, 01
ld (ff00 + e3), a
xor a
ld (ff00 + 98), a
ret
ld a, (de)
ld h, a
sub 30
ld c, a
inc de
ld a, (de)
ld l, a
ld b, 0a
ld a, (hl)
push hl
ld h, c
ld (hl), a
pop hl
inc hl
dec b
jr nz, f7
inc de
ld a, (de)
and a
jr nz, e8
jr c9
call 2062
jr dd
ld a, (ff00 + a6)
and a
ret nz
ld a, (ff00 + e3)
cp 01
ret nz
ld de, c0a3
ld a, (de)
ld h, a
inc de
ld a, (de)
ld l, a
push de
push hl
ld bc, ffe0
add hl, bc
pop de
push hl
ld b, 0a
ldi a, (hl)
ld (de), a
inc de
dec b
jr nz, fa
pop hl
push hl
pop de
ld bc, ffe0
add hl, bc
ld a, h
cp c7
jr nz, eb
pop de
inc de
ld a, (de)
and a
jr nz, da
ld hl, c802
ld a, 2f
ld b, 0a
ldi (hl), a
dec b
jr nz, fc
call 22f3
ld a, 02
ld (ff00 + e3), a
ret
ld hl, c0a3
xor a
ld b, 09
ldi (hl), a
dec b
jr nz, fc
ret
ld a, (ff00 + e3)
cp 02
ret nz
ld hl, 9a22
ld de, ca22
call 2506
ret
ld a, (ff00 + e3)
cp 03
ret nz
ld hl, 9a02
ld de, ca02
call 2506
ret
ld a, (ff00 + e3)
cp 04
ret nz
ld hl, 99e2
ld de, c9e2
call 2506
ret
ld a, (ff00 + e3)
cp 05
ret nz
ld hl, 99c2
ld de, c9c2
call 2506
ret
ld a, (ff00 + e3)
cp 06
ret nz
ld hl, 99a2
ld de, c9a2
call 2506
ret
ld a, (ff00 + e3)
cp 07
ret nz
ld hl, 9982
ld de, c982
call 2506
ret
ld a, (ff00 + e3)
cp 08
ret nz
ld hl, 9962
ld de, c962
call 2506
ld a, (ff00 + c5)
and a
ld a, (ff00 + e1)
jr nz, 08
and a
ret nz
ld a, 01
ld (dff8), a
ret
cp 1a
ret nz
ld a, (ff00 + d4)
and a
jr z, f2
ld a, 05
ld (dfe0), a
ret
ld a, (ff00 + e3)
cp 09
ret nz
ld hl, 9942
ld de, c942
call 2506
ret
ld a, (ff00 + e3)
cp 0a
ret nz
ld hl, 9922
ld de, c922
call 2506
ret
ld a, (ff00 + e3)
cp 0b
ret nz
ld hl, 9902
ld de, c902
call 2506
ret
ld a, (ff00 + e3)
cp 0c
ret nz
ld hl, 98e2
ld de, c8e2
call 2506
ret
ld a, (ff00 + e3)
cp 0d
ret nz
ld hl, 98c2
ld de, c8c2
call 2506
ret
ld a, (ff00 + e3)
cp 0e
ret nz
ld hl, 98a2
ld de, c8a2
call 2506
ret
ld a, (ff00 + e3)
cp 0f
ret nz
ld hl, 9882
ld de, c882
call 2506
ret
ld a, (ff00 + e3)
cp 10
ret nz
ld hl, 9862
ld de, c862
call 2506
call 24ab
ret
ld a, (ff00 + e3)
cp 11
ret nz
ld hl, 9842
ld de, c842
call 2506
ld hl, 9c6d
call 249b
ld a, 01
ld (ff00 + e0), a
ret
ld a, (ff00 + e3)
cp 12
ret nz
ld hl, 9822
ld de, c822
call 2506
ld hl, 986d
call 249b
ret
ld a, (ff00 + e3)
cp 13
ret nz
ld (c0c7), a
ld hl, 9802
ld de, c802
call 2506
xor a
ld (ff00 + e3), a
ld a, (ff00 + c5)
and a
ld a, (ff00 + e1)
jr nz, 48
and a
ret nz
ld hl, 994e
ld de, ff9f
ld c, 02
ld a, (ff00 + c0)
cp 37
jr z, 08
ld hl, 9950
ld de, ff9e
ld c, 01
call 2a84
ld a, (ff00 + c0)
cp 37
jr z, 23
ld a, (ff00 + 9e)
and a
jr nz, 1e
ld a, 64
ld (ff00 + a6), a
ld a, 02
ld (dfe8), a
ld a, (ff00 + c5)
and a
jr z, 03
ld (ff00 + d5), a
ret
ld a, (ff00 + c3)
cp 09
ld a, 05
jr nz, 02
ld a, 22
ld (ff00 + e1), a
ret
call 2062
ret
cp 1a
ret nz
ld a, (ff00 + d4)
and a
jr z, b2
xor a
ld (ff00 + d4), a
ret
ld a, (ff00 + e1)
and a
ret nz
ld a, (ff00 + c0)
cp 37
ret nz
ld de, c0a2
call 2a7e
ret
ld a, (ff00 + e1)
and a
ret nz
ld a, (ff00 + c0)
cp 37
ret nz
ld hl, ffa9
ld a, (hl)
cp 09
jr nc, 41
ld a, (ff00 + e7)
cp 0a
ret c
sub 0a
ld (ff00 + e7), a
inc (hl)
ld a, (hl)
cp 15
jr nz, 02
ld (hl), 14
ld b, (hl)
xor a
or a
inc a
daa
dec b
jr z, 02
jr f8
ld b, a
and 0f
ld c, a
ld hl, 98f1
ld (hl), c
ld h, 9c
ld (hl), c
ld a, b
and f0
jr z, 0d
cb 37
ld c, a
ld a, l
cp f0
jr z, 05
ld hl, 98f0
jr ea
ld a, 02
ld (dfe0), a
call 1b43
ret
ld a, (ff00 + e7)
cp 14
ret c
sub 14
jr bd
ld b, 0a
ld a, (de)
ld (hl), a
inc l
inc e
dec b
jr nz, f9
ld a, (ff00 + e3)
inc a
ld (ff00 + e3), a
ret
ld hl, c203
ld a, (hl)
ld (ff00 + a0), a
ld a, (ff00 + 81)
ld b, a
cb 48
jr nz, 12
cb 40
jr z, 37
ld a, (hl)
and 03
jr z, 03
dec (hl)
jr 14
ld a, (hl)
or 03
ld (hl), a
jr 0e
ld a, (hl)
and 03
cp 03
jr z, 03
inc (hl)
jr 04
ld a, (hl)
and fc
ld (hl), a
ld a, 03
ld (dfe0), a
call 26d7
call 25c7
and a
jr z, 0d
xor a
ld (dfe0), a
ld hl, c203
ld a, (ff00 + a0)
ld (hl), a
call 26d7
ld hl, c202
ld a, (ff00 + 81)
ld b, a
ld a, (ff00 + 80)
ld c, a
ld a, (hl)
ld (ff00 + a0), a
cb 60
ld a, 17
jr nz, 0c
cb 61
jr z, 2d
ld a, (ff00 + aa)
dec a
ld (ff00 + aa), a
ret nz
ld a, 09
ld (ff00 + aa), a
ld a, (hl)
add a, 08
ld (hl), a
call 26d7
ld a, 04
ld (dfe0), a
call 25c7
and a
ret z
ld hl, c202
xor a
ld (dfe0), a
ld a, (ff00 + a0)
ld (hl), a
call 26d7
ld a, 01
ld (ff00 + aa), a
ret
cb 68
ld a, 17
jr nz, 0c
cb 69
jr z, f3
ld a, (ff00 + aa)
dec a
ld (ff00 + aa), a
ret nz
ld a, 09
ld (ff00 + aa), a
ld a, (hl)
sub 08
ld (hl), a
ld a, 04
ld (dfe0), a
call 26d7
call 25c7
and a
ret z
jr c7
ld hl, c010
ld b, 04
ldi a, (hl)
ld (ff00 + b2), a
ldi a, (hl)
and a
jr z, 17
ld (ff00 + b3), a
push hl
push bc
call 2a2b
ld a, h
add a, 30
ld h, a
ld a, (hl)
cp 2f
jr nz, 0b
pop bc
pop hl
inc l
inc l
dec b
jr nz, e2
xor a
ld (ff00 + 9b), a
ret
pop bc
pop hl
ld a, 01
ld (ff00 + 9b), a
ret
ld a, (ff00 + 98)
cp 01
ret nz
ld hl, c010
ld b, 04
ldi a, (hl)
ld (ff00 + b2), a
ldi a, (hl)
and a
jr z, 1d
ld (ff00 + b3), a
push hl
push bc
call 2a2b
push hl
pop de
pop bc
pop hl
ld a, (ff00 + 41)
and 03
jr nz, fa
ld a, (hl)
ld (de), a
ld a, d
add a, 30
ld d, a
ldi a, (hl)
ld (de), a
inc l
dec b
jr nz, dc
ld a, 02
ld (ff00 + 98), a
ld hl, c200
ld (hl), 80
ret
ld a, (c0c6)
cp 02
jr z, 46
push de
ld a, (hl)
or a
jr z, 54
dec a
ldi (hl), a
ld a, (hl)
inc a
daa
ld (hl), a
and 0f
ld (bc), a
dec c
ldi a, (hl)
cb 37
and 0f
jr z, 01
ld (bc), a
push bc
ld a, (ff00 + c3)
ld b, a
inc b
push hl
call 0166
pop hl
dec b
jr nz, f8
pop bc
inc hl
inc hl
push hl
ld hl, 0023
add hl, bc
pop de
call 2a82
pop de
ld a, (ff00 + c3)
ld b, a
inc b
ld hl, c0a0
push hl
call 0166
pop hl
dec b
jr nz, f8
ld a, 02
ld (c0c6), a
ret
ld de, c0a2
ld hl, 9a25
call 2a82
ld a, 02
ld (dfe0), a
xor a
ld (c0c6), a
ret
pop de
ld a, 21
ld (ff00 + a6), a
xor a
ld (c0c6), a
ld a, (c0c5)
inc a
ld (c0c5), a
cp 05
ret nz
ld a, 04
ld (ff00 + e1), a
ret
ld hl, c0ac
ld b, 1b
xor a
ldi (hl), a
dec b
jr nz, fc
ld hl, c0a0
ld b, 03
ldi (hl), a
dec b
jr nz, fc
ret
ld a, (hl)
and f0
cb 37
ld (de), a
ld a, (hl)
and 0f
inc e
ld (de), a
ret
ld a, 02
ld (ff00 + 8f), a
xor a
ld (ff00 + 8e), a
ld a, c0
ld (ff00 + 8d), a
ld hl, c200
call 2ad1
ret
ld a, 01
ld (ff00 + 8f), a
ld a, 10
ld (ff00 + 8e), a
ld a, c0
ld (ff00 + 8d), a
ld hl, c200
call 2ad1
ret
ld a, 01
ld (ff00 + 8f), a
ld a, 20
ld (ff00 + 8e), a
ld a, c0
ld (ff00 + 8d), a
ld hl, c210
call 2ad1
ret
ld b, 20
ld a, 8e
ld de, 0020
ld (hl), a
add hl, de
dec b
jr nz, fb
ret
ld a, (de)
cp ff
ret z
ldi (hl), a
inc de
jr f8
reti
nop
jr 3f
nop
add a, b
nop
nop
rst 38
nop
add a, b
adc a
nop
add a, b
nop
nop
rst 38
nop
ld (hl), b
scf
inc e
nop
nop
nop
jr c, 37
inc e
nop
nop
nop
ld b, b
inc (hl)
jr nz, 00
nop
nop
ld b, b
inc e
jr nz, 00
nop
nop
ld b, b
ld (hl), h
jr nz, 00
nop
nop
ld b, b
ld l, b
ld hl, 0000
nop
ld a, b
ld l, b
ld hl, 0000
nop
ld h, b
ld h, b
ldi a, (hl)
add a, b
nop
nop
ld h, b
ld (hl), d
ldi a, (hl)
add a, b
jr nz, 00
ld l, b
jr c, 3e
add a, b
nop
nop
ld h, b
ld h, b
ld (hl), 80
nop
nop
ld h, b
ld (hl), d
ld (hl), 80
jr nz, 00
ld l, b
jr c, 32
add a, b
nop
nop
ld h, b
ld h, b
ld l, 80
nop
nop
ld l, b
jr c, 3c
add a, b
nop
nop
ld h, b
ld h, b
ldd a, (hl)
add a, b
nop
nop
ld l, b
jr c, 30
add a, b
nop
add a, b
ccf
ld b, b
ld b, h
nop
nop
add a, b
ccf
jr nz, 4a
nop
nop
add a, b
ccf
jr nc, 46
nop
nop
add a, b
ld (hl), a
jr nz, 48
nop
nop
add a, b
add a
ld c, b
ld c, h
nop
nop
add a, b
add a
ld e, b
ld c, (hl)
nop
nop
add a, b
ld h, a
ld c, l
ld d, b
nop
nop
add a, b
ld h, a
ld e, l
ld d, d
nop
nop
add a, b
adc a
adc b
ld d, h
nop
nop
add a, b
adc a
sbc b
ld d, l
nop
nop
nop
ld e, a
ld d, a
inc l
nop
nop
add a, b
add a, b
ld d, b
inc (hl)
nop
nop
add a, b
add a, b
ld h, b
inc (hl)
nop
jr nz, 00
ld l, a
ld d, a
ld e, b
nop
nop
add a, b
add a, b
ld d, l
inc (hl)
nop
nop
add a, b
add a, b
ld e, e
inc (hl)
nop
jr nz, 21
rst 38
sbc e
ld bc, 0400
ld a, 2f
ldd (hl), a
dec bc
ld a, b
or c
jr nz, f8
ret
ldi a, (hl)
ld (de), a
inc de
dec bc
ld a, b
or c
jr nz, f8
ret
call 2817
ld bc, 00a0
call 27f8
ld hl, 3287
ld de, 8300
ld bc, 0d00
call 27f8
ret
ld hl, 41a7
ld bc, 0138
ld de, 8000
ldi a, (hl)
ld (de), a
inc de
ld (de), a
inc de
dec bc
ld a, b
or c
jr nz, f6
ret
call 2817
ld bc, 0da0
call 27f8
ret
ld bc, 1000
ld de, 8000
call 27f8
ret
ld hl, 9800
ld b, 12
push hl
ld c, 14
ld a, (de)
ldi (hl), a
inc de
dec c
jr nz, fa
pop hl
push de
ld de, 0020
add hl, de
pop de
dec b
jr nz, ed
ret
ld b, 0a
push hl
ld a, (de)
cp ff
jr z, 0e
ldi (hl), a
inc de
dec b
jr nz, f6
pop hl
push de
ld de, 0020
add hl, de
pop de
jr ea
pop hl
ld a, 02
ld (ff00 + e3), a
ret
ld a, (ff00 + ff)
ld (ff00 + a1), a
cb 87
ld (ff00 + ff), a
ld a, (ff00 + 44)
cp 91
jr nz, fa
ld a, (ff00 + 40)
and 7f
ld (ff00 + 40), a
ld a, (ff00 + a1)
ld (ff00 + ff), a
ret
cpl
cpl
ld de, 1d12
cpl
cpl
cpl
cpl
cpl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
cpl
cpl
inc e
dec e
ld a, (bc)
dec de
dec e
cpl
cpl
cpl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
cpl
cpl
cpl
dec e
jr 2f
cpl
cpl
cpl
cpl
cpl
add hl, hl
add hl, hl
cpl
cpl
cpl
inc c
jr 17
dec e
ld (de), a
rla
ld e, 0e
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
stop
ld d, 0e
cpl
cpl
cpl
cpl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
inc e
ld (de), a
rla
stop
ld c, 2f
cpl
cpl
cpl
cpl
nop
cpl
ld h, 2f
inc b
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
dec c
jr 1e
dec bc
dec d
ld c, 2f
cpl
cpl
cpl
cpl
nop
cpl
ld h, 2f
ld bc, 0000
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
dec e
dec de
ld (de), a
add hl, de
dec d
ld c, 2f
cpl
cpl
cpl
cpl
nop
cpl
ld h, 2f
inc bc
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
dec e
ld c, 1d
dec de
ld (de), a
inc e
cpl
cpl
cpl
cpl
cpl
nop
cpl
ld h, 2f
ld bc, 0002
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
dec c
dec de
jr 19
inc e
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
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
dec e
ld de, 1c12
cpl
inc e
dec e
ld a, (bc)
stop
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
rst 38
ld h, c
ld h, d
ld h, d
ld h, d
ld h, d
ld h, d
ld h, d
ld h, e
ld h, h
cpl
cpl
cpl
cpl
cpl
cpl
ld h, l
ld h, h
cpl
stop
ld d, 0e
cpl
ld h, l
ld h, h
cpl
xor l
xor l
xor l
xor l
cpl
ld h, l
ld h, h
cpl
jr 1f
ld c, 1b
cpl
ld h, l
ld h, h
cpl
xor l
xor l
xor l
xor l
cpl
ld h, l
ld h, (hl)
ld l, c
ld l, c
ld l, c
ld l, c
ld l, c
ld l, c
ld l, d
add hl, de
dec d
ld c, 0a
inc e
ld c, 2f
cpl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
cpl
dec e
dec de
ldi (hl), a
cpl
cpl
cpl
cpl
cpl
add hl, hl
add hl, hl
add hl, hl
cpl
cpl
cpl
cpl
cpl
cpl
ld a, (bc)
stop
ld (de), a
rla
daa
cpl
cpl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
add hl, hl
cpl
ld a, 20
ld (ff00 + 00), a
ld a, (ff00 + 00)
ld a, (ff00 + 00)
cpl
and 0f
cb 37
ld b, a
ld a, 10
ld (ff00 + 00), a
ld a, (ff00 + 00)
ld a, (ff00 + 00)
ld a, (ff00 + 00)
ld a, (ff00 + 00)
ld a, (ff00 + 00)
ld a, (ff00 + 00)
cpl
and 0f
or b
ld c, a
ld a, (ff00 + 80)
xor c
and c
ld (ff00 + 81), a
ld a, c
ld (ff00 + 80), a
ld a, 30
ld (ff00 + 00), a
ret
ld a, (ff00 + b2)
sub 10
cb 3f
cb 3f
cb 3f
ld de, 0000
ld e, a
ld hl, 9800
ld b, 20
add hl, de
dec b
jr nz, fc
ld a, (ff00 + b3)
sub 08
cb 3f
cb 3f
cb 3f
ld de, 0000
ld e, a
add hl, de
ld a, h
ld (ff00 + b5), a
ld a, l
ld (ff00 + b4), a
ret
ld a, (ff00 + b5)
ld d, a
ld a, (ff00 + b4)
ld e, a
ld b, 04
cb 1a
cb 1b
dec b
jr nz, f9
ld a, e
sub 84
and fe
rlca
rlca
add a, 08
ld (ff00 + b2), a
ld a, (ff00 + b4)
and 1f
rla
rla
rla
add a, 08
ld (ff00 + b3), a
ret
ld a, (ff00 + e0)
and a
ret z
ld c, 03
xor a
ld (ff00 + e0), a
ld a, (de)
ld b, a
cb 37
and 0f
jr nz, 28
ld a, (ff00 + e0)
and a
ld a, 00
jr nz, 02
ld a, 2f
ldi (hl), a
ld a, b
and 0f
jr nz, 21
ld a, (ff00 + e0)
and a
ld a, 00
jr nz, 09
ld a, 01
cp c
ld a, 00
jr z, 02
ld a, 2f
ldi (hl), a
dec e
dec c
jr nz, d4
xor a
ld (ff00 + e0), a
ret
push af
ld a, 01
ld (ff00 + e0), a
pop af
jr d9
push af
ld a, 01
ld (ff00 + e0), a
pop af
jr e7
ld a, c0
ld (ff00 + 46), a
ld a, 28
dec a
jr nz, fd
ret
ld a, h
ld (ff00 + 96), a
ld a, l
ld (ff00 + 97), a
ld a, (hl)
and a
jr z, 1d
cp 80
jr z, 17
ld a, (ff00 + 96)
ld h, a
ld a, (ff00 + 97)
ld l, a
ld de, 0010
add hl, de
ld a, (ff00 + 8f)
dec a
ld (ff00 + 8f), a
ret z
jr e0
xor a
ld (ff00 + 95), a
jr e9
ld (ff00 + 95), a
ld b, 07
ld de, ff86
ldi a, (hl)
ld (de), a
inc de
dec b
jr nz, fa
ld a, (ff00 + 89)
ld hl, 2bac
rlca
ld e, a
ld d, 00
add hl, de
ld e, (hl)
inc hl
ld d, (hl)
ld a, (de)
ld l, a
inc de
ld a, (de)
ld h, a
inc de
ld a, (de)
ld (ff00 + 90), a
inc de
ld a, (de)
ld (ff00 + 91), a
ld e, (hl)
inc hl
ld d, (hl)
inc hl
ld a, (ff00 + 8c)
ld (ff00 + 94), a
ld a, (hl)
cp ff
jr z, c7
cp fd
jr nz, 0e
ld a, (ff00 + 8c)
xor 20
ld (ff00 + 94), a
inc hl
ld a, (hl)
jr 08
inc de
inc de
jr e4
cp fe
jr z, f8
ld (ff00 + 89), a
ld a, (ff00 + 87)
ld b, a
ld a, (de)
ld c, a
ld a, (ff00 + 8b)
cb 77
jr nz, 06
ld a, (ff00 + 90)
add a, b
adc c
jr 0a
ld a, b
push af
ld a, (ff00 + 90)
ld b, a
pop af
sub b
sbc c
sbc 08
ld (ff00 + 93), a
ld a, (ff00 + 88)
ld b, a
inc de
ld a, (de)
inc de
ld c, a
ld a, (ff00 + 8b)
cb 6f
jr nz, 06
ld a, (ff00 + 91)
add a, b
adc c
jr 0a
ld a, b
push af
ld a, (ff00 + 91)
ld b, a
pop af
sub b
sbc c
sbc 08
ld (ff00 + 92), a
push hl
ld a, (ff00 + 8d)
ld h, a
ld a, (ff00 + 8e)
ld l, a
ld a, (ff00 + 95)
and a
jr z, 04
ld a, ff
jr 02
ld a, (ff00 + 93)
ldi (hl), a
ld a, (ff00 + 92)
ldi (hl), a
ld a, (ff00 + 89)
ldi (hl), a
ld a, (ff00 + 94)
ld b, a
ld a, (ff00 + 8b)
or b
ld b, a
ld a, (ff00 + 8a)
or b
ldi (hl), a
ld a, h
ld (ff00 + 8d), a
ld a, l
ld (ff00 + 8e), a
pop hl
jp 2b20
ld l, b
inc l
ld l, h
inc l
ld (hl), b
inc l
ld (hl), h
inc l
ld a, b
inc l
ld a, h
inc l
add a, b
inc l
add a, h
inc l
adc b
inc l
adc h
inc l
sub b
inc l
sub h
inc l
sbc b
inc l
sbc h
inc l
and b
inc l
and h
inc l
xor b
inc l
xor h
inc l
or b
inc l
or h
inc l
cp b
inc l
cp h
inc l
ret nz
inc l
call nz, c82c
inc l
call z, d02c
inc l
call nc, d82c
inc l
call c, e02c
inc l
unknown
inc l
add sp,2c
unknown
inc l
ld a, (ff00 + 2c)
unknown
inc l
ld hl, sp+2c
unknown
inc l
nop
dec l
inc b
dec l
ld (0c2d), sp
dec l
stop
inc d
dec l
rrca
ld sp, 2d14
jr 2d
inc e
dec l
jr nz, 2d
inc h
dec l
jr z, 2d
inc l
dec l
ldd (hl), a
ld sp, 3136
jr nc, 2d
inc (hl)
dec l
ldd a, (hl)
ld sp, 313e
jr c, 2d
inc a
dec l
ld b, b
dec l
ld b, h
dec l
ld c, b
dec l
ld c, h
dec l
ld b, d
ld sp, 3146
ld c, h
dec l
ld d, b
dec l
ld d, b
dec l
ld d, h
dec l
ld e, b
dec l
ld e, h
dec l
ld h, b
dec l
ld h, h
dec l
ld l, b
dec l
ld l, h
dec l
ld (hl), b
dec l
ld (hl), h
dec l
ld a, b
dec l
ld a, h
dec l
add a, b
dec l
add a, h
dec l
adc b
dec l
adc h
dec l
sub b
dec l
sub h
dec l
sbc b
dec l
sbc h
dec l
ld d, d
ld sp, 3156
ld e, d
ld sp, 315a
ld c, d
ld sp, 314e
and b
dec l
rst 28
ld a, (ff00 + b0)
dec l
rst 28
ld a, (ff00 + c2)
dec l
rst 28
ld a, (ff00 + d1)
dec l
rst 28
ld a, (ff00 + e2)
dec l
rst 28
ld a, (ff00 + f4)
dec l
rst 28
ld a, (ff00 + 05)
ld l, ef
ld a, (ff00 + 13)
ld l, ef
ld a, (ff00 + 24)
ld l, ef
ld a, (ff00 + 33)
ld l, ef
ld a, (ff00 + 44)
ld l, ef
ld a, (ff00 + 53)
ld l, ef
ld a, (ff00 + 64)
ld l, ef
ld a, (ff00 + 76)
ld l, ef
ld a, (ff00 + 88)
ld l, ef
ld a, (ff00 + 9a)
ld l, ef
ld a, (ff00 + ac)
ld l, ef
ld a, (ff00 + be)
ld l, ef
ld a, (ff00 + ce)
ld l, ef
ld a, (ff00 + e0)
ld l, ef
ld a, (ff00 + f0)
ld l, ef
ld a, (ff00 + 01)
cpl
rst 28
ld a, (ff00 + 12)
cpl
rst 28
ld a, (ff00 + 23)
cpl
rst 28
ld a, (ff00 + 53)
cpl
rst 28
ld a, (ff00 + 64)
cpl
rst 28
ld a, (ff00 + 34)
cpl
rst 28
ld a, (ff00 + 42)
cpl
rst 28
ld a, (ff00 + 75)
cpl
nop
add sp,7e
cpl
nop
add sp,87
cpl
nop
add sp,90
cpl
nop
add sp,99
cpl
nop
nop
sbc l
cpl
nop
nop
and c
cpl
nop
nop
and l
cpl
nop
nop
xor c
cpl
nop
nop
xor l
cpl
nop
nop
or c
cpl
nop
nop
or l
cpl
nop
nop
cp c
cpl
nop
nop
cp l
cpl
nop
nop
pop bc
cpl
ld a, (ff00 + f8)
call z, f02f
ld hl, sp+d7
cpl
ld a, (ff00 + f0)
unknown
cpl
ld a, (ff00 + f0)
nop
jr nc, f8
ld hl, sp+09
jr nc, f8
ld hl, sp+12
jr nc, f8
ld hl, sp+19
jr nc, f8
ld hl, sp+20
jr nc, f0
ld hl, sp+2b
jr nc, f0
ld hl, sp+36
jr nc, f0
ld a, (ff00 + 4b)
jr nc, f0
ld a, (ff00 + 61)
jr nc, f8
ld hl, sp+6a
jr nc, f8
ld hl, sp+73
jr nc, f8
ld hl, sp+7a
jr nc, f8
ld hl, sp+81
jr nc, f8
ld hl, sp+88
jr nc, f8
ld hl, sp+8f
jr nc, f8
ld hl, sp+96
jr nc, f8
ld hl, sp+9d
jr nc, f8
ld hl, sp+a4
jr nc, f8
ld hl, sp+af
jr nc, f8
ld hl, sp+b6
jr nc, f8
ld hl, sp+bd
jr nc, f8
ld hl, sp+c4
jr nc, f8
ld hl, sp+cb
jr nc, f8
ld hl, sp+d4
jr nc, f8
ld hl, sp+dd
jr nc, f8
ld hl, sp+e6
jr nc, f8
ld hl, sp+ef
jr nc, f8
ld hl, sp+f8
jr nc, f8
ld hl, sp+01
ld sp, f8f8
ld (f831), sp
ld hl, sp+8e
ld sp, f0f0
and l
ld sp, f8f8
pop af
ld sp, fefe
cp fe
cp fe
cp fe
add a, h
add a, h
add a, h
cp 84
rst 38
pop af
ld sp, fefe
cp fe
cp 84
cp fe
cp 84
cp fe
cp 84
add a, h
rst 38
pop af
ld sp, fefe
cp fe
cp fe
add a, h
cp 84
add a, h
add a, h
cp ff
pop af
ld sp, fefe
cp fe
add a, h
add a, h
cp fe
cp 84
cp fe
cp 84
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
add a, c
add a, c
add a, c
cp fe
cp 81
rst 38
pop af
ld sp, fefe
cp fe
cp 81
add a, c
cp fe
add a, c
cp fe
cp 81
rst 38
pop af
ld sp, fefe
cp fe
add a, c
cp fe
cp 81
add a, c
add a, c
rst 38
pop af
ld sp, fefe
cp fe
cp 81
cp fe
cp 81
cp fe
add a, c
add a, c
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
adc d
adc e
adc e
adc a
rst 38
pop af
ld sp, 80fe
cp fe
cp 88
cp fe
cp 88
cp fe
cp 89
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
adc d
adc e
adc e
adc a
rst 38
pop af
ld sp, 80fe
cp fe
cp 88
cp fe
cp 88
cp fe
cp 89
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 83
add a, e
cp fe
add a, e
add a, e
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 83
add a, e
cp fe
add a, e
add a, e
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 83
add a, e
cp fe
add a, e
add a, e
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 83
add a, e
cp fe
add a, e
add a, e
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
add a, d
add a, d
cp fe
cp 82
add a, d
rst 38
pop af
ld sp, fefe
cp fe
cp 82
cp fe
add a, d
add a, d
cp fe
add a, d
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
add a, d
add a, d
cp fe
cp 82
add a, d
rst 38
pop af
ld sp, fefe
cp fe
cp 82
cp fe
add a, d
add a, d
cp fe
add a, d
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 86
add a, (hl)
cp 86
add a, (hl)
rst 38
pop af
ld sp, fefe
cp fe
add a, (hl)
cp fe
cp 86
add a, (hl)
cp fe
cp 86
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
cp 86
add a, (hl)
cp 86
add a, (hl)
rst 38
pop af
ld sp, fefe
cp fe
add a, (hl)
cp fe
cp 86
add a, (hl)
cp fe
cp 86
rst 38
pop af
ld sp, fefe
cp fe
cp 85
cp fe
add a, l
add a, l
add a, l
rst 38
pop af
ld sp, fefe
cp fe
cp 85
cp fe
add a, l
add a, l
cp fe
cp 85
rst 38
pop af
ld sp, fefe
cp fe
cp fe
cp fe
add a, l
add a, l
add a, l
cp fe
add a, l
rst 38
pop af
ld sp, fefe
cp fe
cp 85
cp fe
cp 85
add a, l
cp fe
add a, l
rst 38
ld de, 0a32
dec h
dec e
ldi (hl), a
add hl, de
ld c, ff
ld de, 0b32
dec h
dec e
ldi (hl), a
add hl, de
ld c, ff
ld de, 0c32
dec h
dec e
ldi (hl), a
add hl, de
ld c, ff
ld de, 2f32
jr 0f
rrca
cpl
cpl
rst 38
ld de, 0032
rst 38
ld de, 0132
rst 38
ld de, 0232
rst 38
ld de, 0332
rst 38
ld de, 0432
rst 38
ld de, 0532
rst 38
ld de, 0632
rst 38
ld de, 0732
rst 38
ld de, 0832
rst 38
ld de, 0932
rst 38
ld hl, 2f32
ld bc, 112f
jr nz, 21
jr nc, 31
rst 38
ld hl, 2f32
inc bc
ld (de), a
inc de
ldi (hl), a
inc hl
ldd (hl), a
inc sp
rst 38
pop af
ld sp, 052f
unknown
dec b
cpl
cpl
dec d
inc b
rla
inc h
dec h
ld h, 27
inc (hl)
dec (hl)
ld (hl), 2f
rst 38
pop af
ld sp, 3708
unknown
scf
unknown
ld (1918), sp
inc d
dec de
jr z, 29
ldi a, (hl)
dec hl
ld h, b
ld (hl), b
ld (hl), 2f
rst 38
ld hl, b932
unknown
cp c
cp d
unknown
cp d
rst 38
ld hl, 8232
unknown
add a, d
add a, e
unknown
add a, e
rst 38
ld hl, 0932
ld a, (bc)
ldd a, (hl)
dec sp
rst 38
ld hl, 0b32
ld b, b
ld a, h
ld l, a
rst 38
ld hl, 2f32
rrca
cpl
rra
ld e, a
inc l
cpl
ccf
rst 38
ld hl, 6c32
inc a
ld c, e
ld c, h
ld e, e
ld e, h
ld l, e
cpl
rst 38
pop af
ld sp, 4d2f
unknown
ld c, l
cpl
cpl
ld e, l
ld e, (hl)
ld c, (hl)
ld e, a
ld l, l
ld l, (hl)
cpl
cpl
ld a, l
unknown
ld a, l
cpl
rst 38
pop af
ld sp, 7708
unknown
ld (hl), a
unknown
ld (7818), sp
ld b, e
ld d, e
ld a, d
ld a, e
ld d, b
cpl
cpl
ld (bc), a
unknown
ld a, l
cpl
rst 38
ld hl, b932
unknown
cp c
cp d
unknown
cp d
rst 38
ld hl, 8232
unknown
add a, d
add a, e
unknown
add a, e
rst 38
ld hl, 0932
ld a, (bc)
ldd a, (hl)
dec sp
rst 38
ld hl, 0b32
ld b, b
ld a, h
ld l, a
rst 38
ld hl, dc32
unknown
ld (ff00 + e1), a
rst 38
ld hl, de32
rst 18
ld (ff00 + e1), a
rst 38
ld hl, de32
ld (ff00 + c), a
ld (ff00 + e4), a
rst 38
ld hl, dc32
xor e0
unknown
rst 38
ld hl, e532
and e7
add sp,ff
ld hl, fd32
and fd
push hl
unknown
add sp,fd
rst 20
rst 38
ld hl, e932
ld (eceb), a
rst 38
ld hl, ed32
ld (eceb), a
rst 38
ld hl, f232
unknown
di
cp a
rst 38
ld hl, f432
ld a, (ff00 + c)
cp a
di
rst 38
ld hl, c232
unknown
jp nz, fdc3
jp 21ff
ldd (hl), a
call nz, c4fd
push bc
unknown
push bc
rst 38
ld hl, dc32
unknown
call c, fdef
rst 28
rst 38
ld hl, f032
unknown
ld a, (ff00 + f1)
unknown
pop af
rst 38
ld hl, dc32
unknown
ld a, (ff00 + f1)
unknown
rst 28
rst 38
ld hl, f032
unknown
call c, fdef
pop af
rst 38
ld hl, bd32
cp (hl)
cp e
cp h
rst 38
ld hl, b932
cp d
jp c, ffdb
inc de
ld sp, f0e0
dec a
ldd (hl), a
ret nz
pop bc
push bc
add a, cc
call 7675
and h
and l
and (hl)
and a
ld d, h
ld d, l
ld d, (hl)
ld d, a
ld b, h
ld b, l
ld b, (hl)
ld b, a
and b
and c
and d
and e
sbc h
sbc l
sbc (hl)
sbc a
rst 38
ld e, (hl)
ld sp, e8f8
ld h, h
ld sp, e8f0
ld l, l
ld sp, 0000
ld (hl), e
ld sp, 0000
ld a, c
ld sp, 0000
add a, d
ld sp, 0000
push hl
ld sp, 0000
unknown
ld sp, 0000
xor h
ld sp, f8d8
call nz, e831
ld hl, sp+d6
ld sp, f8f0
ld (hl), l
ldd (hl), a
ld h, e
ld h, h
ld h, l
rst 38
ld (hl), l
ldd (hl), a
ld h, e
ld h, h
ld h, l
ld h, (hl)
ld h, a
ld l, b
rst 38
ld (hl), l
ldd (hl), a
ld b, c
ld b, c
ld b, c
rst 38
ld (hl), l
ldd (hl), a
ld b, d
ld b, d
ld b, d
rst 38
ld (hl), l
ldd (hl), a
ld d, d
ld d, d
ld d, d
ld h, d
ld h, d
ld h, d
rst 38
ld (hl), l
ldd (hl), a
ld d, c
ld d, c
ld d, c
ld h, c
ld h, c
ld h, c
ld (hl), c
ld (hl), c
ld (hl), c
rst 38
pop af
ld sp, 2f2f
cpl
cpl
cpl
cpl
cpl
cpl
ld h, e
ld h, h
unknown
ld h, h
unknown
ld h, e
ld h, (hl)
ld h, a
unknown
ld h, a
unknown
ld h, (hl)
rst 38
ld hl, 2f32
cpl
ld h, e
ld h, h
rst 38
ld hl, 0032
unknown
nop
stop
stop
unknown
ld c, a
add a, b
unknown
add a, b
add a, b
unknown
add a, b
add a, c
unknown
add a, c
sub a
unknown
sub a
rst 38
ld hl, 9832
unknown
sbc b
sbc c
unknown
sbc c
add a, b
unknown
add a, b
sbc d
unknown
sbc d
sbc e
unknown
sbc e
rst 38
ld hl, a832
unknown
xor b
xor c
unknown
xor c
xor d
unknown
xor d
xor e
unknown
xor e
rst 38
ld hl, 4132
cpl
cpl
rst 38
ld hl, 5232
cpl
ld h, d
rst 38
nop
nop
nop
ld (1000), sp
nop
jr 08
nop
ld (0808), sp
stop
jr 10
nop
stop
stop
stop
jr 00
jr 08
jr 10
jr 18
nop
nop
nop
ld (1000), sp
nop
jr 00
jr nz, 00
jr z, 00
jr nc, 00
jr c, 00
nop
nop
ld (0008), sp
ld (1008), sp
nop
stop
jr 00
jr 08
jr nz, 00
jr nz, 08
jr z, 00
jr z, 08
jr nc, 00
jr nc, 08
nop
ld (1000), sp
ld (0808), sp
stop
nop
stop
stop
stop
jr 00
jr 08
jr 10
jr 18
jr nz, 00
jr nz, 08
jr nz, 10
jr nz, 18
jr z, 00
jr z, 08
jr z, 10
jr z, 18
jr nc, 00
jr nc, 08
jr nc, 10
jr nc, 18
jr c, 00
jr c, 08
jr c, 10
jr c, 18
nop
nop
nop
ld (1000), sp
ld (0800), sp
ld (1008), sp
stop
stop
stop
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, h
ld a, h
ld a, b
ld a, c
ld a, b
ld a, e
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ccf
ccf
rra
sbc a
rra
rst 18
ld a, b
ld a, e
ld a, b
ld a, c
ld a, h
ld a, h
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
nop
nop
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rra
rst 18
rra
sbc a
ccf
ccf
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld hl, sp+f8
ld a, (ff00 + f2)
pop hl
push af
unknown
ld a, (ff00 + c)
and ff
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 38
rst 38
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rra
rra
rrca
ld c, a
add a
xor a
rst 00
ld c, a
ld h, a
ld a, (ff00 + c)
and f2
and f2
and f2
and f2
and f2
and f2
and f2
and 4f
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld a, (ff00 + c)
and f5
unknown
ld a, (ff00 + c)
pop hl
ld hl, sp+f0
rst 38
ld hl, sp+ff
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
rst 38
rst 38
nop
rst 38
nop
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld c, a
ld h, a
xor a
rst 00
ld c, a
add a
rra
rrca
rst 38
rra
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld a, b
ld a, e
ld a, b
ld a, c
ld a, h
ld a, h
ld a, a
ld a, a
ld a, a
ld a, a
ld a, h
ld a, h
ld a, b
ld a, c
ld a, b
ld a, e
rra
rst 18
rra
sbc a
ccf
ccf
rst 38
rst 38
rst 38
rst 38
ccf
ccf
rra
sbc a
rra
rst 18
nop
nop
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
rst 38
nop
nop
nop
nop
nop
ld a, a
nop
nop
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
ld a, b
ld a, d
nop
ld (bc), a
nop
ld a, d
nop
ld a, d
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
rra
ld e, a
nop
ld b, b
nop
ld e, a
nop
ld e, a
nop
nop
nop
rst 38
nop
nop
nop
rst 38
nop
rst 38
nop
nop
nop
rst 38
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
jr nc, 30
jr nc, 30
inc sp
ldd (hl), a
inc sp
jr nc, 00
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 38
ld (bc), a
rst 38
jr nz, 00
nop
nop
nop
unknown
unknown
unknown
unknown
inc c
inc c
inc c
inc c
call z, cc0c
inc c
inc sp
jr nc, 33
jr nc, 33
jr nc, 33
jr nc, 33
jr nc, 33
jr nc, 33
ldd (hl), a
inc sp
jr nc, cc
inc c
call z, cc4c
inc c
call z, cc0c
inc c
call z, cc8c
inc c
call z, 330c
jr nc, 33
jr nc, 30
jr nc, 30
jr nc, 3f
ccf
ccf
ccf
nop
nop
nop
nop
rst 38
inc b
rst 38
ld b, b
nop
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
call z, cc0c
ld c, h
inc c
inc c
inc c
inc c
unknown
unknown
unknown
unknown
nop
nop
nop
nop
nop
nop
rst 38
rst 38
rst 38
nop
rst 38
ld (bc), a
rst 38
jr nz, ff
nop
rst 38
inc b
rst 38
nop
rst 38
nop
rst 38
ld (bc), a
rst 38
ld b, b
rst 38
nop
rst 38
ld (01ff), sp
rst 38
ld b, e
rst 38
rlca
rst 38
inc b
rst 38
ld b, b
rst 38
ld (bc), a
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
rst 38
nop
rst 38
ld b, b
rst 38
ld (bc), a
rst 38
nop
rst 38
stop
add a, b
rst 38
jp nz, e0ff
cp 06
cp 46
cp 06
cp 06
cp 16
cp 86
cp 06
cp 06
ld a, a
ld h, h
ld a, a
ld h, b
ld a, a
ld h, d
ld a, a
ld h, b
ld a, a
ld h, b
ld a, a
ld l, b
ld a, a
ld h, d
ld a, a
ld h, b
rst 38
ld (bc), a
rst 38
ld b, b
rst 38
nop
rst 38
nop
rst 38
ld (80ff), sp
rst 38
rra
ld a, (ff00 + 10)
rst 38
ld (bc), a
rst 38
jr nz, ff
nop
rst 38
nop
rst 38
inc b
rst 38
nop
rst 38
rst 38
nop
nop
rst 38
rlca
rst 38
inc de
rst 38
ld bc, 00ff
rst 38
ld b, b
rst 38
nop
rst 38
rst 38
ld (0008), sp
nop
rst 38
rst 38
rst 38
rst 38
rst 38
nop
rst 38
ld (bc), a
rst 38
jr nz, ff
rst 38
nop
nop
rst 38
ld (ff00 + ff), a
ret z
rst 38
add a, b
rst 38
nop
rst 38
ld (bc), a
rst 38
nop
rst 38
rst 38
ld (ff08), sp
nop
rst 38
ld (bc), a
rst 38
ld b, b
rst 38
nop
rst 38
ld (bc), a
rst 38
nop
rst 38
ld hl, sp+0f
ld (10f0), sp
ld a, (ff00 + 10)
ld a, (ff00 + 10)
ld a, (ff00 + 50)
ld a, (ff00 + 10)
ld a, (ff00 + 10)
ld a, (ff00 + 10)
ld a, (ff00 + 10)
rrca
ld (0a0f), sp
rrca
ld (080f), sp
rrca
ld (080f), sp
rrca
add hl, bc
rrca
ld (0000), sp
nop
ld a, a
nop
nop
ld a, a
ld a, a
ld a, a
ld a, a
ld a, h
ld a, h
ld a, b
ld a, c
ld a, b
ld a, e
nop
nop
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
ccf
ccf
rra
sbc a
rra
rst 18
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
nop
nop
nop
ld a, a
nop
nop
nop
nop
nop
nop
nop
nop
xor d
xor d
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
jr c, 38
inc sp
jr nc, 36
jr nc, 34
jr nc, 00
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
rst 38
nop
nop
nop
nop
nop
nop
nop
nop
nop
ld a, (ff00 + f0)
ld hl, sp+f8
inc e
inc e
call z, 6c0c
inc c
inc l
inc c
inc (hl)
jr nc, 34
jr nc, 34
jr nc, 34
jr nc, 34
jr nc, 34
jr nc, 34
jr nc, 34
jr nc, 2c
inc c
inc l
inc c
inc l
inc c
inc l
inc c
inc l
inc c
inc l
inc c
inc l
inc c
inc l
inc c
inc (hl)
jr nc, 36
jr nc, 33
jr nc, 38
jr c, 1f
rra
rrca
rrca
nop
nop
nop
nop
nop
ld a, e
nop
ld a, c
nop
ld a, h
nop
ld a, a
nop
ld a, a
nop
nop
nop
ld a, a
nop
nop
nop
rst 18
nop
sbc a
nop
ccf
nop
rst 38
nop
rst 38
nop
nop
nop
rst 38
nop
nop
nop
nop
nop
nop
rst 38
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
inc l
inc c
ld l, h
inc c
call z, 1c0c
inc e
ld hl, sp+f8
ld a, (ff00 + f0)
nop
nop
nop
nop
ld (ff08), sp
rst 38
rst 38
ld (bc), a
rst 38
nop
rst 38
jr nz, ff
nop
rst 38
ld (bc), a
rst 38
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
nop
rst 38
ld (bc), a
rst 38
jr nz, ff
rst 38
ld (ff08), sp
rlca
rst 38
inc de
rst 38
ld bc, 00ff
rst 38
ld b, b
rst 38
nop
rst 38
rst 38
nop
nop
rst 38
ld (ff00 + ff), a
ret z
rst 38
add a, b
rst 38
nop
rst 38
ld (bc), a
rst 38
nop
rst 38
rst 38
nop
nop
ld (0808), sp
ld (0808), sp
ld (0808), sp
ld (0808), sp
ld (0808), sp
ld (00ff), sp
rst 38
ld (bc), a
rst 38
nop
rst 38
jr nz, ff
ld (bc), a
rst 38
nop
rst 38
rst 38
ld (f008), sp
stop
rra
ld a, (ff00 + 1f)
ld a, (ff00 + 1f)
ld a, (ff00 + 1f)
ld a, (ff00 + 1f)
rst 38
ld e, a
ld a, (ff00 + 10)
nop
nop
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
nop
nop
ld (ff08), sp
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
ld (0f08), sp
ld (f8ff), sp
rrca
ld hl, sp+0f
ld hl, sp+0f
ld hl, sp+0f
ld hl, sp+ff
ld a, (080f)
rst 38
rlca
rst 38
ld b, e
rst 38
ld bc, 00ff
rst 38
nop
rst 38
add a, b
rst 38
rra
ld a, (ff00 + 10)
rst 38
ld (ff00 + ff), a
jp nz, 80ff
rst 38
nop
rst 38
ldi (hl), a
rst 38
nop
rst 38
ld hl, sp+0f
ld (0000), sp
nop
nop
nop
nop
inc a
nop
inc a
nop
nop
nop
nop
nop
nop
nop
nop
nop
inc a
nop
ld c, (hl)
nop
ld c, (hl)
nop
ld a, (hl)
nop
ld c, (hl)
nop
ld c, (hl)
nop
nop
nop
nop
nop
ld a, h
nop
ld h, (hl)
nop
ld a, h
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld a, h
nop
nop
nop
nop
nop
inc a
nop
ld h, (hl)
nop
ld h, b
nop
ld h, b
nop
ld h, (hl)
nop
inc a
nop
nop
nop
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
nop
nop
ld a, (hl)
nop
jr 00
jr 00
jr 00
jr 00
jr 00
nop
nop
nop
nop
ld h, (hl)
nop
ld h, (hl)
nop
inc a
nop
jr 00
jr 00
jr 00
nop
nop
rst 38
rst 38
rst 30
adc c
unknown
and e
rst 38
add a, c
or a
ret
unknown
add a, e
rst 10
xor c
rst 38
add a, c
rst 38
rst 38
rst 38
add a, c
rst 38
cp l
rst 20
and l
rst 20
and l
rst 38
cp l
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
rst 38
add a, c
rst 38
add a, c
rst 38
sbc c
rst 38
sbc c
rst 38
add a, c
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
add a, c
add a, c
cp l
cp l
cp l
cp l
cp l
cp l
cp l
cp l
add a, c
add a, c
rst 38
rst 38
rst 38
rst 38
add a, c
rst 38
add a, c
rst 38
add a, c
rst 38
add a, c
rst 38
add a, c
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
add a, c
jp df81
add a, l
rst 18
add a, l
rst 38
cp l
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
add a, c
rst 38
cp l
rst 38
and l
rst 20
and l
rst 20
cp l
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
rst 38
add a, c
add a, c
cp l
add a, e
cp l
add a, e
cp l
add a, e
cp l
add a, e
add a, c
rst 38
rst 38
rst 38
unknown
sub e
cp a
pop bc
push af
adc e
rst 18
and c
unknown
add a, e
xor a
pop de
ei
add a, l
rst 18
and c
unknown
add a, e
rst 28
sub c
cp e
push bc
rst 28
sub c
cp l
jp 89f7
rst 18
and c
rst 38
rst 38
rst 38
rst 38
unknown
and h
rst 38
add a, b
or l
jp z, 80ff
unknown
and d
rst 30
adc b
rst 38
rst 38
rst 38
rst 38
ld d, a
xor b
unknown
ld (bc), a
rst 18
jr nz, 7b
add a, h
xor 11
cp e
ld b, h
rst 38
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld (hl), a
adc c
rst 18
ld hl, 05fb
xor a
ld d, c
unknown
inc bc
rst 10
add hl, hl
rst 38
rst 38
nop
nop
inc a
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld h, (hl)
nop
inc a
nop
nop
nop
nop
nop
jr 00
jr c, 00
jr 00
jr 00
jr 00
inc a
nop
nop
nop
nop
nop
inc a
nop
ld c, (hl)
nop
ld c, 00
inc a
nop
ld (hl), b
nop
ld a, (hl)
nop
nop
nop
nop
nop
ld a, h
nop
ld c, 00
inc a
nop
ld c, 00
ld c, 00
ld a, h
nop
nop
nop
nop
nop
inc a
nop
ld l, h
nop
ld c, h
nop
ld c, (hl)
nop
ld a, (hl)
nop
inc c
nop
nop
nop
nop
nop
ld a, h
nop
ld h, b
nop
ld a, h
nop
ld c, 00
ld c, (hl)
nop
inc a
nop
nop
nop
nop
nop
inc a
nop
ld h, b
nop
ld a, h
nop
ld h, (hl)
nop
ld h, (hl)
nop
inc a
nop
nop
nop
nop
nop
ld a, (hl)
nop
ld b, 00
inc c
nop
jr 00
jr c, 00
jr c, 00
nop
nop
nop
nop
inc a
nop
ld c, (hl)
nop
inc a
nop
ld c, (hl)
nop
ld c, (hl)
nop
inc a
nop
nop
nop
nop
nop
inc a
nop
ld c, (hl)
nop
ld c, (hl)
nop
ld a, 00
ld c, 00
inc a
nop
nop
nop
nop
nop
ld a, h
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld a, h
nop
ld h, b
nop
ld h, b
nop
nop
nop
nop
nop
ld a, (hl)
nop
ld h, b
nop
ld a, h
nop
ld h, b
nop
ld h, b
nop
ld a, (hl)
nop
nop
nop
nop
nop
ld a, (hl)
nop
ld h, b
nop
ld h, b
nop
ld a, h
nop
ld h, b
nop
ld h, b
nop
nop
nop
nop
nop
inc a
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld h, (hl)
nop
inc a
nop
nop
nop
nop
nop
inc a
nop
ld h, (hl)
nop
ld h, b
nop
ld l, (hl)
nop
ld h, (hl)
nop
ld a, 00
nop
nop
nop
nop
ld b, (hl)
nop
ld l, (hl)
nop
ld a, (hl)
nop
ld d, (hl)
nop
ld b, (hl)
nop
ld b, (hl)
nop
nop
nop
nop
nop
ld b, (hl)
nop
ld b, (hl)
nop
ld b, (hl)
nop
ld b, (hl)
nop
ld c, (hl)
nop
inc a
nop
nop
nop
nop
nop
inc a
nop
ld h, b
nop
inc a
nop
ld c, 00
ld c, (hl)
nop
inc a
nop
nop
nop
nop
nop
inc a
nop
jr 00
jr 00
jr 00
jr 00
inc a
nop
nop
nop
nop
nop
ld h, b
nop
ld h, b
nop
ld h, b
nop
ld h, b
nop
ld h, b
nop
ld a, (hl)
nop
nop
nop
nop
nop
ld b, (hl)
nop
ld b, (hl)
nop
ld b, (hl)
nop
ld b, (hl)
nop
inc l
nop
jr 00
nop
nop
nop
nop
ld a, h
nop
ld h, (hl)
nop
ld h, (hl)
nop
ld a, h
nop
ld l, b
nop
ld h, (hl)
nop
nop
nop
nop
nop
ld b, (hl)
nop
ld h, (hl)
nop
halt
nop
ld e, (hl)
nop
ld c, (hl)
nop
ld b, (hl)
nop
nop
nop
nop
nop
ld a, h
nop
ld c, (hl)
nop
ld c, (hl)
nop
ld c, (hl)
nop
ld c, (hl)
nop
ld a, h
nop
nop
nop
rst 38
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
stop
add a, b
rst 38
ld (bc), a
rst 38
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
nop
rst 38
ld (bc), a
rst 38
jr nz, ff
rst 38
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
add a, b
add a, b
add a, b
add a, b
rst 38
rst 38
rst 38
nop
rst 38
ld (bc), a
rst 38
jr nz, ff
nop
rst 38
nop
rst 38
nop
rst 38
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
jr 1f
ld hl, 473e
ld a, a
ld e, a
ld a, a
add hl, sp
jr nc, 7b
ld h, d
ei
or d
rst 38
and b
rst 38
jp nz, 547f
ld a, a
ld e, h
ccf
ld l, 7f
ld h, e
cp a
ld hl, sp+37
rst 38
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 8301
add a, e
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, ff01
rst 38
rst 38
rst 38
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 0101
add a, e
add a, e
rst 38
rst 38
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
rst 38
rst 38
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
reti
add a
nop
jr c, 00
jr c, 00
jr c, 00
jr c, 00
jr c, 00
jr c, 00
jr c, 00
jr c, 7c
nop
ld a, h
nop
ld a, h
nop
ld a, h
nop
ld a, h
nop
ld a, h
nop
ld a, a
nop
rst 38
nop
nop
nop
nop
nop
ld (0800), sp
nop
ld (0800), sp
nop
inc e
nop
inc e
nop
nop
nop
nop
ld c, 01
dec e
ld e, 06
ldi a, (hl)
ldi a, (hl)
daa
daa
stop
inc c
dec c
nop
nop
ret nz
ret nz
jr nz, 20
stop
ret nc
stop
jr nc, c8
add sp,08
add sp,04
rlca
inc bc
inc bc
inc c
inc c
stop
dec (hl)
jr nz, 2a
jr nz, 3f
ccf
inc c
inc c
jr z, e8
ret c
ret nz
ld b, b
ld b, b
jr nz, 20
ld d, b
stop
stop
ld a, (ff00 + c0)
ret nz
nop
ld (ff00 + 01), a
ld (hl), c
ldd (hl), a
ld b, d
inc (hl)
dec (hl)
ld d, l
ld d, h
ld c, a
ld c, (hl)
ld hl, 1827
dec de
nop
nop
add a, b
add a, b
ld b, b
ld b, b
jr nz, a0
and b
jr nz, e0
ld h, b
sub b
ld a, (ff00 + 08)
ret z
cp b
cp b
add a, h
add a, h
add a, h
add a, h
unknown
unknown
sub d
sub d
sub d
sub d
ld l, h
ld l, h
xor ee
rlca
rlca
rra
jr 3e
jr nz, 7f
ld c, a
ld a, a
ld e, a
ld (hl), b
ld (hl), b
and d
and d
or b
or b
or h
or h
ld h, h
ld h, h
inc a
inc a
ld l, 2e
daa
daa
stop
ld l, h
ld a, h
rst 08
or e
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rlca
ld b, 09
add hl, bc
ld d, 17
ld (de), a
ld de, 0f0e
ld (0809), sp
ld (0f0f), sp
ld (0908), sp
add hl, bc
ld a, (bc)
ld a, (bc)
ld b, 06
ld c, 0e
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rra
ld e, 21
ld hl, 554a
ld c, d
ld (hl), l
ld a, (bc)
dec (hl)
ld a, (bc)
dec d
ld (0f08), sp
rrca
ld (0908), sp
add hl, bc
ld a, (bc)
ld a, (bc)
ld b, 06
ld c, 0e
nop
nop
ld h, (hl)
nop
ld l, h
nop
ld a, b
nop
ld a, b
nop
ld l, h
nop
ld h, (hl)
nop
nop
nop
nop
nop
ld b, (hl)
nop
inc l
nop
jr 00
jr c, 00
ld h, h
nop
ld b, d
nop
nop
nop
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
ld hl, sp+00
ld (ff00 + 00), a
ret nz
nop
add a, b
nop
add a, b
nop
nop
nop
nop
nop
nop
nop
ld a, a
nop
rra
nop
rrca
nop
rlca
nop
rlca
nop
inc bc
nop
inc bc
nop
inc bc
nop
nop
nop
add a, b
nop
add a, b
nop
ret nz
nop
ld (ff00 + 00), a
ld hl, sp+00
rst 38
nop
rst 38
nop
inc bc
nop
rlca
nop
rlca
nop
rrca
nop
rra
nop
ld a, a
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
nop
rst 38
rst 38
rst 38
nop
rst 38
rst 38
nop
nop
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
ld bc, 02fe
cp 02
unknown
inc b
unknown
inc b
unknown
inc b
rst 38
ld (bc), a
rst 38
ld bc, 01ff
ld bc, ff01
ld bc, 0101
rst 38
ld bc, 0101
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
inc bc
inc bc
inc b
dec b
ld (1109), sp
ld (de), a
ld hl, 4326
ld c, h
nop
nop
ld bc, 0201
ld (bc), a
inc b
inc b
ld (1009), sp
inc de
jr nz, 27
jr nz, 2f
add a
sbc b
ld b, 39
ld c, 71
ld e, e1
inc a
jp c33c
ld a, b
add a
ld a, b
add a
ld b, b
ld c, a
ld b, b
ld c, a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
ld hl, sp+07
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld hl, sp+07
ld b, b
ld e, a
ld b, b
ld c, a
jr nz, 2f
jr nz, 27
stop
rrca
rrca
inc b
inc b
rlca
rlca
ld a, b
add a
ld a, h
add a, e
inc a
jp e11e
rrca
ld a, (ff00 + ff)
rst 38
rst 38
nop
rst 38
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
nop
nop
rst 38
nop
nop
nop
rst 38
nop
nop
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
stop
jr c, 00
ld a, h
nop
cp 00
cp 00
cp 00
ld a, h
nop
nop
nop
ld (bc), a
inc bc
ld bc, 0201
ld (bc), a
inc b
inc b
dec c
ld (080a), sp
rrca
rrca
inc bc
inc bc
jr z, e8
ld a, (ff00 + d0)
jr nc, 30
ld (5408), sp
inc b
xor h
inc b
unknown
unknown
jr nc, 30
nop
nop
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rlca
ld b, 09
add hl, bc
ld (0b08), sp
dec bc
nop
nop
ret nz
ret nz
call nz, e8c4
ld l, b
sub b
ld a, (ff00 + a8)
ld hl, sp+48
ld a, b
ld hl, sp+b8
nop
nop
rlca
rlca
rlca
rlca
rlca
inc b
rlca
inc b
dec bc
dec bc
stop
rla
rla
nop
nop
add a, b
add a, b
add a, b
add a, b
ld (ff00 + e0), a
sub b
ld a, (ff00 + a8)
ld hl, sp+48
ld a, b
cp b
cp b
ld (0f08), sp
rrca
ld (0f08), sp
rrca
add hl, bc
add hl, bc
add hl, bc
add hl, bc
ld b, 06
ld c, 0e
unknown
unknown
ldi (hl), a
ldi (hl), a
jr nz, 20
ld (ff00 + e0), a
jr nz, 20
jr nz, 20
ret nz
ret nz
ld (ff00 + e0), a
jr 18
sbc b
sbc b
sbc b
sbc b
ld hl, sp+f8
sbc h
sbc b
inc a
inc a
inc a
inc a
ld a, (hl)
ld a, (hl)
ld a, a
nop
cp fe
ld a, (hl)
ld a, (hl)
cp da
ld a, (hl)
ld e, d
ld a, (hl)
ld a, (hl)
unknown
unknown
ld hl, sp+f8
cp 0e
cp fe
ld a, (hl)
ld a, (hl)
cp da
ld a, (hl)
ld e, d
ld a, (hl)
ld a, (hl)
unknown
unknown
ld hl, sp+f8
add a, b
add a, b
add a, e
add a, e
add a, e
add a, e
jp ef02
ld l, 97
sub a
ld b, a
ld b, h
inc h
inc h
nop
nop
ret nz
ret nz
ret nz
ret nz
ret nz
ld b, b
ld (ff00 + 60), a
ld hl, sp+f8
unknown
inc h
inc (hl)
inc (hl)
rla
inc d
rla
inc d
rla
inc d
inc e
rra
rla
rla
rrca
rrca
ld e, 1e
nop
nop
unknown
inc h
ld hl, sp+28
add sp,28
jr c, f8
add sp,e8
sub b
sub b
ld (hl), b
ld (hl), b
ld a, b
ld a, b
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rrca
ld c, 11
ld de, 3737
ld (hl), c
ld d, d
ld a, l
ld c, (hl)
ret nz
ret nz
ret nz
ret nz
ret nz
ld b, b
ret nz
ld b, b
and b
and b
stop
rst 38
rst 38
rst 08
inc sp
ld a, a
ld b, b
ccf
ccf
ld (0f08), sp
rrca
add hl, bc
add hl, bc
add hl, bc
add hl, bc
ld b, 06
ld c, 0e
unknown
unknown
jr nz, 20
jr nz, 20
ld (ff00 + e0), a
jr nz, 20
jr nz, 20
ret nz
ret nz
ld (ff00 + e0), a
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rlca
ld b, 09
add hl, bc
inc sp
inc sp
ld (hl), a
ld d, h
ld (hl), e
ld c, h
jr 18
ret c
ret c
ret c
ret c
ld hl, sp+78
call c, bc58
cp h
inc a
inc a
ld a, (hl)
ld a, (hl)
add hl, bc
ld c, 07
rlca
ld (080f), sp
rrca
add hl, bc
rrca
ld a, (bc)
ld c, 06
ld b, 0e
ld c, 00
nop
inc bc
inc bc
inc bc
inc bc
inc bc
ld (bc), a
rst 38
ld a, (hl)
ret
ccf
ld a, b
ld a, a
add hl, bc
rrca
inc b
inc b
rlca
rlca
cp b
cp a
ret nz
rst 38
rst 38
rst 38
nop
nop
nop
nop
nop
nop
nop
nop
ld a, b
ld a, b
ld a, b
ld a, b
ld a, e
ld c, b
ld h, b
ld e, a
or (hl)
or b
add a, h
add a, h
cp b
cp b
add a, h
add a, h
add a, h
add a, h
add a, h
add a, h
ld a, (92fa)
sub d
sbc (hl)
sbc (hl)
ld h, a
ld h, a
ld (ff00 + e0), a
nop
nop
nop
nop
ld a, b
ld a, b
ld a, b
ld a, b
ld a, b
ld c, b
ld b, b
ld a, (hl)
or h
or b
add a, h
add a, h
ldi a, (hl)
ld a, e
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
ld a, e
jr nc, 31
ld sp, 3131
ld sp, 2a32
ld a, h
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
ld a, h
ld b, h
inc e
inc c
jr 1b
ld c, 45
ldi a, (hl)
ld a, l
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
ld a, l
ld h, a
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld l, b
ldi a, (hl)
ld a, e
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
ld a, e
cpl
cpl
cpl
cpl
cpl
nop
cpl
ldi a, (hl)
ld a, h
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
ld a, h
ld b, e
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
ldi a, (hl)
ld a, l
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
ld a, l
jr nc, 31
ld sp, 3131
ld sp, 2a32
ld a, e
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
ld a, e
ld (hl), 15
ld c, 1f
ld c, 15
scf
ldi a, (hl)
ld a, h
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
ld a, h
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
ldi a, (hl)
ld a, l
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
ld a, l
ld b, b
ld b, d
ld b, d
ld b, d
ld b, d
ld b, d
ld b, c
ldi a, (hl)
ld a, e
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
ld a, e
ld (hl), 15
ld (de), a
rla
ld c, 1c
scf
ldi a, (hl)
ld a, h
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
ld a, h
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
ldi a, (hl)
ld a, l
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
ld a, l
inc sp
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
dec (hl)
ldi a, (hl)
ld a, e
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
ld a, e
dec hl
jr c, 39
add hl, sp
add hl, sp
add hl, sp
ldd a, (hl)
ldi a, (hl)
ld a, h
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
ld a, h
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, l
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
ld a, l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, e
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
ld a, e
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, h
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
ld a, h
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, l
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
ld a, l
dec hl
dec a
ld a, 3e
ld a, 3e
ccf
ldi a, (hl)
ld a, e
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
ld a, e
jr nc, 31
ld sp, 3131
ld sp, 2a32
ld a, h
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
ld a, h
ld (hl), 15
ld c, 1f
ld c, 15
scf
ldi a, (hl)
ld a, l
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
ld a, l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
ldi a, (hl)
ld a, e
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
ld a, e
ld b, b
ld b, d
ld b, d
ld b, d
ld b, d
ld b, d
ld b, c
ldi a, (hl)
ld a, h
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
ld a, h
ld (hl), 11
ld (de), a
stop
cpl
scf
ldi a, (hl)
ld a, l
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
ld a, l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
ldi a, (hl)
ld a, e
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
ld a, e
inc sp
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
dec (hl)
ldi a, (hl)
ld a, h
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
ld a, h
dec hl
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
ldi a, (hl)
ld a, l
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
ld a, l
jr nc, 31
ld sp, 3131
ld sp, 2a32
ld a, e
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
ld a, e
ld (hl), 15
ld (de), a
rla
ld c, 1c
scf
ldi a, (hl)
ld a, h
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
ld a, h
ld (hl), 2f
cpl
ld (bc), a
dec b
cpl
scf
ldi a, (hl)
ld a, l
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
ld a, l
inc sp
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
dec (hl)
ldi a, (hl)
ld a, e
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
ld a, e
dec hl
jr c, 39
add hl, sp
add hl, sp
add hl, sp
ldd a, (hl)
ldi a, (hl)
ld a, h
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
ld a, h
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, l
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
ld a, l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, e
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
ld a, e
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, h
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
ld a, h
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
ldi a, (hl)
ld a, l
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
ld a, l
dec hl
dec a
ld a, 3e
ld a, 3e
ccf
nop
inc a
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
inc a
nop
nop
jr 38
jr 18
jr 3c
nop
nop
inc a
ld c, (hl)
ld c, 3c
ld (hl), b
ld a, (hl)
nop
nop
ld a, h
ld c, 3c
ld c, 0e
ld a, h
nop
nop
inc a
ld l, h
ld c, h
ld c, (hl)
ld a, (hl)
inc c
nop
nop
ld a, h
ld h, b
ld a, h
ld c, 4e
inc a
nop
nop
inc a
ld h, b
ld a, h
ld h, (hl)
ld h, (hl)
inc a
nop
nop
ld a, (hl)
ld b, 0c
jr 38
jr c, 00
nop
inc a
ld c, (hl)
inc a
ld c, (hl)
ld c, (hl)
inc a
nop
nop
inc a
ld c, (hl)
ld c, (hl)
ld a, 0e
inc a
nop
nop
inc a
ld c, (hl)
ld c, (hl)
ld a, (hl)
ld c, (hl)
ld c, (hl)
nop
nop
ld a, h
ld h, (hl)
ld a, h
ld h, (hl)
ld h, (hl)
ld a, h
nop
nop
inc a
ld h, (hl)
ld h, b
ld h, b
ld h, (hl)
inc a
nop
nop
ld a, h
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld a, h
nop
nop
ld a, (hl)
ld h, b
ld a, h
ld h, b
ld h, b
ld a, (hl)
nop
nop
ld a, (hl)
ld h, b
ld h, b
ld a, h
ld h, b
ld h, b
nop
nop
inc a
ld h, (hl)
ld h, b
ld l, (hl)
ld h, (hl)
ld a, 00
nop
ld b, (hl)
ld b, (hl)
ld a, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
inc a
jr 18
jr 18
inc a
nop
nop
ld e, 0c
inc c
ld l, h
ld l, h
jr c, 00
nop
ld h, (hl)
ld l, h
ld a, b
ld a, b
ld l, h
ld h, (hl)
nop
nop
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld a, (hl)
nop
nop
ld b, (hl)
ld l, (hl)
ld a, (hl)
ld d, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
ld b, (hl)
ld h, (hl)
halt
ld e, (hl)
ld c, (hl)
ld b, (hl)
nop
nop
inc a
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
inc a
nop
nop
ld a, h
ld h, (hl)
ld h, (hl)
ld a, h
ld h, b
ld h, b
nop
nop
inc a
ld h, d
ld h, d
ld l, d
ld h, h
ldd a, (hl)
nop
nop
ld a, h
ld h, (hl)
ld h, (hl)
ld a, h
ld l, b
ld h, (hl)
nop
nop
inc a
ld h, b
inc a
ld c, 4e
inc a
nop
nop
ld a, (hl)
jr 18
jr 18
jr 00
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld c, (hl)
inc a
nop
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
inc l
jr 00
nop
ld b, (hl)
ld b, (hl)
ld d, (hl)
ld a, (hl)
ld l, (hl)
ld b, (hl)
nop
nop
ld b, (hl)
inc l
jr 38
ld h, h
ld b, d
nop
nop
ld h, (hl)
ld h, (hl)
inc a
jr 18
jr 00
nop
ld a, (hl)
ld c, 1c
jr c, 70
ld a, (hl)
nop
nop
nop
nop
nop
nop
ld h, b
ld h, b
nop
nop
nop
nop
inc a
inc a
nop
nop
nop
nop
nop
ldi (hl), a
inc d
ld (2214), sp
nop
nop
nop
ld (hl), 36
ld e, a
ld c, c
ld e, a
ld b, c
ld a, a
ld b, c
ld a, 22
inc e
inc d
ld (ff08), sp
rst 38
rst 38
add a, c
pop bc
cp a
pop bc
cp a
pop bc
cp a
pop bc
cp a
add a, c
rst 38
rst 38
rst 38
xor d
xor d
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
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
rst 38
nop
rst 38
ld b, b
rst 38
ld (bc), a
rst 38
nop
rst 38
stop
add a, b
rst 38
ld (bc), a
rst 38
nop
ld a, (ff00 + 10)
rst 38
rra
rst 38
nop
rst 38
ld b, b
rst 38
nop
rst 38
ld (bc), a
rst 38
ld b, b
rst 38
nop
rrca
ld (f8ff), sp
rst 38
nop
rst 38
ld (bc), a
rst 38
nop
rst 38
ld b, b
rst 38
ld (bc), a
rst 38
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
jr 18
jr c, 38
jr 18
jr 18
jr 18
inc a
inc a
nop
nop
nop
nop
inc a
inc a
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld a, 3e
ld c, 0e
inc a
inc a
nop
nop
nop
nop
inc a
inc a
ld c, (hl)
ld c, (hl)
inc a
inc a
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
inc a
inc a
nop
nop
jr c, 38
ld b, h
ld b, h
cp d
cp d
and d
and d
cp d
cp d
ld b, h
ld b, h
jr c, 38
add a, c6
and e6
and e6
sub d6
sub d6
adc ce
adc ce
add a, c6
ret nz
ret nz
ret nz
ret nz
nop
nop
unknown
unknown
unknown
unknown
reti
reti
reti
reti
reti
reti
nop
nop
jr nc, 30
ld a, b
ld a, b
inc sp
inc sp
or (hl)
or (hl)
or a
or a
or (hl)
or (hl)
or e
or e
nop
nop
nop
nop
nop
nop
call 6ecd
ld l, (hl)
unknown
unknown
inc c
inc c
unknown
unknown
ld bc, 0101
ld bc, 0101
adc a
adc a
reti
reti
reti
reti
reti
reti
rst 08
rst 08
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
sbc (hl)
sbc (hl)
or e
or e
or e
or e
or e
or e
sbc (hl)
sbc (hl)
rst 38
nop
rst 38
nop
rst 38
nop
rst 28
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 20
nop
rst 20
nop
rst 38
nop
rst 38
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
nop
rst 38
nop
rst 38
rst 38
nop
nop
rst 38
rst 38
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
ld bc, 02ff
cp fe
ld (bc), a
inc b
unknown
unknown
inc b
unknown
inc b
nop
rst 38
rst 38
rst 38
add a, b
rst 38
ld b, b
ld a, a
rst 38
ld b, b
ld (ff00 + 3f), a
rst 38
jr nz, bf
ld h, b
rst 38
nop
rst 38
nop
rst 38
ld bc, 02fe
cp 02
unknown
inc b
unknown
inc b
unknown
inc b
rst 38
nop
rst 38
nop
rst 38
add a, b
ld a, a
ld b, b
rst 38
ld b, b
rst 38
jr nz, ff
jr nz, bf
ld h, b
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 38
ld (bc), a
rst 38
ld bc, 01ff
rst 38
ld bc, 01ff
rst 38
ld bc, 01ff
rst 38
ld bc, c07f
rst 38
add a, b
rst 38
add a, b
rst 38
add a, b
rst 38
add a, b
rst 38
add a, b
rst 38
add a, b
rst 38
add a, b
cp 02
cp 02
rst 38
inc bc
unknown
dec b
ld hl, sp+09
pop af
ld (de), a
pop hl
ld h, c3
ld c, h
ld a, a
ret nz
ld a, a
ret nz
rst 38
ret nz
cp a
ld h, b
sbc a
ld (hl), b
xor a
ld e, b
daa
call c, ce33
rst 38
nop
rst 38
ld bc, 02fe
unknown
inc b
ld hl, sp+09
ld a, (ff00 + 13)
ld (ff00 + 27), a
ld (ff00 + 2f), a
add a
sbc b
ld b, 39
ld c, 71
ld e, e1
inc a
jp c33c
ld a, b
add a
ld a, b
add a
dec (hl)
cb 32
call c53a
ld a, c
add a, (hl)
ld a, b
add a
ld a, b
add a
ld a, h
add a, e
ld a, h
add a, e
rst 38
nop
rst 38
add a, b
ld a, a
ret nz
ccf
ld (ff00 + 9f), a
ld (hl), b
ld c, a
cp b
ld h, a
sbc h
scf
call z, 4fc0
ret nz
ld c, a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
add a, b
sbc a
ld hl, sp+07
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld a, (ff00 + 0f)
ld hl, sp+07
ld a, h
add a, e
ld a, (hl)
add a, c
ld a, (hl)
add a, c
ld a, c1
ccf
ret nz
rra
ld (ff00 + 1f), a
ld (ff00 + 1f), a
ld (ff00 + 33), a
adc 1b
and 09
rst 30
dec c
di
dec c
di
dec c
di
dec c
di
add hl, bc
rst 30
ret nz
ld e, a
ret nz
ld c, a
ld (ff00 + 2f), a
ld (ff00 + 27), a
ld a, (ff00 + 11)
cp a
ld c, a
inc c
unknown
rlca
rst 38
ld a, b
add a
ld a, h
add a, e
inc a
jp e11e
rrca
ld a, (ff00 + ff)
rst 38
rst 38
nop
rst 38
rst 38
rrca
ld a, (ff00 + 0f)
ld a, (ff00 + 0e)
pop af
ld c, f1
ld b, f9
rst 38
rst 38
push bc
ccf
rst 38
rst 38
dec de
and 13
xor 37
call z, dc27
ld c, a
cp b
unknown
di
unknown
and e
ld (ff00 + ff), a
cp 02
cp 02
cp a
ld b, e
inc e
push hl
cp b
ld c, c
or c
ld d, d
and c
ld h, (hl)
ld b, e
call z, 00ff
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 28
stop
jr c, ff
nop
ei
inc b
ei
inc b
ei
inc b
ei
inc b
pop af
ld c, f1
ld c, f1
ld c, 83
ld a, h
ld bc, 01fe
cp 01
cp 83
ld a, h
rst 38
nop
add a, e
ld a, h
add a, e
ld a, h
pop af
ld c, e0
rra
ld (ff00 + 1f), a
ld (ff00 + 1f), a
ld (ff00 + 1f), a
ld (ff00 + 1f), a
add a, b
ld a, a
add a, b
ld a, a
rst 30
ld (14eb), sp
rst 30
ld (08f7), sp
unknown
inc e
unknown
inc e
ld h, e
sbc h
ld bc, 00fe
nop
ld h, b
ld h, b
ld (hl), b
ld (hl), b
ld a, b
ld a, b
ld a, b
ld a, b
ld (hl), b
ld (hl), b
ld h, b
ld h, b
nop
nop
nop
nop
jr nc, 30
ld (hl), b
ld (hl), b
jr nc, 30
jr nc, 30
jr nc, 30
ld a, b
ld a, b
nop
nop
ld (ff00 + e0), a
ld a, (ff00 + e0)
ei
ld (ff00 + fc), a
ld (ff00 + fc), a
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
nop
nop
nop
nop
rst 38
nop
nop
nop
nop
rst 38
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
rst 18
rlca
ccf
rlca
ccf
add a
ccf
add a
ccf
add a
ccf
add a
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
ccf
add a
ccf
add a
ccf
add a
ccf
add a
ccf
add a
ccf
add a
ccf
add a
ccf
add a
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
pop hl
unknown
ld (ff00 + ff), a
rst 20
rst 38
rst 28
ld (ff00 + ff), a
nop
nop
nop
nop
nop
nop
nop
rst 38
nop
nop
rst 38
rst 38
rst 38
rst 38
nop
rst 38
ccf
add a
ccf
add a
ccf
add a
ccf
add a
ccf
rlca
rst 38
rst 20
rst 38
rst 30
rlca
rst 38
ld hl, sp+00
ld (ff00 + 00), a
ret nz
nop
add a, b
nop
add a, b
nop
nop
nop
nop
nop
nop
nop
ld a, a
nop
rra
nop
rrca
nop
rlca
nop
rlca
nop
inc bc
nop
inc bc
nop
inc bc
nop
nop
nop
add a, b
nop
add a, b
nop
ret nz
nop
ld (ff00 + 00), a
ld hl, sp+00
rst 38
nop
rst 38
nop
inc bc
nop
rlca
nop
rlca
nop
rrca
nop
rra
nop
ld a, a
nop
rst 38
nop
rst 38
nop
ld bc, 0101
ld bc, 8181
pop bc
pop bc
pop bc
pop bc
pop hl
pop hl
pop af
pop af
ld sp, hl
ld sp, hl
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
cp fe
ld a, (hl)
ld a, (hl)
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ccf
ccf
sbc a
sbc a
adc a
adc a
rst 08
rst 08
rst 20
rst 20
di
di
rst 30
rst 30
ld (ff00 + e0), a
ld (ff00 + e0), a
ld (ff00 + e0), a
ld (ff00 + e0), a
ld (ff00 + e0), a
ret nz
ret nz
ret nz
ret nz
add a, b
add a, b
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
ld a, (ff00 + f0)
nop
nop
ld a, h
ld a, h
ld b, a
ld b, a
ld b, c
ld b, c
ld b, b
ld b, b
ld b, b
ld b, b
ld b, b
ld b, b
ld a, a
ld b, b
nop
nop
ld bc, 0101
ld bc, 8181
pop bc
pop bc
ld b, c
ld b, c
ld h, c
ld h, c
pop hl
ld h, c
nop
nop
cp fe
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
cp 06
nop
nop
dec de
dec de
ldd (hl), a
ldd (hl), a
ld e, c
ld e, c
ld c, h
ld c, h
adc h
adc h
add a, (hl)
add a, (hl)
rst 38
add a, e
nop
nop
rst 38
rst 38
ld bc, 0101
ld bc, 8181
ld b, c
ld b, c
ld b, c
ld b, c
ccf
ld hl, 0000
cp (hl)
cp (hl)
adc b
adc b
adc b
adc b
adc b
adc b
adc b
adc b
add a, b
add a, b
add a, b
add a, b
nop
nop
adc b
adc b
ret c
ret c
xor b
xor b
adc b
adc b
adc b
adc b
nop
nop
nop
nop
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ld b, a
ld a, a
pop hl
ld h, c
pop hl
ld h, c
pop hl
ld h, c
pop hl
ld h, c
pop hl
ld h, c
pop bc
pop bc
pop bc
pop bc
add a, c
add a, c
cp 06
cp 06
cp 06
cp 06
cp 06
cp 06
cp 06
ld b, fe
rst 38
add a, e
rst 38
add a, c
ld a, a
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
ccf
jr nz, 3f
jr nz, 10
rra
rra
ld de, 919f
rst 08
ret
rst 00
push bc
unknown
ld h, e
di
inc sp
ld sp, hl
add hl, de
ld (80f8), sp
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
ld e, a
ld a, a
ld a, b
ld a, b
ld h, b
ld h, b
ld d, b
ld (hl), b
ld d, b
ld (hl), b
ld c, b
ld a, b
ld b, h
ld a, h
ld a, (hl)
ld a, (hl)
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, 0101
ld bc, fe06
ld b, fe
ld b, fe
ld b, fe
ld b, fe
ld b, fe
ld b, fe
cp fe
ld (440f), sp
ld b, a
ld h, h
ld h, a
ld (hl), d
ld (hl), e
ld d, c
ld (hl), c
ld e, c
ld a, c
ld c, h
ld a, h
ld a, (hl)
ld a, (hl)
inc c
unknown
ld b, fe
inc bc
rst 38
ld bc, 01ff
rst 38
nop
rst 38
add a, b
rst 38
ld a, a
ld a, a
nop
nop
nop
nop
nop
nop
add a, b
add a, b
add a, b
add a, b
ret nz
ret nz
ret nz
ret nz
ld (ff00 + e0), a
ld a, (hl)
ld a, (hl)
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
ld a, a
nop
nop
inc bc
inc bc
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
inc bc
ld (bc), a
nop
nop
ei
ei
ld a, (bc)
ld a, (bc)
ld (de), a
ld (de), a
ldi (hl), a
ldi (hl), a
ldi (hl), a
ldi (hl), a
ld b, d
ld b, d
jp 0042
nop
unknown
unknown
dec c
dec c
inc c
inc c
inc c
inc c
inc c
inc c
inc c
inc c
unknown
inc c
nop
nop
unknown
unknown
inc c
inc c
adc h
adc h
ld c, h
ld c, h
ld c, h
ld c, h
inc l
inc l
inc a
inc l
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
inc bc
inc bc
inc bc
ld (bc), a
ld (bc), a
nop
nop
nop
nop
nop
nop
add a, e
add a, d
add a, e
add a, d
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
ld (bc), a
inc bc
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
inc c
unknown
inc e
inc e
inc e
inc e
inc c
inc c
inc c
inc c
inc b
inc b
nop
nop
nop
nop
nop
nop
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
inc bc
inc bc
inc bc
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
inc c
unknown
unknown
unknown
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
inc bc
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
unknown
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
ld bc, 0301
inc bc
rlca
rlca
rrca
rrca
rra
rra
ccf
ccf
ld a, a
ld a, a
nop
nop
rst 38
rst 38
add a, e
add a, e
add a, e
add a, e
add a, e
add a, e
add a, e
add a, e
add a, e
add a, e
rst 38
add a, e
nop
nop
ld a, a
ld a, a
jr nz, 20
stop
ld (0408), sp
inc b
ld (bc), a
ld (bc), a
ld bc, 0001
nop
di
di
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
ldd (hl), a
di
ldd (hl), a
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
add a, e
rst 38
nop
nop
nop
nop
ld bc, 0301
inc bc
rlca
rlca
rrca
dec bc
rra
inc de
inc hl
ccf
di
or d
ld (hl), e
ld (hl), d
inc sp
inc sp
inc de
inc de
ld (bc), a
ld (bc), a
nop
nop
nop
nop
nop
nop
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
add a, e
rst 38
rst 38
rst 38
ld b, e
ld a, a
inc hl
ccf
inc de
rra
dec bc
rrca
rlca
rlca
inc bc
inc bc
ld bc, 0001
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
stop
jr nc, 30
ld (hl), b
ld (hl), b
nop
nop
ld a, b
ld a, b
sbc h
sbc h
inc e
inc e
ld a, b
ld a, b
ld (ff00 + e0), a
unknown
unknown
nop
nop
rst 38
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
dec de
dec de
dec de
dec de
add hl, bc
add hl, bc
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
ld h, b
ld h, b
ld h, b
ld h, b
jr nz, 20
nop
nop
dec de
dec de
dec de
dec de
add hl, bc
add hl, bc
nop
nop
nop
nop
ld h, b
ld h, b
ld h, b
ld h, b
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
sbc e
dec e
ld d, 2f
ld a, (bc)
rla
dec c
cpl
inc sp
ld bc, 0809
rlca
cpl
ld c, 15
jr 1b
stop
cpl
dec e
ld c, 1d
dec de
ld (de), a
inc e
cpl
dec d
ld (de), a
inc c
ld c, 17
inc e
ld c, 0d
cpl
dec e
jr 2f
cpl
cpl
cpl
cpl
dec bc
ld e, 15
dec d
ld c, 1d
cpl
add hl, de
dec de
jr 18
rrca
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
inc e
jr 0f
dec e
jr nz, 0a
dec de
ld c, 2f
ld a, (bc)
rla
dec c
cpl
cpl
cpl
cpl
cpl
cpl
cpl
inc e
ld e, 0b
dec h
dec d
ld (de), a
inc c
ld c, 17
inc e
ld c, 0d
cpl
dec e
jr 2f
cpl
cpl
cpl
cpl
cpl
cpl
cpl
rla
ld (de), a
rla
dec e
ld c, 17
dec c
jr 24
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
inc sp
ld bc, 0809
add hl, bc
cpl
dec bc
ld e, 15
dec d
ld c, 1d
cpl
add hl, de
dec de
jr 18
rrca
cpl
cpl
cpl
cpl
cpl
cpl
cpl
inc e
jr 0f
dec e
jr nz, 0a
dec de
ld c, 24
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
inc sp
jr nc, 31
ldd (hl), a
ld sp, 342f
dec (hl)
ld (hl), 37
jr c, 39
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
ld a, (bc)
dec d
dec d
cpl
dec de
ld (de), a
stop
dec e
inc e
cpl
dec de
ld c, 1c
ld c, 1b
rra
ld c, 0d
inc h
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
jr 1b
ld (de), a
stop
rla
ld a, (bc)
dec d
cpl
inc c
jr 17
inc c
ld c, 19
dec e
sbc h
cpl
cpl
dec c
ld c, 1c
ld (de), a
stop
cpl
ld a, (bc)
rla
dec c
cpl
add hl, de
dec de
jr 10
dec de
ld a, (bc)
ld d, 2f
dec bc
ldi (hl), a
cpl
ld a, (bc)
dec d
ld c, 21
ld c, 22
cpl
add hl, de
ld a, (bc)
inc hl
ld de, 1d12
rla
jr 1f
sbc l
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
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
ld e, d
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, e
ld e, h
ld e, l
add a, b
add a, c
add a, d
add a, e
sub b
sub c
sub d
add a, c
add a, d
add a, e
sub b
ld l, h
ld l, l
ld l, (hl)
ld l, a
ld (hl), b
ld (hl), c
ld (hl), d
ld e, (hl)
ld e, l
add a, h
add a, l
add a, (hl)
add a
sub e
sub h
sub l
add a, l
add a, (hl)
add a
sub e
ld (hl), e
ld (hl), h
ld (hl), l
halt
ld (hl), a
ld a, b
cpl
ld e, (hl)
ld e, l
cpl
adc b
adc c
cpl
sub (hl)
sub a
sbc b
adc b
adc c
cpl
sub (hl)
ld a, c
ld a, d
ld a, e
ld a, h
ld a, l
ld a, (hl)
cpl
ld e, (hl)
ld e, l
cpl
adc d
adc e
cpl
adc (hl)
adc a
ld l, e
adc d
adc e
cpl
adc (hl)
ld a, a
ld h, (hl)
ld h, a
ld l, b
ld l, c
ld l, d
cpl
ld e, (hl)
ld e, a
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, c
adc (hl)
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
inc a
dec a
ld a, 3c
inc a
inc a
adc (hl)
adc (hl)
adc h
adc h
ld h, d
ld h, e
adc h
adc h
ldd a, (hl)
adc h
adc h
adc h
adc h
adc h
ldd a, (hl)
ld b, d
ld b, e
dec sp
adc h
adc h
adc (hl)
adc (hl)
ldd a, (hl)
adc h
ld h, h
ld h, l
adc h
adc h
adc h
adc h
dec sp
adc h
adc h
adc h
adc h
ld b, h
ld b, l
adc h
adc h
adc h
adc (hl)
adc (hl)
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
ld b, (hl)
ld b, a
ld c, b
ld c, c
ccf
ld b, b
adc (hl)
adc (hl)
adc h
adc h
adc h
adc h
ldd a, (hl)
adc h
adc h
adc h
adc h
ld d, e
ld d, h
adc h
ld c, d
ld c, e
ld c, h
ld c, l
ld b, d
ld b, e
adc (hl)
adc (hl)
adc h
adc h
adc h
adc h
adc h
adc h
adc h
adc h
ld d, h
ld d, l
ld d, (hl)
ld d, a
ld c, (hl)
ld c, a
ld d, b
ld d, c
ld d, d
ld b, l
adc (hl)
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
ld b, c
cpl
cpl
ld e, c
add hl, de
dec d
ld a, (bc)
ldi (hl), a
ld c, 1b
cpl
cpl
cpl
sbc c
add hl, de
dec d
ld a, (bc)
ldi (hl), a
ld c, 1b
cpl
cpl
cpl
sbc d
sbc d
sbc d
sbc d
sbc d
sbc d
sbc d
cpl
cpl
cpl
sbc d
sbc d
sbc d
sbc d
sbc d
sbc d
sbc d
cpl
cpl
cpl
cpl
cpl
inc sp
jr nc, 31
ldd (hl), a
ld sp, 342f
dec (hl)
ld (hl), 37
jr c, 39
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
ld b, a
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, c
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, e
stop
ld d, 0e
cpl
dec e
ldi (hl), a
add hl, de
ld c, 54
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
ld d, l
ld d, (hl)
ld l, l
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
xor c
ld e, b
ld e, b
ld e, b
ld l, (hl)
ld d, (hl)
ld d, (hl)
ld e, d
inc l
ld c, e
ld c, d
inc l
ld e, e
ld a, b
ld (hl), a
ld a, (hl)
ld a, a
sbc d
sbc e
cpl
xor d
ld a, c
ld (hl), a
ld a, (hl)
ld a, a
sbc d
sbc e
ld e, h
inc l
ld c, e
ld c, d
inc l
dec l
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
xor h
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld l, 2c
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, e
ld d, 1e
inc e
ld (de), a
inc c
cpl
dec e
ldi (hl), a
add hl, de
ld c, 54
inc l
inc l
inc l
ld c, e
ld c, d
inc l
ld d, l
ld d, (hl)
ld l, l
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
xor c
ld e, b
ld e, b
ld e, b
ld e, b
ld l, (hl)
ld d, (hl)
ld e, d
inc l
ld c, e
ld c, d
inc l
ld e, e
ld a, b
ld (hl), a
ld a, (hl)
ld a, a
sbc d
sbc e
cpl
xor d
ld a, c
ld (hl), a
ld a, (hl)
ld a, a
sbc d
sbc e
ld e, h
inc l
ld c, e
ld c, d
inc l
ld (hl), c
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
xor e
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), d
ld (hl), h
inc l
ld c, e
ld c, d
inc l
ld e, e
ld a, d
ld (hl), a
ld a, (hl)
ld a, a
sbc d
sbc e
cpl
xor d
cpl
sbc l
sbc h
sbc h
cpl
cpl
ld e, h
inc l
ld c, e
ld c, d
inc l
dec l
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
xor h
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld l, 2c
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, h
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, (hl)
ld b, a
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, c
ld c, d
cpl
ld a, (bc)
dec h
dec e
ldi (hl), a
add hl, de
ld c, 2f
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
ld d, e
dec d
ld c, 1f
ld c, 15
ld d, h
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, l
ld d, (hl)
ld d, a
ld e, b
ld l, h
ld e, b
ld l, h
ld e, b
ld e, c
ld d, (hl)
ld e, d
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld e, e
sub b
ld l, a
sub c
ld l, a
sub d
ld l, a
sub e
ld l, a
sub h
ld e, h
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld (hl), c
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), h
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld e, e
sub l
ld l, a
sub (hl)
ld l, a
sub a
ld l, a
sbc b
ld l, a
sbc c
ld e, h
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
dec l
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, 2c
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, e
dec e
jr 19
dec h
inc e
inc c
jr 1b
ld c, 54
inc l
inc l
inc l
inc l
ld c, e
ld c, d
ld d, l
ld d, (hl)
ld (hl), b
ld l, l
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld l, (hl)
ld d, (hl)
ld d, (hl)
ld d, (hl)
ld e, d
ld c, e
ld c, d
ld e, e
ld bc, 606f
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
ld e, e
ld (bc), a
ld l, a
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
ld e, e
inc bc
ld l, a
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
dec l
ld c, a
ld l, e
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld l, 4b
ld c, h
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, (hl)
ld b, a
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, c
ld c, d
cpl
dec bc
dec h
dec e
ldi (hl), a
add hl, de
ld c, 2f
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
ld c, e
ld c, d
inc l
inc l
ld d, e
dec d
ld c, 1f
ld c, 15
ld d, h
inc l
inc l
ld d, e
ld de, 1012
ld de, 2c54
ld c, e
ld c, d
ld d, l
ld d, (hl)
ld d, a
ld e, b
ld l, h
ld e, b
ld l, h
ld e, b
ld e, c
ld d, (hl)
ld e, d
ld (hl), l
ld e, b
ld l, h
ld e, b
ld l, h
ld l, (hl)
ld e, d
ld c, e
ld c, d
ld e, e
sub b
ld l, a
sub c
ld l, a
sub d
ld l, a
sub e
ld l, a
sub h
ld e, h
ld e, e
sub b
ld l, a
sub c
ld l, a
sub d
ld e, h
ld c, e
ld c, d
ld (hl), c
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), h
ld (hl), c
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), h
ld c, e
ld c, d
ld e, e
sub l
ld l, a
sub (hl)
ld l, a
sub a
ld l, a
sbc b
ld l, a
sbc c
ld e, h
ld e, e
sub e
ld l, a
sub h
ld l, a
sub l
ld e, h
ld c, e
ld c, d
dec l
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, 2d
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, 4b
ld c, d
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
ld d, e
dec e
jr 19
dec h
inc e
inc c
jr 1b
ld c, 54
inc l
inc l
inc l
inc l
ld c, e
ld c, d
ld d, l
ld d, (hl)
ld (hl), b
ld l, l
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld e, b
ld l, (hl)
ld d, (hl)
ld d, (hl)
ld d, (hl)
ld e, d
ld c, e
ld c, d
ld e, e
ld bc, 606f
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
ld e, e
ld (bc), a
ld l, a
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
ld e, e
inc bc
ld l, a
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
cpl
cpl
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld e, h
ld c, e
ld c, d
dec l
ld c, a
ld l, e
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld c, a
ld l, 4b
ld c, h
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, (hl)
call cdcd
call cdcd
call cdcd
call c98c
jp z, 8c8c
adc h
adc h
adc h
adc h
adc h
adc h
cb cc
adc h
adc h
adc h
adc h
adc h
adc h
adc d7
rst 10
rst 10
rst 10
rst 10
rst 10
rst 10
rst 10
rst 10
rst 08
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
ret nc
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
pop de
jp nc, 2f2f
cpl
cpl
cpl
cpl
cpl
cpl
unknown
call nc, 7c7c
ld a, h
ld a, h
ld a, h
ld a, h
cpl
cpl
push de
sub 7d
ld a, l
ld a, l
ld a, l
cpl
cpl
cpl
cpl
ret c
cpl
ld a, e
ld a, e
ld a, e
ld a, e
cpl
cpl
cpl
cpl
ret c
cpl
ld a, h
ld a, h
ld a, h
ld a, h
cpl
cpl
cpl
cpl
ret c
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
ret c
cpl
cpl
cpl
cpl
cpl
cpl
cpl
ld a, h
ld a, h
ld a, h
ld a, h
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
cpl
ld a, h
ld a, l
ld a, l
cpl
cpl
cpl
cpl
cpl
cpl
cpl
ld a, l
cpl
cpl
cpl
reti
cpl
cpl
cpl
cpl
cpl
ld a, e
or a
cp b
reti
or a
cpl
ld a, h
ld a, h
ld a, h
ld a, h
ld a, h
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
ld a, l
rst 38
ld c, d
ld c, d
ld c, d
ld c, d
ld c, d
ld c, d
ld e, c
ld l, c
ld l, c
ld l, c
ld l, c
ld l, c
ld l, c
ld c, c
ld c, d
ld c, d
ld c, d
ld c, d
ld c, d
ld c, d
ld e, d
ld e, d
ld e, d
ld e, d
ld e, d
ld e, d
add a, l
add a, l
add a, l
add a, l
add a, l
add a, l
add a, l
add a, l
ld e, d
ld e, d
jr c, 39
jr c, 5a
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
ld l, d
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
ld b, a
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, b
ld c, c
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld d, 0a
dec de
ld (de), a
jr 2f
rra
inc e
inc h
dec d
ld e, 12
stop
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld d, e
ld de, 1012
ld de, 2c54
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld d, l
ld d, (hl)
ld d, (hl)
ld e, d
inc l
inc l
inc l
ld (hl), l
ld e, b
ld l, h
ld e, b
ld l, h
ld l, (hl)
ld e, d
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld e, e
cpl
cpl
ld e, h
inc l
inc l
inc l
ld e, e
sub b
ld l, a
sub c
ld l, a
sub d
ld e, h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld e, e
cpl
cpl
ld e, h
inc l
inc l
inc l
ld (hl), c
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
dec l
ld c, a
ld c, a
ld l, 2c
inc l
inc l
ld e, e
sub e
ld l, a
sub h
ld l, a
sub l
ld e, h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld d, 0a
dec de
ld (de), a
jr 2c
inc l
dec l
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, 2c
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld d, b
ld d, c
ld d, c
ld d, c
ld d, c
ld d, d
inc l
inc l
inc l
ld c, e
ld c, d
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
inc l
ld d, e
ld de, 1012
ld de, 2c54
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld d, l
ld d, (hl)
ld d, (hl)
ld e, d
inc l
inc l
inc l
ld (hl), l
ld e, b
ld l, h
ld e, b
ld l, h
ld l, (hl)
ld e, d
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld e, e
cpl
cpl
ld e, h
inc l
inc l
inc l
ld e, e
sub b
ld l, a
sub c
ld l, a
sub d
ld e, h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
ld e, e
cpl
cpl
ld e, h
inc l
inc l
inc l
ld (hl), c
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), e
ld (hl), d
ld (hl), h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
dec l
ld c, a
ld c, a
ld l, 2c
inc l
inc l
ld e, e
sub e
ld l, a
sub h
ld l, a
sub l
ld e, h
inc l
inc l
ld c, e
ld c, d
inc l
inc l
dec d
ld e, 12
stop
inc l
inc l
dec l
ld c, a
ld l, e
ld c, a
ld l, e
ld c, a
ld l, 2c
inc l
ld c, e
ld c, h
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, l
ld c, (hl)
adc (hl)
or d
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
or e
jr nc, 31
ld sp, 3131
ld sp, 8e32
or b
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
or l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
adc (hl)
or b
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
or l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
adc (hl)
or b
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
or l
ld b, b
ld b, d
ld b, d
ld b, d
ld b, d
ld b, d
ld b, c
adc (hl)
or b
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
or l
ld (hl), 11
ld (de), a
stop
cpl
scf
adc (hl)
or b
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
or l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
adc (hl)
or b
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
or l
inc sp
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
dec (hl)
adc (hl)
or b
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
or l
dec hl
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
adc (hl)
or b
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
or l
jr nc, 31
ld sp, 3131
ld sp, 8e32
or b
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
or l
ld (hl), 15
ld (de), a
rla
ld c, 1c
scf
adc (hl)
or b
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
or l
ld (hl), 2f
cpl
cpl
cpl
cpl
scf
adc (hl)
or b
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
or l
inc sp
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
dec (hl)
adc (hl)
or b
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
or l
dec hl
jr c, 39
add hl, sp
add hl, sp
add hl, sp
ldd a, (hl)
adc (hl)
or b
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
or l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
adc (hl)
or b
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
or l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
adc (hl)
or b
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
or l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
adc (hl)
or b
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
or l
dec hl
dec sp
cpl
cpl
cpl
cpl
inc a
adc (hl)
or c
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
or h
dec hl
dec a
ld a, 3e
ld a, 3e
ccf
rlca
rlca
rlca
rlca
rlca
rlca
add a, h
add a
add a
adc h
add a
add a
adc h
add a
add a
adc h
add a
add a
add a, (hl)
rlca
rlca
ld e, 1e
ld e, 1e
ld e, 79
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc b
rlca
rlca
or h
or l
cp e
ld l, bc
ld a, c
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc b
rlca
rlca
cp a
cp a
cp a
cp a
cp a
adc c
adc d
adc d
adc (hl)
adc d
adc d
adc (hl)
adc d
adc d
adc (hl)
adc d
adc d
adc e
rlca
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld b, 06
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
ld d, 16
rlca
rlca
rlca
rlca
rlca
rlca
add a, h
add a
add a
adc h
add a
add a
adc h
add a
add a
adc h
add a
add a
add a, (hl)
rlca
rlca
ld e, 1e
ld e, 1e
ld e, 79
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc b
rlca
rlca
cp l
or d
ld l, be
ld l, 79
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc l
cpl
cpl
adc b
rlca
rlca
cp a
cp a
cp a
cp a
cp a
adc c
adc d
adc d
adc (hl)
adc d
adc d
adc (hl)
adc d
adc d
adc (hl)
adc d
adc d
adc e
rlca
ld bc, 0101
ld bc, 0101
ld (bc), a
ld (bc), a
inc bc
inc bc
ld bc, 0101
ld bc, 0202
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
jr 1f
ld hl, 473e
ld a, a
ld a, (ff00 + c)
cp 12
ld e, 12
ld e, 12
ld e, 7e
ld a, (hl)
rst 38
add a, e
rst 38
add a, c
rst 38
rst 38
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
jr 1f
ld hl, 473e
ld a, a
inc b
unknown
ld (bc), a
cp 02
cp 07
unknown
rlca
unknown
rra
rst 38
rst 38
rst 38
rst 38
ld a, (0000)
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
jr 1f
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, ffff
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
inc bc
inc bc
dec b
inc b
inc bc
inc bc
nop
nop
jr 18
inc l
inc h
ld a, (de)
ld a, (de)
ld (4008), sp
ld b, b
rlca
rlca
jr 1f
and b
cp a
dec sp
ccf
ld a, h
ld b, h
ld a, h
ld b, h
stop
ld (bc), a
ld (bc), a
ld (ff00 + e0), a
jr f8
dec b
unknown
adc h
unknown
ld a, b
ld c, b
ld l, h
ld (hl), h
nop
nop
rlca
rlca
jr 1f
jr nz, 3f
jr nc, 3f
rra
dec e
ld a, 22
ld a, 22
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
nop
nop
ret nz
ret nz
ld (ff00 + e0), a
ld (ff00 + e0), a
nop
nop
ld a, h
ld a, h
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld a, h
ld a, h
ld h, b
ld h, b
ld h, b
ld h, b
nop
nop
nop
nop
inc a
inc a
ld h, b
ld h, b
inc a
inc a
ld c, 0e
ld c, (hl)
ld c, (hl)
inc a
inc a
nop
nop
rlca
rlca
rra
jr 3e
jr nz, 7f
ld c, a
ld a, a
ld e, a
ld (hl), b
ld (hl), b
and d
and d
or b
or b
inc b
inc b
rlca
inc b
inc b
inc b
inc b
dec c
inc b
dec c
inc b
inc b
inc b
inc b
inc bc
ld (bc), a
ld e, a
ld a, a
add hl, sp
jr nc, 7b
ld h, d
ei
or d
rst 38
and b
rst 38
jp nz, 547f
ld a, a
ld e, h
nop
nop
nop
nop
nop
nop
inc bc
inc bc
inc b
inc b
ld (0908), sp
add hl, bc
inc b
inc b
ld e, a
ld a, a
add hl, sp
jr nc, 7b
ld h, d
ei
or d
rst 38
and b
rst 38
jp nz, 547f
ld a, a
ld e, h
jr f8
inc b
unknown
ld (bc), a
cp 02
cp 07
unknown
rlca
unknown
rst 38
rst 38
rst 38
ld a, (3f20)
ld b, b
ld a, a
ld b, b
ld a, a
ld (ff00 + bf), a
ld (ff00 + bf), a
ld hl, sp+ff
ld a, a
ld a, a
ld a, a
ld e, a
rst 38
ld de, ffff
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
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
add a, b
add a, b
ret nz
ld b, b
nop
nop
nop
nop
nop
nop
inc b
inc b
ld (1c08), sp
inc d
inc d
inc d
ld (1808), sp
rra
jr nz, 3f
ld b, b
ld a, a
ld b, b
ld a, a
ld (ff00 + bf), a
ld (ff00 + bf), a
ld a, a
ld a, a
ld a, a
ld e, a
unknown
ld b, h
rst 38
ld b, h
rst 38
rst 38
ld (hl), a
ld de, 11ff
rst 38
rst 38
unknown
ld b, h
rst 38
ld b, h
nop
nop
nop
nop
nop
nop
jr nz, 20
stop
jr c, 28
jr z, 28
sub b
sub b
nop
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld a, (hl)
ld a, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
nop
nop
ld a, (hl)
ld a, (hl)
jr 18
jr 18
jr 18
jr 18
jr 18
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
xor b4
or h
ld h, h
ld h, h
inc a
inc a
ld l, 2e
daa
daa
ld (hl), b
ld (hl), b
unknown
sbc h
rst 30
sbc a
nop
nop
nop
nop
nop
nop
ld bc, 0101
ld bc, 0202
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ccf
ld l, 7f
ld h, e
rst 38
sbc b
rst 30
rra
rst 30
inc e
rst 30
rst 10
inc (hl)
ccf
xor h
cp a
inc bc
inc bc
ld bc, 0101
ld bc, 0000
nop
nop
ld b, 06
dec b
dec b
rlca
rlca
rst 38
xor (hl)
rst 38
inc hl
rst 38
jr f7
sbc a
rst 30
sbc h
ld (hl), a
ld d, a
inc (hl)
ccf
ld l, h
ld a, a
nop
nop
nop
nop
nop
nop
ld bc, 0101
ld bc, 0202
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ccf
cpl
ld a, a
ld a, h
rst 30
sbc h
di
rra
ld a, (ff00 + 1f)
ld a, (ff00 + df)
jr nc, 3f
and b
cp a
rst 38
unknown
rst 38
ld a, ef
jr c, cf
ld hl, sp+0f
ei
ld c, fa
inc c
unknown
inc b
unknown
ld (ff00 + 20), a
ld (ff00 + 20), a
ld (ff00 + 20), a
ret nz
ld b, b
add a, b
add a, b
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
ld bc, 0101
ld bc, 0202
ld (bc), a
ld (bc), a
ccf
cpl
ccf
inc a
ld (hl), a
ld e, h
di
sbc a
ld a, (ff00 + 1f)
ld a, (ff00 + 1f)
ld a, (ff00 + ff)
jr nz, 3f
rst 38
unknown
rst 38
ld a, ef
jr c, cf
ld sp, hl
ld c, fa
ld c, fa
inc c
unknown
inc b
unknown
ret nz
ld b, b
ret nz
ld b, b
ret nz
ld b, b
add a, b
add a, b
nop
nop
nop
nop
nop
nop
nop
nop
rst 30
inc e
rst 30
inc (hl)
rst 30
cp a
ld l, h
ld a, a
stop
ld d, b
ld e, a
ldd (hl), a
ccf
pop af
rst 38
nop
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld d, (hl)
ld d, (hl)
ld a, (hl)
ld a, (hl)
ld l, (hl)
ld l, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
nop
nop
inc a
inc a
jr 18
jr 18
jr 18
jr 18
inc a
inc a
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
ld (bc), a
ld (bc), a
ld bc, 0001
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
ld b, b
ld a, a
ret nz
rst 38
jr nz, 3f
ldi (hl), a
ccf
ld de, 721f
ld a, (hl)
cp a
cp a
rst 38
rst 38
rlca
rlca
ld b, 07
ld b, 07
ld b, 07
rlca
rlca
nop
nop
nop
nop
nop
nop
ret nz
rst 38
nop
rst 38
nop
rst 38
ld (bc), a
rst 38
rst 38
rst 38
nop
nop
nop
nop
nop
nop
ld (bc), a
ld (bc), a
ld bc, 0001
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
ld b, b
ld a, a
ret nz
rst 38
jr nz, 3f
jr nz, 3f
ld de, 721f
ld a, (hl)
rst 38
rst 38
rst 38
rst 38
ld (bc), a
cp 02
cp 04
unknown
inc b
unknown
adc b
ld hl, sp+4e
ld a, (hl)
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
add a, b
add a, b
ld b, b
ld b, b
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
rst 38
nop
unknown
ld (bc), a
call 0932
or 08
rst 30
nop
rst 38
nop
nop
nop
nop
rst 38
nop
rst 38
nop
rst 38
nop
unknown
inc bc
call z, 0833
rst 30
ld a, h
ld b, h
ccf
ccf
stop
stop
ld (de), a
rra
add hl, de
rra
ccf
ccf
ld a, 3e
adc f2
adc (hl)
jp c, f909
add hl, bc
ld sp, hl
ld c, (hl)
cp 98
ld hl, sp+fc
unknown
ld a, h
ld a, h
rlca
rlca
rra
jr 3e
jr nz, 7f
ld c, a
ld a, a
ld e, a
ld (hl), b
ld (hl), b
and d
and d
or b
or b
nop
nop
ld b, (hl)
ld b, (hl)
ld h, (hl)
ld h, (hl)
halt
halt
ld e, (hl)
ld e, (hl)
ld c, (hl)
ld c, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
nop
nop
jr 18
jr 18
jr 18
jr 18
nop
nop
jr 18
nop
nop
ld (de), a
ld e, 12
ld e, 12
ld e, 12
ld e, 7e
ld a, (hl)
cp a
add a, e
rst 38
add a, c
rst 38
rst 38
nop
nop
ld (ff00 + e0), a
jr f8
inc b
unknown
inc c
unknown
ld hl, sp+c8
inc l
inc (hl)
ld l, 32
nop
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
inc l
inc l
jr 18
nop
nop
nop
nop
ld (hl), 36
ld e, a
ld c, c
ld e, a
ld b, c
ld a, a
ld b, c
ld a, 22
inc e
inc d
ld (fe08), sp
ld (bc), a
unknown
dec b
unknown
dec b
rst 38
rra
rst 38
unknown
rst 38
cp ef
jr c, ef
add hl, sp
nop
inc b
nop
inc b
nop
inc b
ld bc, 0105
dec b
inc bc
rlca
ld b, 06
inc c
inc c
jp z, c8c0
ret nz
jp z, 88c0
add a, b
adc b
add a
ld (0a00), sp
nop
ld (6f00), sp
inc de
cpl
inc de
ld l, a
inc de
cpl
ld de, d12d
inc l
stop
stop
stop
jr nz, a0
jr nz, a0
jr nz, a0
and b
and b
and b
ld (ff00 + e0), a
ld h, b
ld h, b
jr nc, 30
ld (08a8), sp
jr 08
xor b
ld (0848), sp
xor b
ld (0818), sp
xor b
ld (0048), sp
cp 00
rst 38
ld a, a
rst 38
ld a, a
pop bc
ld a, a
pop bc
ld a, a
unknown
ld a, a
pop bc
ld bc, 00ff
nop
nop
nop
nop
nop
rst 38
nop
nop
nop
rst 38
nop
nop
nop
rst 38
nop
stop
dec bc
dec bc
rlca
inc b
rlca
inc b
inc bc
ld (bc), a
ld bc, 0001
nop
nop
nop
or h
or h
unknown
unknown
cp h
cp h
xor 6e
rst 20
daa
ld a, (ff00 + 10)
unknown
sbc h
ld (hl), a
ld e, a
nop
nop
nop
nop
rlca
rlca
rra
jr 3f
jr nz, 7f
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
nop
nop
nop
nop
nop
nop
add a, b
add a, b
ret nz
ld b, b
ret nz
ld b, b
ret nz
ld b, b
add a, b
add a, b
ld (bc), a
inc bc
dec b
inc b
rlca
inc b
inc b
rlca
inc b
rlca
inc b
ld b, 04
dec b
inc b
rlca
adc fa
inc c
unknown
ld (08f8), sp
ld hl, sp+08
ld hl, sp+08
ld hl, sp+08
ld hl, sp+88
ld hl, sp+00
inc a
nop
ld a, (hl)
stop
inc h
jp c324
inc h
jp c324
inc (hl)
jp 3c00
nop
ld h, (hl)
nop
rst 20
inc l
jp c33c
inc a
jp 423c
jr 66
nop
nop
nop
nop
nop
nop
jr nz, 20
sub b
sub b
cp b
xor b
xor b
xor b
stop
ld a, (bc)
stop
ld (0402), sp
nop
inc b
nop
inc b
nop
inc b
nop
inc b
nop
inc b
rla
ld d, b
jr z, 60
ldi a, (hl)
ld h, b
jr z, 60
ldi a, (hl)
ld h, b
jr z, 60
jr z, 67
ld l, b
ld h, b
sbc 2b
ld l, 17
ld l, (hl)
rla
ld l, 17
ld l, (hl)
rla
ld l, 17
ld l, d7
ld l, 17
sbc b
ld c, b
or b
ld d, b
and b
ld h, b
and b
jr nz, a0
jr nz, a0
jr nz, a0
jr nz, a0
jr nz, 08
xor b
ld (0818), sp
xor b
ld (0848), sp
cp b
ld (083f), sp
cp a
add hl, bc
ld a, a
nop
ld a, a
nop
rst 38
ld a, (hl)
rst 38
ld a, (hl)
pop bc
ld a, (hl)
pop bc
ld a, (hl)
unknown
ld a, (hl)
pop bc
nop
rst 38
nop
nop
nop
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
rst 38
nop
nop
nop
jr c, 38
inc (hl)
inc h
inc a
inc h
ccf
daa
inc a
daa
inc a
daa
ccf
cpl
scf
inc a
rla
inc d
rla
rra
inc e
rra
ld a, (ff00 + ff)
nop
rst 38
ld (bc), a
rst 38
rst 38
rst 38
cp a
and b
cp a
and b
cp a
cp b
ld a, a
ld a, a
cpl
cpl
ld a, a
ld a, a
rst 30
sbc h
rst 30
sbc h
unknown
dec b
unknown
dec b
unknown
dec e
rst 38
rst 38
rst 30
unknown
rst 38
cp ef
jr c, ef
jr c, 01
ld bc, 0101
ld bc, 0201
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld bc, 0001
nop
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld bc, 0001
nop
nop
nop
nop
nop
nop
nop
nop
nop
inc (hl)
jp 433c
inc a
ld b, e
jr 66
jr 66
ld (0876), sp
ld (hl), 08
inc (hl)
jr 26
jr 24
jr 24
ld (0034), sp
jr 00
ld (0800), sp
nop
ld (0000), sp
rrca
rrca
rra
stop
jr nz, 70
ld b, b
ld (hl), e
ld b, e
ld h, a
ld c, h
ccf
jr z, 00
nop
add a, b
add a, b
call c, 3e5c
ldi (hl), a
ldd (hl), a
ld (ff00 + c), a
or c
pop bc
jp 274b
ld a, h
nop
nop
nop
nop
nop
nop
nop
nop
ld (ff00 + e0), a
ret nc
stop
ret nc
ld (ff00 + 20), a
ld e, h
ld d, b
ld a, h
ld d, b
add hl, sp
jr nc, 7c
ld c, h
xor 82
ret nz
add a, h
ld h, b
ld b, e
ld sp, 1f26
inc a
cp e
ld h, d
pop af
ld b, c
ld h, c
ld b, c
jp f703
inc b
xor 08
sbc h
ld h, b
sub b
stop
ld (1818), sp
inc a
ld h, h
ld a, (ff00 + c)
jp nz, 60e3
add hl, sp
jr nz, f2
nop
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
nop
rst 38
nop
rst 38
nop
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
nop
rst 38
rst 38
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
jr c, 38
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
ld c, 0e
ld de, 1111
ld de, 1212
di
rra
ld a, (ff00 + 3f)
ld a, (ff00 + bf)
ld h, b
ld a, a
stop
ld d, b
ld e, a
jr nc, 3f
pop af
rst 38
rst 08
ei
inc c
unknown
ld (08f8), sp
ld hl, sp+08
ld hl, sp+08
ld hl, sp+08
ld hl, sp+88
ld hl, sp+4e
ld a, d
ret
reti
add hl, bc
ld sp, hl
ld c, fe
ld c, b
ld hl, sp+98
ld hl, sp+fc
unknown
ld a, h
ld a, h
and b
cp a
ld b, b
ld a, a
ld (ff00 + ff), a
jr nz, 3f
ld de, 721f
ld a, (hl)
rst 38
rst 38
rst 38
rst 38
nop
inc a
nop
inc e
nop
inc e
nop
jr 00
ld (0000), sp
nop
nop
nop
nop
nop
rst 38
nop
xor e
nop
ld d, l
nop
rst 38
nop
nop
nop
nop
nop
nop
nop
nop
nop
dec d
nop
jr 00
dec d
nop
ld (de), a
nop
dec d
nop
jr 00
dec d
nop
ld (de), a
ld b, b
ld b, b
ld b, b
ret nz
ld b, b
ld b, b
ld b, b
ld b, b
ld b, b
ld b, b
ld b, b
ret nz
ld b, b
ld b, b
ld b, b
ld b, b
ld c, 32
ld c, 32
ld c, 32
ld c, 32
rrca
inc sp
adc a
or e
adc f3
xor 73
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
add a, b
add a, b
ret nz
ld b, b
nop
nop
nop
nop
add a, b
add a, b
ld b, a
ld b, a
rra
jr 3f
jr nz, 7f
ld b, b
ld a, a
ld b, b
ld a, a
ld b, b
cp a
and b
cp a
and b
cp a
cp b
ld a, a
ld a, a
ccf
ccf
ld (hl), a
ld a, h
rst 30
sbc h
ld a, (ff00 + c)
and f2
and f2
and f2
and f2
and f2
and f2
and f2
and 00
nop
ld bc, 0101
ld bc, 0101
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld bc, f301
sbc a
ld a, (ff00 + 1f)
ld a, (ff00 + 3f)
ld (ff00 + bf), a
ld (hl), b
ld a, a
stop
ld d, b
ld e, a
ld sp, 3e3f
ldi (hl), a
rra
rra
stop
stop
ld (de), a
rra
add hl, de
rra
ccf
ccf
ld a, 3e
ld (de), a
ld e, 12
ld e, 12
ld e, 12
ld e, 7e
ld a, (hl)
rst 38
add a, e
rst 38
add a, c
rst 38
rst 38
ld bc, 0101
ld bc, 0101
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld bc, 0001
nop
ld h, b
ld (ff00 + 80), a
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
add a, b
rlca
inc b
rlca
inc b
rlca
inc b
rlca
inc b
rlca
inc b
rlca
inc b
rlca
inc b
rlca
inc b
dec bc
add hl, bc
dec bc
ld a, (bc)
rrca
ld a, (bc)
rla
ld (de), a
rla
inc e
inc d
rla
rla
inc d
cpl
inc h
nop
nop
ld (hl), b
ld (hl), b
adc a
adc a
sbc b
sbc a
ld (ff00 + ff), a
ld a, (ff00 + 9f)
ld a, b
ld d, a
ld a, a
ld c, h
dec sp
cpl
ret nc
rst 18
ld a, (ff00 + ff)
ret nz
rst 38
ret nz
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld hl, sp+f8
ld a, (ff00 + f2)
pop hl
push af
unknown
ld a, (ff00 + c)
and ff
rst 38
rst 38
add a, c
jp df81
add a, l
rst 18
add a, l
rst 38
cp l
rst 38
add a, c
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rra
rra
rrca
ld c, a
add a
xor a
rst 00
ld c, a
ld h, a
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 38
rst 38
rst 38
nop
nop
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld c, a
ld h, a
ld a, (ff00 + c)
and f5
unknown
ld a, (ff00 + c)
pop hl
ld hl, sp+f0
rst 38
ld hl, sp+ff
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
rst 38
rst 38
nop
rst 38
nop
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
ld c, a
ld h, a
xor a
rst 00
ld c, a
add a
rra
rrca
rst 38
rra
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
nop
nop
nop
rst 28
rst 20
rst 08
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
inc h
inc c
rst 20
rst 08
nop
rst 28
nop
nop
rst 38
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rlca
rlca
jr 1f
ld hl, 473e
ld a, a
ld e, a
ld a, a
add hl, sp
jr nc, 7b
ld h, d
ei
or d
ld (ff00 + e0), a
jr f8
add a, h
ld a, h
ld (ff00 + c), a
cp fa
cp 9c
inc c
sbc 46
rst 18
ld c, l
rst 38
and b
rst 38
jp nz, 547f
ld a, a
ld e, h
ccf
ld l, 3f
inc hl
rra
jr 07
rlca
rst 38
dec b
rst 38
ld b, e
cp 2a
cp 3a
unknown
ld (hl), h
unknown
call nz, 18f8
ld (ff00 + e0), a
rlca
rlca
rra
jr 3e
jr nz, 7f
ld c, a
ld a, a
ld e, a
ld (hl), b
ld (hl), b
and d
and d
or b
or b
ld (ff00 + e0), a
ld hl, sp+18
ld a, h
inc b
cp f2
cp fa
ld c, 0e
ld b, l
ld b, l
dec c
dec c
or h
or h
ld h, h
ld h, h
inc a
inc a
ld l, 2e
daa
daa
stop
inc c
inc c
inc bc
inc bc
dec l
dec l
ld h, 26
inc a
inc a
ld (hl), h
ld (hl), h
unknown
unknown
ld (3008), sp
jr nc, c0
ret nz
cpl
inc h
cpl
inc h
cpl
inc h
cpl
inc h
ld h, a
ld a, h
cp h
and a
rst 38
unknown
dec de
dec de
nop
nop
nop
nop
ld bc, 0101
ld bc, 0303
inc bc
inc bc
inc bc
ld (bc), a
rlca
inc b
inc b
rlca
rlca
inc b
rlca
inc b
inc b
inc b
ld b, 06
dec b
dec b
dec b
dec b
ld b, 06
rlca
inc b
rlca
inc b
inc b
rlca
inc b
inc b
inc b
inc b
rlca
rlca
rlca
rlca
ld b, 06
ld b, 06
ld b, 06
inc b
inc b
rlca
rlca
dec b
dec b
inc bc
inc bc
dec b
dec b
ld c, 0e
rrca
rra
ld bc, 0110
stop
stop
ld (0701), sp
inc b
add hl, bc
nop
rrca
ld (f801), sp
pop af
ld c, (hl)
pop bc
ld (bc), a
rst 00
adc h
cp l
add a, h
xor l
ld h, d
rst 08
ld a, (hl)
cp ec
sub b
rst 28
sbc a
ld a, (daf7)
rst 20
cp l
cp l
or l
xor l
jp nc, 7fef
ld a, a
ld hl, sp+f8
jr e8
jr c, 88
cp b
ld (10b0), sp
ld (ff00 + e0), a
ret nc
jr nc, f0
ld a, (ff00 + 18)
jr 30
jr nc, 60
ld h, b
ret nz
ret nz
ret nz
ret nz
rst 38
rst 38
add a, e
add a, e
ld h, b
ld h, d
ld a, (bc)
nop
ld (0800), sp
rlca
ld (0800), sp
ld bc, f1f8
ld hl, sp+f1
ld (6c01), sp
stop
stop
pop de
inc l
ld de, 90ac
rst 28
sbc a
rst 28
sbc a
unknown
sub b
jr 18
inc c
inc c
ld b, c6
inc bc
jp 0303
rst 38
rst 38
pop bc
pop bc
ld b, 46
nop
inc b
nop
inc c
ld (bc), a
stop
stop
stop
stop
stop
stop
ld c, h
inc c
ld c, h
add hl, bc
ld c, c
dec bc
ld c, e
ld a, (bc)
ld c, d
stop
ld (de), a
ld d, d
stop
ld a, (hl)
inc sp
ld a, (hl)
inc sp
cp (hl)
sub e
cp d3
ld a, (hl)
ld d, e
ld a, 0b
ld a, (hl)
ld c, e
ld a, 0b
and b
jr nz, 90
jr nc, 98
ld c, b
sbc b
ld c, b
sbc b
ld c, b
sbc b
ld c, b
sbc b
ld c, b
sbc b
ld c, b
nop
nop
nop
nop
nop
nop
nop
nop
ld bc, 0101
ld bc, 0202
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
nop
ld bc, 0202
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
inc bc
ld (bc), a
inc bc
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
ld (bc), a
inc bc
ld (bc), a
ld (bc), a
ld b, 06
ld c, 0a
ld c, 0a
dec bc
ld a, (bc)
dec bc
ld a, (bc)
rrca
ld a, (bc)
ld a, (bc)
ld a, (bc)
ld b, 06
ld a, (bc)
ld a, (bc)
ld a, (de)
ld (de), a
rra
rra
nop
nop
nop
nop
rra
rra
ccf
jr nz, 7f
ld b, a
ld a, h
ld c, h
ld a, h
ld c, h
ld a, h
ld c, h
nop
nop
nop
nop
ld (ff00 + e0), a
ld a, (ff00 + 30)
ld hl, sp+18
ld hl, sp+98
ld hl, sp+98
ld hl, sp+98
ld a, a
ld c, a
ld a, a
ld b, b
ld a, a
ld c, a
ld a, h
ld c, h
ld a, h
ld c, h
ld a, h
ld a, h
nop
nop
nop
nop
ld hl, sp+98
ld hl, sp+18
ld hl, sp+98
ld hl, sp+98
ld hl, sp+98
ld hl, sp+f8
nop
nop
nop
nop
nop
nop
ld a, h
ld a, h
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld a, h
ld a, h
nop
nop
nop
nop
ld a, (hl)
ld a, (hl)
ld h, b
ld h, b
ld a, h
ld a, h
ld h, b
ld h, b
ld h, b
ld h, b
ld a, (hl)
ld a, (hl)
nop
nop
nop
nop
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld c, (hl)
ld c, (hl)
inc a
inc a
nop
nop
nop
nop
inc a
inc a
ld h, (hl)
ld h, (hl)
ld h, b
ld h, b
ld h, b
ld h, b
ld h, (hl)
ld h, (hl)
inc a
inc a
nop
nop
nop
nop
ld b, (hl)
ld b, (hl)
ld l, (hl)
ld l, (hl)
ld a, (hl)
ld a, (hl)
ld d, (hl)
ld d, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
ld b, (hl)
nop
nop
nop
nop
inc a
inc a
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld a, (hl)
ld a, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld c, (hl)
nop
nop
rst 38
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
ld bc, ff01
ld bc, ff01
rst 38
rst 38
nop
nop
nop
nop
nop
nop
nop
nop
ld a, (ff00 + f0)
ld a, (ff00 + b0)
ld a, (ff00 + b0)
ld a, (ff00 + f0)
nop
nop
nop
nop
rlca
rlca
jr 1f
jr nz, 3f
jr nc, 3f
jr 17
ccf
inc l
ld a, e
ld c, a
ld (hl), b
ld e, a
sub b
sbc a
sub b
sbc a
ld (hl), b
ld a, a
ld de, 3e1f
ld a, 3e
ld a, 00
nop
ld a, h
ld a, h
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld a, h
ld a, h
ld l, b
ld l, b
ld h, (hl)
ld h, (hl)
nop
nop
nop
nop
inc a
inc a
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
ld h, (hl)
inc a
inc a
nop
nop
nop
nop
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld h, b
ld a, (hl)
ld a, (hl)
nop
nop
nop
nop
inc a
inc a
ld h, (hl)
ld h, (hl)
ld h, b
ld h, b
ld l, (hl)
ld l, (hl)
ld h, (hl)
ld h, (hl)
ld a, 3e
nop
nop
nop
xor 00
nop
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
ld bc, 0200
nop
ld (bc), a
nop
inc b
nop
ld (0800), sp
nop
stop
stop
add a, b
ret nz
ld b, b
ret nz
ld b, b
ld (ff00 + 20), a
jr nc, 50
jr nc, 50
jr c, 48
jr 28
nop
nop
nop
nop
nop
nop
nop
nop
nop
inc bc
nop
inc bc
nop
ld (bc), a
nop
ld (bc), a
nop
nop
nop
nop
nop
nop
nop
nop
ld (08f8), sp
jr 08
xor b
ld (0048), sp
add a, b
nop
add a, b
nop
add a, b
nop
add a, b
nop
nop
nop
nop
nop
nop
nop
nop
nop
jr nz, 00
jr nz, 00
jr nz, 1f
jr nz, 00
ld b, b
nop
ld b, b
nop
ld b, b
nop
ld b, b
inc e
inc h
inc c
inc (hl)
inc c
inc (hl)
inc b
unknown
ld c, 32
ld c, 32
ld c, 32
ld c, 32
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
jr 00
dec d
nop
ld (de), a
nop
nop
nop
nop
nop
nop
nop
nop
ld b, b
ret nz
ld b, b
ret nz
ld b, b
ld b, b
ld b, b
ld b, b
nop
ld (bc), a
nop
inc bc
nop
ld (bc), a
nop
ld (bc), a
nop
ld (bc), a
nop
inc bc
nop
ld (bc), a
nop
ld (bc), a
ld (08af), sp
ld a, (de)
ld (08ad), sp
ld c, a
ld (08a8), sp
jr 08
xor b
ld (0048), sp
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
ld bc, 0200
nop
ld b, b
dec d
ld b, b
dec d
ld b, b
dec d
ld b, b
dec d
ret nz
dec d
pop bc
rla
ld b, e
ld d, 46
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
rst 38
nop
ldi a, (hl)
jr nz, 01
nop
dec e
ld bc, 0009
rlca
ld bc, 000b
inc bc
jr nz, 04
nop
jr nz, 20
ld b, 00
ld a, (bc)
add a, b
rla
nop
ld b, 01
ld b, 00
inc b
ld bc, 0005
ld e, 80
dec bc
nop
ld b, 80
inc e
nop
ld a, (bc)
stop
ld de, 0104
ld (bc), a
nop
inc b
ld bc, 0006
nop
stop
nop
inc b
stop
nop
ld a, (de)
add a, b
inc h
nop
dec d
ld bc, 0007
jr nz, 10
inc b
nop
dec b
stop
nop
dec c
stop
nop
inc bc
stop
nop
dec h
add a, b
dec d
nop
dec de
stop
nop
inc de
add a, b
inc bc
nop
inc e
add a, b
add hl, de
nop
ld a, (de)
ld bc, 0006
ld a, (bc)
jr nz, 01
nop
add hl, bc
jr nz, 02
nop
inc d
stop
nop
ld c, 80
ld d, 00
ld a, (bc)
stop
ld de, 1006
ld d, 00
inc de
add a, b
dec h
nop
inc e
ld bc, 0006
inc bc
jr nz, 02
nop
ld c, 20
inc bc
nop
inc b
jr nz, 02
nop
inc bc
jr nz, 05
nop
dec c
add a, b
ld hl, 1300
ld bc, 0007
dec b
ld bc, 0006
inc b
ld bc, 0005
ld b, 20
inc bc
nop
dec b
jr nz, 02
nop
inc e
jr nz, 03
nop
ld c, 80
ld (de), a
nop
inc c
stop
nop
ld (bc), a
ld bc, 0008
stop
ld (1e00), sp
add a, b
add hl, de
nop
stop
inc bc
nop
inc b
stop
nop
inc h
add a, b
inc e
nop
dec b
ld bc, 0005
ld de, 0320
nop
ld (de), a
add a, b
jr nz, 00
ld a, (bc)
stop
ld de, 0106
nop
nop
inc b
stop
nop
inc b
stop
nop
ld (bc), a
stop
nop
inc b
stop
nop
ld a, (bc)
nop
nop
nop
nop
nop
nop
nop
ld c, l
jr nz, 08
ld hl, 2006
dec bc
nop
rlca
jr nz, 06
nop
ld h, h
stop
ld de, 1006
dec b
nop
cpl
add a, b
ld d, 00
rla
jr nz, 05
nop
ld b, 20
ld b, 00
stop
jr 00
inc (hl)
ld bc, 0005
ld bc, 0e10
ld de, 1006
jr nz, 00
ld a, (bc)
add a, b
ld a, (bc)
nop
dec hl
jr nz, 06
nop
ld b, 20
dec b
nop
dec b
jr nz, 06
nop
ld a, (bc)
add a, b
inc c
nop
ld a, (bc)
ld bc, 0007
ld (bc), a
stop
nop
dec b
stop
nop
dec c
add a, b
inc e
nop
ld (hl), l
ld bc, 0006
ld c, 80
rra
nop
ld a, (de)
ld bc, 0006
nop
stop
nop
dec b
stop
nop
inc b
stop
nop
inc bc
stop
nop
inc c
add a, b
rrca
nop
ld a, (bc)
ld bc, 0007
nop
stop
nop
dec b
add a, b
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
stop
nop
inc b
ld (0400), sp
ld (0008), sp
inc b
inc d
stop
stop
inc d
jr 14
nop
inc c
inc b
jr 00
inc d
inc d
ld (0404), sp
inc c
nop
jr 04
nop
ld (0c0c), sp
jr 00
inc c
ld (1800), sp
stop
inc d
jr 08
inc h
ld h, (hl)
ld b, c
ld h, (hl)
dec a
ld h, a
and e
ld h, (hl)
ld (hl), c
ld h, a
unknown
ld h, (hl)
ld l, h
ld h, (hl)
cp h
ld h, (hl)
inc l
ld h, (hl)
ld c, c
ld h, (hl)
ld d, c
ld h, a
ld c, c
ld h, (hl)
ld c, c
ld h, (hl)
inc b
ld h, a
ld (hl), d
ld h, (hl)
call nz, 1166
ld l, b
add hl, de
ld l, b
jp c, e267
ld h, a
ld hl, 2168
ld l, b
ld hl, ea68
ld h, a
ld (hl), b
ld l, a
ld a, e
ld l, a
add a, (hl)
ld l, a
sub c
ld l, a
sbc h
ld l, a
and a
ld l, a
or d
ld l, a
cp l
ld l, a
ret z
ld l, a
unknown
ld l, a
sbc 6f
jp hl
ld l, a
unknown
ld l, a
rst 38
ld l, a
ld a, (bc)
ld (hl), b
dec d
ld (hl), b
jr nz, 70
ret
push af
push bc
push de
push hl
ld a, (df7f)
cp 01
jr z, 46
cp 02
jr z, 7b
ld a, (df7e)
and a
jr nz, 7b
ld a, (ff00 + e4)
and a
jr z, 0d
xor a
ld (dfe0), a
ld (dfe8), a
ld (dff0), a
ld (dff8), a
call 6552
call 6a0e
call 6a2e
call 6879
call 6a52
call 6c75
call 6a96
xor a
ld (dfe0), a
ld (dfe8), a
ld (dff0), a
ld (dff8), a
ld (df7f), a
pop hl
pop de
pop bc
pop af
ret
call 69f8
xor a
ld (dfe1), a
ld (dff1), a
ld (dff9), a
ld hl, dfbf
cb be
ld hl, df9f
cb be
ld hl, dfaf
cb be
ld hl, dfcf
cb be
ld hl, 6f1a
call 69c9
ld a, 30
ld (df7e), a
ld hl, 65fb
call 698e
jr b7
ld hl, 65ff
jr f6
xor a
ld (df7e), a
jr 85
ld hl, df7e
dec (hl)
ld a, (hl)
cp 28
jr z, ec
cp 20
jr z, e0
cp 18
jr z, e4
cp 10
jr nz, 97
inc (hl)
jr 94
or d
unknown
add a, e
rst 00
or d
unknown
pop bc
rst 00
ld a, (dff1)
cp 01
ret
ld a, (dfe1)
cp 05
ret
ld a, (dfe1)
cp 07
ret
nop
or l
ret nc
ld b, b
rst 00
nop
or l
jr nz, 40
rst 00
nop
or (hl)
and c
add a, b
rst 00
ld a, 05
ld hl, 6615
jp 6967
call 69bc
and a
ret nz
ld hl, dfe4
inc (hl)
ld a, (hl)
cp 02
jp z, 664e
ld hl, 661a
jp 6987
ld a, 03
ld hl, 661f
jp 6967
call 69bc
and a
ret nz
xor a
ld (dfe1), a
ld (ff00 + 10), a
ld a, 08
ld (ff00 + 12), a
ld a, 80
ld (ff00 + 14), a
ld hl, df9f
cb be
ret
nop
add a, b
pop hl
pop bc
add a
nop
add a, b
pop hl
xor h
add a
ld hl, 6662
jp 6967
ld hl, dfe4
inc (hl)
ld a, (hl)
cp 04
jr z, 17
cp 0b
jr z, 19
cp 0f
jr z, 0f
cp 18
jp z, 6689
ret
ld a, 01
ld hl, dff0
ld (hl), a
jp 664e
ld hl, 6667
jp 6987
ld hl, 6662
jp 6987
ld c, b
cp h
ld b, d
ld h, (hl)
add a
call 6603
ret z
call 660f
ret z
call 6609
ret z
ld a, 02
ld hl, 669e
jp 6967
nop
or b
pop hl
or b
rst 00
ld a, 07
ld hl, 66b7
jp 6967
call 69bc
and a
ret nz
ld hl, 66b7
call 6987
ld hl, dfe4
inc (hl)
ld a, (hl)
cp 03
jp z, 664e
ret
ld a, 80
unknown
nop
call nz, 8393
add a, e
ld (hl), e
ld h, e
ld d, e
ld b, e
inc sp
inc hl
inc de
nop
nop
inc hl
ld b, e
ld h, e
add a, e
and e
jp e3d3
rst 38
call 6603
ret z
call 660f
ret z
ld a, 06
ld hl, 66da
jp 6967
call 69bc
and a
ret nz
ld hl, dfe4
ld c, (hl)
inc (hl)
ld b, 00
ld hl, 66df
add hl, bc
ld a, (hl)
and a
jp z, 664e
ld e, a
ld hl, 66ea
add hl, bc
ld a, (hl)
ld d, a
ld b, 86
ld c, 12
ld a, e
ld (ff00 + c), a
inc c
ld a, d
ld (ff00 + c), a
inc c
ld a, b
ld (ff00 + c), a
ret
dec sp
add a, b
or d
add a
add a
and d
sub e
ld h, d
ld b, e
inc hl
nop
add a, b
ld b, b
add a, b
ld b, b
add a, b
call 6603
ret z
call 660f
ret z
call 6609
ret z
ld a, 03
ld hl, 672d
jp 6967
call 69bc
and a
ret nz
ld hl, dfe4
ld c, (hl)
inc (hl)
ld b, 00
ld hl, 6732
add hl, bc
ld a, (hl)
and a
jp z, 664e
ld e, a
ld hl, 6738
add hl, bc
ld a, (hl)
ld d, a
ld b, 87
jr b1
call 660f
ret z
ld a, 28
ld hl, 677d
jp 6967
or a
add a, b
sub b
rst 38
add a, e
nop
pop de
ld b, l
add a, b
nop
pop af
ld d, h
add a, b
nop
push de
ld h, l
add a, b
nop
ld (hl), b
ld h, (hl)
add a, b
ld h, l
ld h, l
ld h, l
ld h, h
ld d, a
ld d, (hl)
ld d, l
ld d, h
ld d, h
ld d, h
ld d, h
ld d, h
ld b, a
ld b, (hl)
ld b, (hl)
ld b, l
ld b, l
ld b, l
ld b, h
ld b, h
ld b, h
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
inc (hl)
ld (hl), b
ld h, b
ld (hl), b
ld (hl), b
ld (hl), b
add a, b
sub b
and b
ret nc
ld a, (ff00 + e0)
ret nc
ret nz
or b
and b
sub b
add a, b
ld (hl), b
ld h, b
ld d, b
ld b, b
jr nc, 30
jr nz, 20
jr nz, 20
jr nz, 20
jr nz, 20
jr nz, 20
jr nz, 10
stop
jr nc, 21
adc d
ld h, a
jp 6967
ld a, 30
ld hl, 678e
jp 6967
call 69bc
and a
ret nz
ld hl, dffc
ld a, (hl)
ld c, a
cp 24
jp z, 6826
inc (hl)
ld b, 00
push bc
ld hl, 6792
add hl, bc
ld a, (hl)
ld (ff00 + 22), a
pop bc
ld hl, 67b6
add hl, bc
ld a, (hl)
ld (ff00 + 21), a
ld a, 80
ld (ff00 + 23), a
ret
ld a, 20
ld hl, 6786
jp 6967
ld a, 12
ld hl, 6782
jp 6967
call 69bc
and a
ret nz
xor a
ld (dff9), a
ld a, 08
ld (ff00 + 21), a
ld a, 80
ld (ff00 + 23), a
ld hl, dfcf
cb be
ret
add a, b
ldd a, (hl)
jr nz, 60
add a, 21
ld a, (bc)
ld l, a
call 693e
ld a, (ff00 + 04)
and 1f
ld b, a
ld a, d0
add a, b
ld (dff5), a
ld hl, 6838
jp 6995
ld a, (ff00 + 04)
and 0f
ld b, a
ld hl, dff4
inc (hl)
ld a, (hl)
ld hl, dff5
cp 0e
jr nc, 0a
inc (hl)
inc (hl)
ld a, (hl)
and f0
or b
ld c, 1d
ld (ff00 + c), a
ret
cp 1e
jp z, 691f
dec (hl)
dec (hl)
dec (hl)
jr ee
ld a, (dff0)
cp 01
jp z, 68a8
cp 02
jp z, 683d
ld a, (dff1)
cp 01
jp z, 68f3
cp 02
jp z, 6854
ret
add a, b
add a, b
jr nz, 9d
add a
add a, b
ld hl, sp+20
sbc b
add a
add a, b
ei
jr nz, 96
add a
add a, b
or 20
sub l
add a
ld hl, 6eda
call 693e
ld hl, 6897
ld a, (hl)
ld (dff6), a
ld a, 01
ld (dff5), a
ld hl, 6894
jp 6995
ld a, 00
ld (dff5), a
ld hl, 689c
ld a, (hl)
ld (dff6), a
ld hl, 6899
jr ec
ld a, 01
ld (dff5), a
ld hl, 68a1
ld a, (hl)
ld (dff6), a
ld hl, 689e
jr db
ld a, 02
ld (dff5), a
ld hl, 68a6
ld a, (hl)
ld (dff6), a
ld hl, 68a3
jr ca
ld hl, dff4
inc (hl)
ldi a, (hl)
cp 09
jr z, c4
cp 13
jr z, d1
cp 17
jr z, de
cp 20
jr z, 17
ldi a, (hl)
cp 00
ret z
cp 01
jr z, 05
cp 02
jr z, 05
ret
inc (hl)
inc (hl)
jr 02
dec (hl)
dec (hl)
ld a, (hl)
ld (ff00 + 1d), a
ret
xor a
ld (dff1), a
ld (ff00 + 1a), a
ld hl, dfbf
cb be
ld hl, df9f
cb be
ld hl, dfaf
cb be
ld hl, dfcf
cb be
ld hl, 6f1a
jr 25
push hl
ld (dff1), a
ld hl, dfbf
cb fe
xor a
ld (dff4), a
ld (dff5), a
ld (dff6), a
ld (ff00 + 1a), a
ld hl, df9f
cb fe
ld hl, dfaf
cb fe
ld hl, dfcf
cb fe
pop hl
call 69c9
ret
push af
dec e
ld a, (df71)
ld (de), a
inc e
pop af
inc e
ld (de), a
dec e
xor a
ld (de), a
inc e
inc e
ld (de), a
inc e
ld (de), a
ld a, e
cp e5
jr z, 09
cp f5
jr z, 13
cp fd
jr z, 16
ret
push bc
ld c, 10
ld b, 05
jr 13
push bc
ld c, 16
ld b, 04
jr 0c
push bc
ld c, 1a
ld b, 05
jr 05
push bc
ld c, 20
ld b, 04
ldi a, (hl)
ld (ff00 + c), a
inc c
dec b
jr nz, fa
pop bc
ret
inc e
ld (df71), a
inc e
dec a
cb 27
ld c, a
ld b, 00
add hl, bc
ld c, (hl)
inc hl
ld b, (hl)
ld l, c
ld h, b
ld a, h
ret
push de
ld l, e
ld h, d
inc (hl)
ldi a, (hl)
cp (hl)
jr nz, 03
dec l
xor a
ld (hl), a
pop de
ret
push bc
ld c, 30
ldi a, (hl)
ld (ff00 + c), a
inc c
ld a, c
cp 40
jr nz, f8
pop bc
ret
xor a
ld (dfe1), a
ld (dfe9), a
ld (dff1), a
ld (dff9), a
ld (df9f), a
ld (dfaf), a
ld (dfbf), a
ld (dfcf), a
ld a, ff
ld (ff00 + 25), a
ld a, 03
ld (df78), a
ld a, 08
ld (ff00 + 12), a
ld (ff00 + 17), a
ld (ff00 + 21), a
ld a, 80
ld (ff00 + 14), a
ld (ff00 + 19), a
ld (ff00 + 23), a
xor a
ld (ff00 + 10), a
ld (ff00 + 1a), a
ret
ld de, dfe0
ld a, (de)
and a
jr z, 0c
ld hl, df9f
cb fe
ld hl, 6500
call 69a9
jp hl
inc e
ld a, (de)
and a
jr z, 07
ld hl, 6510
call 69ad
jp hl
ret
ld de, dff8
ld a, (de)
and a
jr z, 0c
ld hl, dfcf
cb fe
ld hl, 6520
call 69a9
jp hl
inc e
ld a, (de)
and a
jr z, 07
ld hl, 6528
call 69ad
jp hl
ret
call 69d6
ret
ld hl, dfe8
ldi a, (hl)
and a
ret z
cp ff
jr z, f2
ld (hl), a
ld b, a
ld hl, 6530
and 1f
call 69ad
call 6b44
call 6a6d
ret
ld a, (dfe9)
and a
ret z
ld hl, 6aef
dec a
jr z, 06
inc hl
inc hl
inc hl
inc hl
jr f7
ldi a, (hl)
ld (df78), a
ldi a, (hl)
ld (df76), a
ldi a, (hl)
ld (df79), a
ldi a, (hl)
ld (df7a), a
xor a
ld (df75), a
ld (df77), a
ret
ld a, (dfe9)
and a
jr z, 3d
ld hl, df75
ld a, (df78)
cp 01
jr z, 37
cp 03
jr z, 2f
inc (hl)
ldi a, (hl)
cp (hl)
jr nz, 33
dec l
ld (hl), 00
inc l
inc l
inc (hl)
ld a, (df79)
cb 46
jp z, 6ac0
ld a, (df7a)
ld b, a
ld a, (dff1)
and a
jr z, 04
cb d0
cb f0
ld a, (dff9)
and a
jr z, 04
cb d8
cb f8
ld a, b
ld (ff00 + 25), a
ret
ld a, ff
jr f9
ld a, (df79)
jr de
ld a, (dff9)
and a
jr nz, f1
ld a, (dff1)
and a
jr nz, eb
ret
ld bc, ef24
ld d, (hl)
ld bc, e500
nop
ld bc, fd20
nop
ld bc, de20
rst 30
ld (bc), a
jr 7f
rst 30
inc bc
jr f7
ld a, a
inc bc
ld c, b
rst 18
ld e, e
ld bc, db18
rst 20
ld bc, fd00
rst 30
inc bc
jr nz, 7f
rst 30
ld bc, ed20
rst 30
ld bc, ed20
rst 30
ld bc, ed20
rst 30
ld bc, ed20
rst 30
ld bc, ed20
rst 30
ld bc, ef20
rst 30
ld bc, ef20
rst 30
ldi a, (hl)
ld c, a
ld a, (hl)
ld b, a
ld a, (bc)
ld (de), a
inc e
inc bc
ld a, (bc)
ld (de), a
ret
ldi a, (hl)
ld (de), a
inc e
ldi a, (hl)
ld (de), a
ret
call 69f8
xor a
ld (df75), a
ld (df77), a
ld de, df80
ld b, 00
ldi a, (hl)
ld (de), a
inc e
call 6b3e
ld de, df90
call 6b3e
ld de, dfa0
call 6b3e
ld de, dfb0
call 6b3e
ld de, dfc0
call 6b3e
ld hl, df90
ld de, df94
call 6b33
ld hl, dfa0
ld de, dfa4
call 6b33
ld hl, dfb0
ld de, dfb4
call 6b33
ld hl, dfc0
ld de, dfc4
call 6b33
ld bc, 0410
ld hl, df92
ld (hl), 01
ld a, c
add a, l
ld l, a
dec b
jr nz, f8
xor a
ld (df9e), a
ld (dfae), a
ld (dfbe), a
ret
push hl
xor a
ld (ff00 + 1a), a
ld l, e
ld h, d
call 69c9
pop hl
jr 2a
call 6bea
call 6bff
ld e, a
call 6bea
call 6bff
ld d, a
call 6bea
call 6bff
ld c, a
inc l
inc l
ld (hl), e
inc l
ld (hl), d
inc l
ld (hl), c
dec l
dec l
dec l
dec l
push hl
ld hl, df70
ld a, (hl)
pop hl
cp 03
jr z, ca
call 6bea
jp 6c8f
push de
ldi a, (hl)
ld e, a
ldd a, (hl)
ld d, a
inc de
ld a, e
ldi (hl), a
ld a, d
ldd (hl), a
pop de
ret
push de
ldi a, (hl)
ld e, a
ldd a, (hl)
ld d, a
inc de
inc de
jr f1
ldi a, (hl)
ld c, a
ldd a, (hl)
ld b, a
ld a, (bc)
ld b, a
ret
pop hl
jr 2c
ld a, (df70)
cp 03
jr nz, 10
ld a, (dfb8)
cb 7f
jr z, 09
ld a, (hl)
cp 06
jr nz, 04
ld a, 40
ld (ff00 + 1c), a
push hl
ld a, l
add a, 09
ld l, a
ld a, (hl)
and a
jr nz, dd
ld a, l
add a, 04
ld l, a
cb 7e
jr nz, d5
pop hl
call 6d98
dec l
dec l
jp 6d6a
dec l
dec l
dec l
dec l
call 6bf6
ld a, l
add a, 04
ld e, a
ld d, h
call 6b33
cp 00
jr z, 1f
cp ff
jr z, 04
inc l
jp 6c8d
dec l
push hl
call 6bf6
call 6bff
ld e, a
call 6bea
call 6bff
ld d, a
pop hl
ld a, e
ldi (hl), a
ld a, d
ldd (hl), a
jr d5
ld hl, dfe9
ld (hl), 00
call 69d6
ret
ld hl, dfe9
ld a, (hl)
and a
ret z
ld a, 01
ld (df70), a
ld hl, df90
inc l
ldi a, (hl)
and a
jp z, 6c35
dec (hl)
jp nz, 6c09
inc l
inc l
call 6bff
cp 00
jp z, 6c3a
cp 9d
jp z, 6bba
and f0
cp a0
jr nz, 1a
ld a, b
and 0f
ld c, a
ld b, 00
push hl
ld de, df81
ld a, (de)
ld l, a
inc de
ld a, (de)
ld h, a
add hl, bc
ld a, (hl)
pop hl
dec l
ldi (hl), a
call 6bea
call 6bff
ld a, b
ld c, a
ld b, 00
call 6bea
ld a, (df70)
cp 04
jp z, 6ced
push hl
ld a, l
add a, 05
ld l, a
ld e, l
ld d, h
inc l
inc l
ld a, c
cp 01
jr z, 0f
ld (hl), 00
ld hl, 6e33
add hl, bc
ldi a, (hl)
ld (de), a
inc e
ld a, (hl)
ld (de), a
pop hl
jp 6d04
ld (hl), 01
pop hl
jr 17
push hl
ld de, dfc6
ld hl, 6ec5
add hl, bc
ldi a, (hl)
ld (de), a
inc e
ld a, e
cp cb
jr nz, f8
ld c, 20
ld hl, dfc4
jr 2e
push hl
ld a, (df70)
cp 01
jr z, 21
cp 02
jr z, 19
ld c, 1a
ld a, (dfbf)
cb 7f
jr nz, 05
xor a
ld (ff00 + c), a
ld a, 80
ld (ff00 + c), a
inc c
inc l
inc l
inc l
inc l
ldi a, (hl)
ld e, a
ld d, 00
jr 15
ld c, 16
jr 05
ld c, 10
ld a, 00
inc c
inc l
inc l
inc l
ldd a, (hl)
and a
jr nz, 4f
ldi a, (hl)
ld e, a
inc l
ldi a, (hl)
ld d, a
push hl
inc l
inc l
ldi a, (hl)
and a
jr z, 02
ld e, 01
inc l
inc l
ld (hl), 00
inc l
ld a, (hl)
pop hl
cb 7f
jr nz, 13
ld a, d
ld (ff00 + c), a
inc c
ld a, e
ld (ff00 + c), a
inc c
ldi a, (hl)
ld (ff00 + c), a
inc c
ld a, (hl)
or 80
ld (ff00 + c), a
ld a, l
or 05
ld l, a
cb 86
pop hl
dec l
ldd a, (hl)
ldd (hl), a
dec l
ld de, df70
ld a, (de)
cp 04
jr z, 09
inc a
ld (de), a
ld de, 0010
add hl, de
jp 6c83
ld hl, df9e
inc (hl)
ld hl, dfae
inc (hl)
ld hl, dfbe
inc (hl)
ret
ld b, 00
push hl
pop hl
inc l
jr ac
ld a, b
cb 3f
ld l, a
ld h, 00
add hl, de
ld e, (hl)
ret
push hl
ld a, l
add a, 06
ld l, a
ld a, (hl)
and 0f
jr z, 18
ld (df71), a
ld a, (df70)
ld c, 13
cp 01
jr z, 0e
ld c, 18
cp 02
jr z, 08
ld c, 1d
cp 03
jr z, 02
pop hl
ret
inc l
ldi a, (hl)
ld e, a
ld a, (hl)
ld d, a
push de
ld a, l
add a, 04
ld l, a
ld b, (hl)
ld a, (df71)
cp 01
jr 09
cp 03
jr 00
ld hl, ffff
jr 1c
ld de, 6dfc
call 6d8f
cb 40
jr nz, 02
cb 33
ld a, e
and 0f
cb 5f
jr z, 06
ld h, ff
or f0
jr 02
ld h, 00
ld l, a
pop de
add hl, de
ld a, l
ld (ff00 + c), a
inc c
ld a, h
ld (ff00 + c), a
jr be
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
ld de, 0f00
ld a, (ff00 + 01)
ld (de), a
stop
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
ld bc, 1012
rst 38
rst 28
nop
rrca
inc l
nop
sbc h
nop
ld b, 01
ld l, e
ld bc, 01c9
inc hl
ld (bc), a
ld (hl), a
ld (bc), a
add a, 02
ld (de), a
inc bc
ld d, (hl)
inc bc
sbc e
inc bc
jp c, 1603
inc b
ld c, (hl)
inc b
add a, e
inc b
or l
inc b
push hl
inc b
ld de, 3b05
dec b
ld h, e
dec b
adc c
dec b
xor h
dec b
adc 05
unknown
dec b
ld a, (bc)
ld b, 27
ld b, 42
ld b, 5b
ld b, 72
ld b, 89
ld b, 9e
ld b, b2
ld b, c4
ld b, d6
ld b, e7
ld b, f7
ld b, 06
rlca
inc d
rlca
ld hl, 2d07
rlca
add hl, sp
rlca
ld b, h
rlca
ld c, a
rlca
ld e, c
rlca
ld h, d
rlca
ld l, e
rlca
ld (hl), e
rlca
ld a, e
rlca
add a, e
rlca
adc d
rlca
sub b
rlca
sub a
rlca
sbc l
rlca
and d
rlca
and a
rlca
xor h
rlca
or c
rlca
or (hl)
rlca
cp d
rlca
cp (hl)
rlca
pop bc
rlca
call nz, c807
rlca
cb 07
adc 07
pop de
rlca
call nc, d607
rlca
reti
rlca
unknown
rlca
unknown
rlca
rst 18
rlca
nop
nop
nop
nop
nop
ret nz
and c
nop
ldd a, (hl)
nop
ret nz
or c
nop
add hl, hl
ld bc, 61c0
nop
ldd a, (hl)
nop
ret nz
ld (de), a
inc (hl)
ld b, l
ld h, a
sbc d
cp h
sbc fe
sbc b
ld a, d
or a
cp (hl)
xor b
halt
ld d, h
ld sp, 2301
ld b, h
ld d, l
ld h, a
adc b
sbc d
cp e
xor c
adc b
halt
ld d, l
ld b, h
inc sp
ldi (hl), a
ld de, 2301
ld b, l
ld h, a
adc c
xor e
call feef
call c, 98ba
halt
ld d, h
ldd (hl), a
stop
add a, d
inc hl
inc (hl)
ld b, l
ld d, (hl)
ld h, a
ld a, b
adc c
sbc d
xor e
cp h
call 3264
stop
inc hl
ld d, (hl)
ld a, b
sbc c
sbc b
halt
ld h, a
sbc d
rst 18
cp c9
add a, l
ld b, d
ld de, 0231
inc b
ld (2010), sp
ld b, b
inc c
jr 30
dec b
nop
ld bc, 0503
ld a, (bc)
inc d
jr z, 50
rrca
ld e, 3c
inc bc
ld b, 0c
jr 30
ld h, b
ld (de), a
inc h
ld c, b
ld (0010), sp
rlca
ld c, 1c
jr c, 70
dec d
ldi a, (hl)
ld d, h
inc b
ld (2010), sp
ld b, b
add a, b
jr 30
ld h, b
inc b
add hl, bc
ld (de), a
inc h
ld c, b
sub b
dec de
ld (hl), 6c
inc c
jr 04
ld a, (bc)
inc d
jr z, 50
and b
ld e, 3c
ld a, b
nop
ccf
ld l, a
unknown
ld a, h
ld a, (0c7c)
ld a, l
inc e
ld a, l
nop
ld (hl), 6f
ld b, e
ld a, (hl)
ccf
ld a, (hl)
ld b, l
ld a, (hl)
ld b, a
ld a, (hl)
nop
ccf
ld l, a
ld (hl), 76
ld l, 76
inc a
halt
ld e, (hl)
halt
nop
ldi a, (hl)
ld l, a
ei
ld (hl), l
rst 30
ld (hl), l
unknown
ld (hl), l
nop
nop
nop
ccf
ld l, a
adc l
ld (hl), c
ld (hl), e
ld (hl), c
and a
ld (hl), c
pop bc
ld (hl), c
nop
ccf
ld l, a
pop bc
ld (hl), d
or e
ld (hl), d
rst 08
ld (hl), d
unknown
ld (hl), d
nop
ccf
ld l, a
add hl, sp
ld (hl), b
dec hl
ld (hl), b
nop
nop
nop
nop
nop
ld (hl), 6f
sbc b
ld a, (hl)
adc h
ld a, (hl)
and h
ld a, (hl)
or b
ld a, (hl)
nop
ccf
ld l, a
inc hl
ld a, h
rra
ld a, h
dec h
ld a, h
daa
ld a, h
nop
ccf
ld l, a
nop
nop
ei
ld a, c
nop
nop
nop
nop
nop
ccf
ld l, a
nop
nop
ld hl, 257a
ld a, d
nop
nop
nop
ccf
ld l, a
ld l, (hl)
ld a, d
ld l, d
ld a, d
ld (hl), b
ld a, d
nop
nop
nop
ccf
ld l, a
jp c, de7a
ld a, d
ld (ff00 + 7a), a
ld (ff00 + c), a
ld a, d
nop
ccf
ld l, a
ld h, b
ld a, e
ld h, (hl)
ld a, e
ld l, d
ld a, e
ld l, (hl)
ld a, e
nop
ccf
ld l, a
ld h, a
ld a, b
ld (hl), c
ld a, b
ld a, c
ld a, b
add a, c
ld a, b
nop
ld e, h
ld l, a
ld a, 75
ld b, (hl)
ld (hl), l
ld c, h
ld (hl), l
nop
nop
nop
ccf
ld l, a
adc b
ld (hl), l
sub b
ld (hl), l
sub (hl)
ld (hl), l
nop
nop
ld b, a
ld (hl), b
ld h, l
ld (hl), b
ld b, a
ld (hl), b
ld a, (hl)
ld (hl), b
call nz, ff70
rst 38
dec hl
ld (hl), b
sub e
ld (hl), b
and l
ld (hl), b
sub e
ld (hl), b
or (hl)
ld (hl), b
dec h
ld (hl), c
rst 38
rst 38
add hl, sp
ld (hl), b
sbc l
ld (hl), h
nop
ld b, c
and d
ld b, h
ld c, h
ld d, (hl)
ld c, h
ld b, d
ld c, h
ld b, h
ld c, h
ld a, 4c
inc a
ld c, h
ld b, h
ld c, h
ld d, (hl)
ld c, h
ld b, d
ld c, h
ld b, h
ld c, h
ld a, 4c
inc a
ld c, h
nop
ld b, h
ld c, h
ld b, h
ld a, 4e
ld c, b
ld b, d
ld c, b
ld b, d
ldd a, (hl)
ld c, h
ld b, h
ld a, 4c
ld c, b
ld b, h
ld b, d
ld a, 3c
inc (hl)
inc a
ld b, d
ld c, h
ld c, b
nop
ld b, h
ld c, h
ld b, h
ld a, 4e
ld c, b
ld b, d
ld c, b
ld b, d
ldd a, (hl)
ld d, d
ld c, b
ld c, h
ld d, d
ld c, h
ld b, h
ldd a, (hl)
ld b, d
xor b
ld b, h
nop
sbc l
ld h, h
nop
ld b, c
and e
ld h, 3e
inc a
ld h, 2c
inc (hl)
ld a, 36
inc (hl)
ld a, 2c
inc (hl)
nop
ld h, 3e
jr nc, 22
ldd a, (hl)
inc l
ld e, 36
jr nc, a2
inc (hl)
ld (hl), 34
jr nc, 2c
ldi a, (hl)
nop
and e
ld h, 3e
jr nc, 22
ldd a, (hl)
ldi a, (hl)
inc l
inc (hl)
inc (hl)
inc l
ldi (hl), a
inc d
nop
and d
ld d, d
ld c, (hl)
ld c, h
ld c, b
ld b, h
ld b, d
ld b, h
ld c, b
ld c, h
ld b, h
ld c, b
ld c, (hl)
ld c, h
ld c, (hl)
and e
ld d, d
ld b, d
and d
ld b, h
ld c, b
and e
ld c, h
ld c, b
ld c, h
ld d, (hl)
ld d, b
and d
ld d, (hl)
ld e, d
and e
ld e, h
ld e, d
and d
ld d, (hl)
ld d, d
ld d, b
ld c, h
ld d, b
ld c, d
xor b
ld c, h
and a
ld d, d
and c
ld d, (hl)
ld e, b
and e
ld d, (hl)
and d
ld d, d
ld c, (hl)
ld d, d
ld c, h
ld c, (hl)
ld c, b
and a
ld d, (hl)
and c
ld e, d
ld e, h
and e
ld e, d
and d
ld d, (hl)
ld d, h
ld d, (hl)
ld d, b
ld d, h
ld c, h
ld e, d
ld d, h
ld c, h
ld d, h
ld e, d
ld h, b
ld h, (hl)
ld d, h
ld h, h
ld d, h
ld h, b
ld d, h
and e
ld e, h
and d
ld h, b
ld e, h
ld e, d
ld e, h
and c
ld d, (hl)
ld e, d
and h
ld d, (hl)
and d
ld bc, a200
inc (hl)
ldd a, (hl)
ld b, h
ldd a, (hl)
jr nc, 3a
inc (hl)
ldd a, (hl)
inc l
ldd a, (hl)
ldi a, (hl)
ldd a, (hl)
inc l
ldd a, (hl)
ld b, h
ldd a, (hl)
jr nc, 3a
inc (hl)
ldd a, (hl)
inc l
ldd a, (hl)
ldi a, (hl)
ldd a, (hl)
inc l
inc (hl)
inc l
ld h, 3e
jr c, 32
jr c, 2a
jr c, 32
jr c, a3
inc (hl)
ld b, d
ldi a, (hl)
and d
inc (hl)
ldd a, (hl)
ld b, d
ldd a, (hl)
jr nc, 3a
ld l, 34
ld h, 34
ld l, 34
xor b
jr nc, a2
ldd (hl), a
jr c, 2a
jr c, 32
jr c, a8
inc (hl)
and e
inc (hl)
ldi a, (hl)
inc h
inc e
jr nz, 24
inc l
jr nc, 34
xor b
ld h, 00
rst 00
ld (hl), c
sub 71
rrca
ld (hl), d
sub 71
ld b, c
ld (hl), d
and h
ld (hl), d
sub 71
rrca
ld (hl), d
rst 00
ld (hl), c
sub 71
halt
ld (hl), d
rst 38
rst 38
ld (hl), e
ld (hl), c
call z, ee71
ld (hl), c
daa
ld (hl), d
xor 71
ld d, l
ld (hl), d
xor c
ld (hl), d
xor 71
daa
ld (hl), d
call z, ee71
ld (hl), c
adc d
ld (hl), d
rst 38
rst 38
adc l
ld (hl), c
pop de
ld (hl), c
unknown
ld (hl), c
inc (hl)
ld (hl), d
unknown
ld (hl), c
ld h, h
ld (hl), d
xor (hl)
ld (hl), d
unknown
ld (hl), c
inc (hl)
ld (hl), d
pop de
ld (hl), c
unknown
ld (hl), c
sub a
ld (hl), d
rst 38
rst 38
and a
ld (hl), c
ld a, (bc)
ld (hl), d
rst 38
rst 38
pop bc
ld (hl), c
sbc l
add a, h
nop
add a, b
nop
sbc l
ld d, h
nop
add a, b
nop
sbc l
ld a, (de)
ld l, a
and b
nop
and d
ld b, h
ld c, b
ld b, h
ld b, d
ld b, h
ld c, b
ld c, h
ld c, (hl)
and e
ld d, d
and d
ld bc, a356
ld e, h
ld bc, 58a9
ld e, h
ld e, b
xor b
ld c, b
nop
and e
ld bc, 3e3e
ld bc, 4444
ld bc, 4848
ld bc, 4040
nop
and e
ld c, (hl)
ld c, (hl)
ld c, (hl)
ld b, h
ld d, (hl)
ld d, (hl)
ld d, d
ld e, b
ld e, b
ld b, b
ld d, d
ld d, d
nop
and e
ld b, 0b
dec bc
nop
and d
ld b, b
ld b, h
ld b, b
ld a, 40
ld b, h
ld c, b
ld c, h
and e
ld c, (hl)
and d
ld bc, a352
ld e, b
ld bc, 56a9
ld e, b
ld d, (hl)
xor b
ld b, h
nop
ld bc, 3a3a
ld bc, 4040
ld bc, 4444
ld bc, 4040
nop
ld b, h
ld c, h
ld c, h
ld b, h
ld d, d
ld d, d
ld c, (hl)
ld d, (hl)
ld d, (hl)
ld b, h
ld c, h
ld c, h
nop
and e
ld e, b
and a
ld d, (hl)
and d
ld d, d
and e
ld d, (hl)
and a
ld c, (hl)
and d
ld c, b
ld c, h
ld c, h
and e
ld c, h
ld c, (hl)
xor b
ld d, d
nop
ld bc, 4646
ld bc, 4444
and d
ld b, b
ld b, b
and e
ld b, b
ld b, b
xor b
ld b, b
nop
ld b, (hl)
ld c, (hl)
ld c, (hl)
ld b, h
ld d, (hl)
ld d, (hl)
and d
ld d, d
ld d, d
and e
ld d, d
ld c, b
ld c, h
and a
ld c, b
and d
ld b, (hl)
nop
and e
ld d, d
and a
ld e, b
and d
ld d, (hl)
and e
ld d, (hl)
and a
ld e, h
and d
ld h, (hl)
ld h, b
ld h, b
and e
ld h, b
ld h, h
xor b
ld h, (hl)
nop
ld bc, 4646
ld bc, 4444
ld bc, 3a40
ld bc, 4446
nop
ld b, (hl)
ld c, (hl)
ld c, (hl)
ld b, h
ld d, (hl)
ld d, (hl)
ld b, b
ld d, d
ld b, h
ld c, (hl)
ld e, b
ld d, (hl)
nop
sbc l
ld h, e
nop
add a, b
nop
sbc l
ld b, h
nop
add a, b
nop
sbc l
ld a, (de)
ld l, a
and b
nop
ld b, 73
ldd a, (hl)
ld (hl), e
ld h, d
ld (hl), e
ld h, d
ld (hl), e
call nz, ff73
rst 38
or e
ld (hl), d
inc bc
ld (hl), e
scf
ld (hl), e
adc c
ld (hl), e
adc c
ld (hl), e
ld b, (hl)
ld (hl), h
rst 38
rst 38
pop bc
ld (hl), d
ld a, (de)
ld (hl), e
ld c, (hl)
ld (hl), e
or b
ld (hl), e
or b
ld (hl), e
or b
ld (hl), e
or b
ld (hl), e
or b
ld (hl), e
or b
ld (hl), e
cp e
ld (hl), h
reti
ld (hl), h
reti
ld (hl), h
reti
ld (hl), h
jp hl
ld (hl), h
ld sp, hl
ld (hl), h
ld sp, hl
ld (hl), h
add hl, bc
ld (hl), l
add hl, bc
ld (hl), l
add hl, de
ld (hl), l
add hl, de
ld (hl), l
add hl, bc
ld (hl), l
add hl, hl
ld (hl), l
rst 38
rst 38
rst 08
ld (hl), d
ld l, 73
rst 38
rst 38
unknown
ld (hl), d
and l
ld bc, 9d00
ld h, d
nop
add a, b
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
nop
sbc l
ld a, (de)
ld l, a
and b
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
nop
and d
ld b, a1
ld b, 06
and d
ld b, 06
nop
and l
ld bc, 9d00
ldd (hl), a
nop
add a, b
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
nop
sbc l
ld a, (de)
ld l, a
and b
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
nop
sbc l
add a, d
nop
add a, b
and d
ldd a, (hl)
ld c, b
ld d, d
ld d, b
ld d, d
and c
ld c, b
ld c, b
and d
ld c, d
ld b, h
ld c, b
and c
ld b, b
ld b, b
and d
ld b, h
ld a, 40
and c
ldd a, (hl)
ldd a, (hl)
and d
ld a, 38
ldd a, (hl)
jr nc, 32
jr c, 3a
jr nc, 32
ld a, 00
sbc l
ld d, e
nop
ld b, b
and d
jr nc, 40
ld b, b
ld b, h
ld b, b
and c
ld a, 40
and d
ld b, h
ld a, 40
and c
jr c, 3a
and d
ld a, 38
ldd a, (hl)
and c
ld l, 30
and d
jr c, 30
jr nc, 28
inc l
inc l
jr nc, 28
inc l
jr c, 00
sbc l
ld a, (de)
ld l, a
and b
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr nc, 30
nop
xor b
ldd a, (hl)
and d
ld a, 38
xor b
ldd a, (hl)
and e
ld a, a2
ld b, b
and c
ld b, b
ld b, b
and d
ld b, h
ld a, 40
and c
ld b, b
ld b, b
and d
ld b, h
ld a, a8
ld b, b
and e
ld b, h
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld c, d
ld b, h
ld c, b
and c
ld c, b
ld c, b
and d
ld c, d
ld b, h
xor b
ld c, b
and e
ld c, h
and d
ld c, (hl)
and c
ld c, (hl)
ld c, (hl)
and d
ld c, (hl)
ld c, (hl)
ld d, d
ld c, (hl)
ld c, (hl)
ld c, h
ld c, (hl)
and c
ld c, (hl)
ld c, (hl)
and d
ld c, (hl)
ld c, (hl)
ld d, d
ld c, (hl)
ld c, (hl)
ld c, h
ld c, (hl)
and c
ld c, (hl)
ld c, (hl)
and d
ld c, (hl)
ld c, (hl)
ld c, h
and c
ld c, h
ld c, h
and d
ld c, h
ld c, h
ld c, d
and c
ld c, d
ld c, d
and d
ld c, d
ld b, h
ld a, 40
ld b, h
ld (hl), 44
and c
ld b, b
ld b, b
and d
ld (hl), a3
ld b, b
and c
ld (hl), 3a
and d
ld (hl), 30
ld b, h
and c
ld b, b
ld b, b
and d
ld (hl), a3
ld b, b
and c
ld (hl), 3a
and d
ld (hl), 2e
and l
ld (hl), a8
ld bc, 38a3
nop
xor b
jr nc, a2
jr nc, 30
xor b
jr nc, a3
ld (hl), a5
ld bc, 01a8
and e
ld a, a2
ld b, b
and c
ld b, b
ld b, b
and d
ld b, h
ld a, 40
and c
ld b, b
ld b, b
and d
ld b, h
ld a, a8
ld (hl), a3
ldd a, (hl)
and d
ld a, a1
ld b, b
ld b, h
and d
ld a, 44
ld c, b
ld c, b
ld c, b
ldd a, (hl)
ld a, a1
ld b, b
ld b, h
and d
ld a, 44
ld b, (hl)
ld b, (hl)
ld b, (hl)
ldd a, (hl)
ld a, a1
ld b, b
ld b, h
and d
ld a, 44
ldd a, (hl)
and c
ld a, 40
and d
ldd a, (hl)
ld b, b
ldd a, (hl)
and c
ld a, 40
and d
ld a, 3e
inc l
ldd a, (hl)
ld a, 26
jr nc, a1
jr nc, 30
and d
jr nc, a3
jr nc, a1
jr nc, 34
and d
jr nc, 28
ld l, a1
ld l, 2e
and d
ld l, a3
ld l, a1
ld l, 32
and d
ld l, 28
and l
ld h, a8
ld bc, 2ca3
nop
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd (hl), a
inc l
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
jr c, 30
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd (hl), a
inc l
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
inc l
ld e, 00
and d
jr z, a1
ld b, b
jr z, a2
ld e, 36
jr z, a1
ld b, b
jr z, a2
ld e, 36
nop
and d
jr z, a1
ld b, b
jr z, a2
ld e, 36
jr z, a1
ld b, b
jr z, a2
inc l
ld b, h
nop
and d
ld e, a1
ld (hl), 1e
and d
ld e, 36
jr z, a1
ld b, b
jr z, a2
jr z, 40
nop
and d
ld e, a1
ld (hl), 1e
and d
ld e, 36
ld e, a1
ld (hl), 1e
and d
ld e, 36
nop
and d
ldi (hl), a
and c
ldd a, (hl)
ldi (hl), a
and d
ldi (hl), a
ldd a, (hl)
ldi (hl), a
and c
ldd a, (hl)
ldi (hl), a
and d
ldi (hl), a
ldd a, (hl)
nop
and d
ld e, a1
ld (hl), 1e
and d
ld e, 36
ld e, a1
ld (hl), 1e
and d
and h
ld a, 00
ld (hl), 3e
ld b, h
and h
ld b, h
ld d, d
ld (hl), l
ld e, l
ld (hl), l
rst 38
rst 38
ld b, b
ld (hl), l
ld e, c
ld (hl), l
rst 38
rst 38
ld b, (hl)
ld (hl), l
ld (hl), a
ld (hl), l
rst 38
rst 38
ld c, h
ld (hl), l
sbc l
jr nz, 00
add a, c
xor d
ld bc, 9d00
ld (hl), b
nop
add a, c
and d
ld b, d
ldd (hl), a
jr c, 42
ld b, (hl)
inc (hl)
inc a
ld b, (hl)
ld c, d
jr c, 42
ld c, d
ld c, h
inc a
ld b, d
ld c, h
ld b, (hl)
inc (hl)
inc a
ld b, (hl)
ld b, b
ld l, 34
ld b, b
nop
sbc l
ld a, (de)
ld l, a
ld hl, 42a8
and e
ldi a, (hl)
xor b
ld b, d
and e
ldi a, (hl)
xor b
ld b, d
and e
ldi a, (hl)
nop
sbc h
ld (hl), l
and a
ld (hl), l
rst 38
rst 38
adc d
ld (hl), l
and e
ld (hl), l
rst 38
rst 38
sub b
ld (hl), l
jp hl
ld (hl), l
rst 38
rst 38
sub (hl)
ld (hl), l
sbc l
jr nz, 00
add a, c
xor d
ld bc, 9d00
ld (hl), b
nop
add a, c
and d
ld c, h
ld b, d
ld d, b
ld b, d
ld d, h
ld b, d
ld d, b
ld b, d
ld d, (hl)
ld b, d
ld d, h
ld b, d
ld d, b
ld b, d
ld d, h
ld b, d
ld c, h
ld b, d
ld d, b
ld b, d
ld d, h
ld b, d
ld d, b
ld b, d
ld d, (hl)
ld b, d
ld d, h
ld b, d
ld d, b
ld b, d
ld d, h
ld b, d
ld e, d
ld b, (hl)
ld d, (hl)
ld b, (hl)
ld d, h
ld b, (hl)
ld d, b
ld b, (hl)
ld c, (hl)
ld b, (hl)
ld d, b
ld b, (hl)
ld d, h
ld b, (hl)
ld d, b
ld b, (hl)
ld d, b
ld a, 4c
ld a, 4c
ld a, 4a
ld a, 4a
ld a, 46
ld a, 4a
ld a, 50
ld a, 00
sbc l
ld a, (de)
ld l, a
ld hl, 4ca5
ld c, d
ld b, (hl)
ld b, d
jr c, 3e
ld b, d
ld b, d
nop
rst 38
ld (hl), l
nop
nop
rrca
halt
ld e, 76
sbc l
or d
nop
add a, b
and d
ld h, b
ld e, h
ld h, b
ld e, h
ld h, b
ld h, d
ld h, b
ld e, h
and h
ld h, b
nop
sbc l
sub d
nop
add a, b
and d
ld d, d
ld c, (hl)
ld d, d
ld c, (hl)
ld d, d
ld d, h
ld d, d
ld c, (hl)
and h
ld d, d
sbc l
ld a, (de)
ld l, a
jr nz, a2
ld h, d
ld h, b
ld h, d
ld h, b
ld h, d
ld h, (hl)
ld h, d
ld h, b
and e
ld h, d
ld bc, 766a
ld h, h
ld (hl), a
ld h, h
ld (hl), a
nop
nop
cp d
halt
and l
ld (hl), a
scf
ld a, b
rlca
ld (hl), a
and 77
and 77
ld a, (ff00 + 77)
and 77
and 77
ld sp, hl
ld (hl), a
ld a, (ff00 + 77)
and 77
and 77
ld sp, hl
ld (hl), a
ld a, (ff00 + 77)
ld (bc), a
ld a, b
inc c
ld a, b
ld sp, hl
ld (hl), a
ld a, (ff00 + 77)
and 77
ld d, (hl)
ld (hl), a
ld d, (hl)
ld (hl), a
dec d
ld a, b
dec d
ld a, b
dec d
ld a, b
dec d
ld a, b
sbc l
jp 8000
and d
inc a
ld a, 3c
ld a, 38
ld d, b
and e
ld bc, 3ca2
ld a, 3c
ld a, 38
ld d, b
and e
ld bc, 01a2
ld c, b
ld bc, 0146
ld b, d
ld bc, a146
ld b, d
ld b, (hl)
and d
ld b, d
ld b, d
jr c, a3
inc a
ld bc, 3ea2
ld b, d
ld a, 42
inc a
ld d, h
and e
ld bc, 3ea2
ld b, d
ld a, 42
inc a
ld d, h
and e
ld bc, 01a2
ld d, (hl)
ld bc, 0154
ld d, h
ld bc, a250
ld bc, 50a1
ld d, h
and d
ld d, b
ld c, (hl)
and e
ld d, b
ld bc, 9d00
ld (hl), h
nop
add a, b
and d
ld (hl), 38
ld (hl), 38
ld l, 3e
and e
ld bc, 36a2
jr c, 36
jr c, 2e
ld a, a3
ld bc, 01a2
ld (hl), 01
ld (hl), 01
ldd (hl), a
ld bc, 3636
ldd (hl), a
ldd (hl), a
jr nc, a3
ld (hl), 01
and d
jr c, 3c
jr c, 3c
ld (hl), 4e
and e
ld bc, 38a2
inc a
jr c, 3c
ld (hl), 4e
and e
ld bc, 01a2
ld d, b
ld bc, 014e
ld b, (hl)
ld bc, a246
ld bc, 48a1
ld c, (hl)
and d
ld c, b
ld b, (hl)
and e
ld b, b
ld bc, 9d00
ld a, (de)
ld l, a
jr nz, a2
ld c, b
ld b, (hl)
ld c, b
ld b, (hl)
ld a, 20
and e
ld bc, 48a2
ld b, (hl)
ld c, b
ld b, (hl)
ld a, 20
and e
ld bc, 2ea2
inc a
ld l, 24
inc h
inc h
inc h
inc a
ldi a, (hl)
ld a, 2a
ld a, a6
ld l, a3
ld bc, 01a1
and d
ld c, b
ld b, (hl)
ld c, b
ld b, (hl)
ld l, 2e
and e
ld bc, 48a2
ld b, (hl)
ld c, b
ld b, (hl)
ld l, 2e
and e
ld bc, 2aa2
inc a
ldi a, (hl)
inc a
ld l, 3e
ld l, 3e
ld l, 42
ld l, 42
and (hl)
jr c, a3
ld bc, 01a1
nop
xor b
ld bc, 06a2
dec bc
xor b
ld bc, 06a2
dec bc
and l
ld bc, 0001
sbc l
push bc
nop
add a, b
and c
ld b, (hl)
ld c, d
and h
ld b, (hl)
and d
ld bc, 50a3
xor b
ld c, d
and e
ld bc, 42a1
ld b, (hl)
and h
ld b, d
and d
ld bc, 4ea3
and c
ld c, (hl)
ld d, b
and h
ld b, (hl)
and a
ld bc, 40a1
ld b, (hl)
and h
ld b, b
and d
ld bc, 46a3
and c
ld b, (hl)
ld c, d
and h
ld b, d
and a
ld bc, 36a1
jr c, a4
ld (hl), a2
ld bc, 3ca3
and a
ld b, d
and h
ld b, b
and d
ld bc, 9d00
add a, h
nop
ld b, c
and c
ld b, b
ld b, d
and h
ld b, b
and d
ld bc, 40a3
xor b
ld b, d
and e
ld bc, 3ca1
ld b, b
and h
inc a
and d
ld bc, 3ca3
and c
inc a
ld b, b
and h
ld b, b
and a
ld bc, 36a1
ldd (hl), a
and h
ld l, a2
ld bc, 40a3
and c
ld (hl), 38
and h
ldd (hl), a
and a
ld bc, 2ea1
ldd (hl), a
and h
ld l, a2
ld bc, 2aa3
and a
jr nc, a4
ld l, a2
ld bc, a200
jr c, 38
ld bc, 3838
jr c, 01
jr c, 00
ld l, 2e
ld bc, 2e2e
ld l, 01
ld l, 00
ldi a, (hl)
ldi a, (hl)
ld bc, 2a2a
ldi a, (hl)
ld bc, 002a
and d
jr c, 38
ld bc, 3638
ld (hl), 01
ld (hl), 00
ldd (hl), a
ldd (hl), a
ld bc, 2e32
ld l, 01
ld l, 00
and d
ld b, 0b
ld bc, 0606
dec bc
ld bc, 0606
dec bc
ld bc, 0606
dec bc
ld bc, 0606
dec bc
ld bc, 0606
dec bc
ld bc, 0606
dec bc
ld bc, 0106
dec bc
ld bc, 000b
sbc l
ld h, (hl)
nop
add a, c
and a
ld e, b
ld e, d
and e
ld e, b
and a
ld e, (hl)
and h
ld e, d
and d
ld bc, 50a7
ld d, h
and e
ld e, b
and a
ld e, d
and h
ld e, b
and d
ld bc, 50a7
and e
ld c, (hl)
and a
ld c, (hl)
ld e, b
ld d, h
and e
ld c, d
and a
ld e, d
ld e, (hl)
and e
ld e, d
and a
ld d, h
and h
ld d, b
and d
ld bc, 8900
ld a, b
inc c
ld a, c
adc c
ld a, b
sub c
ld a, c
nop
nop
xor b
ld a, b
inc sp
ld a, c
xor b
ld a, b
or l
ld a, c
ret nc
ld a, b
ld e, c
ld a, c
ret nc
ld a, b
ret c
ld a, c
ld sp, hl
ld a, b
ld a, a
ld a, c
ld sp, hl
ld a, b
ld a, a
ld a, c
sbc l
pop de
nop
add a, b
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld d, d
ld c, h
ld c, b
ld b, h
and c
ld c, h
ld d, d
nop
sbc l
or d
nop
add a, b
and d
ld d, d
and c
ld d, d
ld d, d
and d
ld d, d
and c
ld d, d
ld d, d
and d
ld b, h
and c
ld b, h
ld b, h
and d
ld b, h
ld bc, a14c
ld c, h
ld c, h
and d
ld c, h
and c
ld c, h
ld c, h
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
ld bc, 9d00
ld a, (de)
ld l, a
jr nz, a2
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld c, (hl)
and c
ld d, d
ld d, d
and d
ld d, (hl)
ld bc, 5ca2
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld b, h
and c
ld c, b
ld c, b
and d
ld c, h
ld bc, a200
ld b, a7
ld bc, 0ba2
dec bc
dec bc
ld bc, 06a2
and a
ld bc, 0ba2
dec bc
dec bc
ld bc, a200
ld c, b
and c
ld c, b
ld d, d
and d
ld b, h
and c
ld b, h
ld d, d
and d
ld b, d
and c
ld b, d
ld d, d
and d
ld c, b
and c
ld c, b
ld d, d
and d
ld c, h
and c
ld c, h
ld d, d
and d
ld b, h
and c
ld b, h
ld d, d
and d
ld c, b
ld b, h
and c
ld c, b
ld d, d
ld d, (hl)
ld e, d
nop
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ld (hl), a1
ld (hl), 36
and d
ld (hl), 01
nop
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld b, h
and c
ld b, h
ld b, h
and d
ld b, h
and c
ld b, h
ld b, h
and d
ld b, d
and c
ld b, d
ld b, d
and d
ld b, d
ld bc, a200
ld bc, 010b
dec bc
ld bc, 010b
dec bc
ld bc, 010b
dec bc
ld bc, 0b0b
ld bc, a200
ld c, b
and c
ld c, b
ld d, d
and d
ld b, h
and c
ld b, h
ld d, d
and d
ld b, d
and c
ld b, d
ld d, d
and d
ld c, b
and c
ld c, b
ld d, d
and d
ld c, h
and c
ld c, h
ld d, d
and d
ld c, b
and c
ld c, b
ld d, d
and d
ld b, h
ld d, d
and e
ld e, h
nop
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ldd a, (hl)
and c
ldd a, (hl)
ldd a, (hl)
and d
ld bc, a33a
ld c, h
nop
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld c, b
and c
ld c, b
ld c, b
and d
ld b, h
and c
ld b, h
ld b, h
and d
ld b, h
and c
ld b, h
ld b, h
and d
ld bc, a34c
ld b, h
nop
rst 38
ld a, c
nop
nop
sbc l
jp nz, 4000
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld d, d
ld c, h
ld c, b
and c
ld b, h
ld b, d
and d
ld b, h
and h
ld bc, 2700
ld a, d
nop
nop
ld b, (hl)
ld a, d
sbc l
jp nz, 8000
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld c, h
ld b, h
ld d, d
and e
ld e, h
and h
ld bc, 9d00
ld a, (de)
ld l, a
jr nz, a2
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld c, (hl)
ld d, d
ld d, (hl)
ld bc, 5ca2
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld d, d
ld c, h
ld b, h
ld bc, 01a5
ld (hl), d
ld a, d
nop
nop
sub c
ld a, d
xor a
ld a, d
sbc l
jp nz, 8000
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld c, h
ld b, h
ld d, d
and e
ld e, h
and h
ld bc, 9d00
jp nz, 4000
and d
ld c, (hl)
and c
ld c, (hl)
ld d, d
and d
ld d, (hl)
ld c, (hl)
and e
ld c, b
ld c, b
and d
ld c, h
and c
ld c, h
ld c, d
and d
ld c, h
ld b, h
inc (hl)
ld c, h
and e
ld c, h
and l
ld bc, 9d00
ld a, (de)
ld l, a
jr nz, a2
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld c, (hl)
ld d, d
and c
ld d, (hl)
ld d, (hl)
and d
ld d, (hl)
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld d, d
ld c, h
and c
ld b, h
ld b, h
and d
ld bc, 01a5
nop
unknown
ld a, d
nop
nop
inc bc
ld a, e
jr nz, 7b
ld c, d
ld a, e
sbc l
jp nz, 8000
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld c, h
ld b, h
ld d, d
and e
ld e, h
and h
ld bc, 9d00
or d
nop
add a, b
and d
ld c, (hl)
and c
ld c, (hl)
ld d, d
and d
ld d, (hl)
ld c, (hl)
and e
ld c, b
ld c, b
and d
ld c, h
and c
ld c, h
ld c, d
and d
ld c, h
ld b, h
inc (hl)
ld c, h
and e
ld c, h
and l
ld bc, 1a9d
ld l, a
jr nz, a2
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
ld c, (hl)
ld d, (hl)
ld e, h
ld d, (hl)
ld c, (hl)
ld b, h
ld a, 44
and d
ld e, h
and c
ld e, h
ld e, h
and d
ld e, h
and c
ld e, h
ld e, h
ld d, d
ld c, h
ld b, h
ld c, h
ld e, h
ld bc, 01a2
and l
ld bc, 0ba2
dec bc
dec bc
dec bc
and d
dec bc
dec bc
dec bc
ld bc, 0ba2
dec bc
dec bc
dec bc
and d
dec bc
dec bc
dec bc
ld bc, 01a5
ld (hl), d
ld a, e
ret
ld a, e
nop
nop
sub c
ld a, e
unknown
ld a, e
and e
ld a, e
unknown
ld a, e
or (hl)
ld a, e
dec c
ld a, h
sbc l
pop de
nop
add a, b
and d
ld e, h
and c
ld e, h
ld e, d
and d
ld e, h
ld e, h
ld d, (hl)
ld d, d
ld c, (hl)
ld d, (hl)
and d
ld d, d
and c
ld d, d
ld d, b
and d
ld d, d
ld d, d
ld c, h
ld c, b
ld b, h
and c
ld c, h
ld d, d
nop
and d
ld d, d
and a
ld bc, 44a2
ld b, h
ld b, h
ld bc, a74c
ld bc, 3aa2
ldd a, (hl)
ldd a, (hl)
ld bc, a200
ld e, h
and a
ld bc, 4ea2
ld d, d
ld d, (hl)
ld bc, 5ca2
and a
ld bc, 44a2
ld c, b
ld c, h
ld bc, a200
ld b, a7
ld bc, 0ba2
dec bc
dec bc
ld bc, 06a2
and a
ld bc, 0ba2
dec bc
dec bc
ld bc, a200
ld c, b
and c
ld c, b
ld d, d
and d
ld b, h
and c
ld b, h
ld d, d
and d
ld b, d
and c
ld b, d
ld d, d
and d
ld c, b
and c
ld c, b
ld d, d
and d
ld c, h
and c
ld c, h
ld d, d
and d
ld c, b
and c
ld c, b
ld d, d
and d
ld e, h
ld d, d
and e
ld e, h
nop
ld bc, 013a
ldd a, (hl)
ld bc, 013a
ldd a, (hl)
ld bc, 013a
ldd a, (hl)
ld bc, a33a
inc (hl)
ld bc, 0148
ld c, b
ld bc, 0148
ld c, b
ld bc, 0144
ld b, h
ld bc, a34c
ld b, h
and d
ld bc, 010b
dec bc
ld bc, 010b
dec bc
ld bc, 010b
dec bc
and d
ld bc, 0b0b
ld bc, 7c29
nop
nop
ld e, (hl)
ld a, h
sub d
ld a, h
add a, 7c
sbc l
or e
nop
add a, b
and (hl)
ld d, d
and c
ld d, b
and (hl)
ld d, d
and c
ld d, b
and (hl)
ld d, d
and c
ld c, b
and e
ld bc, 4ca6
and c
ld c, d
and (hl)
ld c, h
and c
ld c, d
and (hl)
ld c, h
and c
ld b, d
and e
ld bc, 3ea6
and c
ld b, d
and (hl)
ld b, h
and c
ld c, b
and (hl)
ld c, h
and c
ld d, b
and (hl)
ld d, d
and c
ld d, (hl)
and (hl)
ld d, d
and c
ld l, d
nop
sbc l
sub e
nop
ret nz
and (hl)
ld b, d
and c
ld b, b
and (hl)
ld b, d
and c
ld b, b
and (hl)
ld b, d
and c
ld b, d
and e
ld bc, 3aa6
and c
jr c, a6
ldd a, (hl)
and c
jr c, a6
ldd a, (hl)
and c
ldd a, (hl)
and e
ld bc, 38a6
and c
jr c, a6
ldd a, (hl)
and c
ld a, a6
ld b, d
and c
ld b, h
and (hl)
ld c, b
and c
ld c, h
and (hl)
ld b, d
and c
ld b, d
sbc l
ld a, (de)
ld l, a
and b
and (hl)
ld c, b
and c
ld b, (hl)
and (hl)
ld c, b
and c
ld b, (hl)
and (hl)
ld c, b
and c
ld d, d
and e
ld bc, 44a6
and c
ld b, d
and (hl)
ld b, h
and c
ld b, d
and (hl)
ld b, h
and c
ld c, h
and e
ld bc, 48a6
and c
ldd a, (hl)
and (hl)
ld a, a1
ld b, d
and (hl)
ld b, h
and c
ld c, b
and (hl)
ld c, h
and c
ld d, b
and (hl)
ld d, d
and c
ldd a, (hl)
and (hl)
dec bc
and c
ld b, a6
dec bc
and c
ld b, a6
dec bc
and c
ld b, a3
ld bc, 0ba6
and c
ld b, a6
dec bc
and c
ld b, a6
dec bc
and c
ld b, a3
ld bc, 0ba6
and c
ld b, a6
dec bc
and c
ld b, a6
dec bc
and c
ld b, a3
ld bc, 0ba6
and c
ld b, 29
ld a, l
rst 38
rst 38
unknown
ld a, h
inc h
ld a, l
jr nc, 7d
ld d, (hl)
ld a, l
ld a, l
ld a, l
ld d, (hl)
ld a, l
sbc a
ld a, l
pop bc
ld a, l
rst 38
rst 38
cp 7c
ld (hl), 7d
ld h, a
ld a, l
adc (hl)
ld a, l
ld h, a
ld a, l
or b
ld a, l
ld (bc), a
ld a, (hl)
rst 38
rst 38
ld c, 7d
add hl, sp
ld a, l
inc a
ld a, l
rst 38
rst 38
ld e, 7d
sbc l
ld h, b
nop
add a, c
nop
sbc l
jr nz, 00
add a, c
xor d
ld bc, a300
ld bc, 5450
ld e, b
nop
and l
ld bc, a500
ld bc, a300
ld bc, 0106
ld b, 01
and d
ld b, 06
and e
ld bc, a306
ld bc, 0106
ld b, 01
and d
ld b, 06
ld bc, 0601
ld b, 00
and a
ld e, d
and d
ld e, (hl)
and a
ld e, d
and d
ld e, b
and a
ld e, b
and d
ld d, h
and a
ld e, b
and d
ld d, h
nop
sbc l
ld a, (206e)
and d
ld e, d
ld h, d
ld l, b
ld (hl), b
ld e, d
ld h, d
ld l, b
ld (hl), b
ld e, d
ld h, h
ld h, (hl)
ld l, h
ld e, d
ld h, h
ld h, (hl)
ld l, h
nop
and a
ld d, h
and d
ld d, b
and a
ld d, h
and d
ld d, b
and a
ld d, b
and d
ld c, h
and a
ld c, d
and d
ld d, b
nop
ld e, b
ld e, (hl)
ld h, h
ld l, h
ld e, b
ld e, (hl)
ld h, h
ld l, h
ld d, b
ld d, h
ld e, b
ld e, (hl)
ld d, b
ld e, b
ld e, (hl)
ld h, h
nop
and a
ld d, h
and d
ld d, b
and a
ld d, h
and d
ld d, b
and a
ld d, b
and d
ld c, h
and a
ld c, d
and d
ld b, (hl)
nop
ld e, b
ld e, (hl)
ld h, h
ld l, h
ld e, b
ld e, (hl)
ld h, h
ld l, h
ld d, b
ld d, h
ld e, b
ld e, (hl)
ld d, b
ld e, b
ld e, (hl)
ld h, h
nop
and a
ld c, d
and d
ld c, h
and a
ld c, d
and d
ld b, (hl)
and a
ld b, (hl)
and d
ld b, h
and a
ld b, (hl)
and d
ld c, d
and a
ld c, h
and d
ld d, b
and a
ld c, h
and d
ld c, d
and a
ld c, d
and d
ld b, (hl)
and a
ld c, d
and d
ld c, h
and a
ld d, b
and d
ld c, (hl)
and a
ld d, b
and d
ld d, d
and a
ld e, b
and d
ld d, h
and a
ld e, d
and d
ld d, h
and a
ld d, d
and d
ld d, b
and a
ld c, h
and d
ld c, d
and d
ld b, d
jr c, 3c
ld c, d
and e
ld b, d
ld bc, 4a00
ld d, d
ld e, b
ld e, (hl)
ld c, d
ld e, b
ld e, (hl)
ld h, d
ld d, h
ld h, d
ld l, b
ld l, h
ld d, h
ld h, d
ld l, b
ld l, h
ld b, (hl)
ld c, h
ld d, h
ld e, (hl)
ld b, (hl)
ld c, h
ld d, h
ld e, d
ld d, b
ld e, b
ld e, (hl)
ld h, h
ld d, b
ld e, (hl)
ld h, h
ld l, h
ld c, d
ld d, b
ld e, b
ld e, (hl)
ld c, d
ld e, b
ld e, (hl)
ld h, d
ld c, (hl)
ld d, h
ld e, d
ld h, d
ld c, (hl)
ld d, h
ld e, d
ld h, (hl)
ld d, b
ld e, b
ld e, (hl)
ld h, h
ld d, b
ld e, (hl)
ld h, h
ld l, b
xor b
ld e, d
and e
ld bc, 4900
ld a, (hl)
nop
nop
ld e, c
ld a, (hl)
ld l, b
ld a, (hl)
ld a, b
ld a, (hl)
sbc l
or c
nop
add a, b
and a
ld bc, 5ea1
ld e, (hl)
and (hl)
ld l, b
and c
ld e, (hl)
and h
ld l, b
nop
sbc l
sub c
nop
add a, b
and a
ld bc, 54a1
ld d, h
and (hl)
ld e, (hl)
and c
ld e, b
and h
ld e, (hl)
sbc l
ld a, (de)
ld l, a
jr nz, a7
ld bc, 4ea1
ld c, (hl)
and (hl)
ld e, b
and c
ld d, b
and e
ld e, b
ld bc, 01a7
and c
ld b, 06
and (hl)
dec bc
and c
ld b, a0
ld b, 06
ld b, 06
ld b, 06
ld b, 06
and e
ld bc, 7eb6
inc hl
ld a, a
or (hl)
ld a, (hl)
ld l, (hl)
ld a, a
rst 38
rst 38
adc h
ld a, (hl)
ld (ff00 + 7e), a
ld c, d
ld a, a
ld (ff00 + 7e), a
sub c
ld a, a
rst 38
rst 38
sbc b
ld a, (hl)
or 7e
ld e, h
ld a, a
or 7e
xor c
ld a, a
rst 38
rst 38
and h
ld a, (hl)
inc c
ld a, a
rst 38
rst 38
or b
ld a, (hl)
sbc l
add a, d
nop
add a, b
and d
ld d, h
and c
ld d, h
ld d, h
ld d, h
ld c, d
ld b, (hl)
ld c, d
and d
ld d, h
and c
ld d, h
ld d, h
ld d, h
ld e, b
ld e, h
ld e, b
and d
ld d, h
and c
ld d, h
ld d, h
ld e, b
ld d, h
ld d, d
ld d, h
and c
ld e, b
ld e, h
ld e, b
ld e, h
and d
ld e, b
and c
ld d, (hl)
ld e, b
nop
sbc l
ld h, d
nop
add a, b
and d
ld bc, 0144
ld b, b
ld bc, 0144
ld b, (hl)
ld bc, 0144
ld b, h
ld bc, 0140
ld b, b
nop
sbc l
ld a, (de)
ld l, a
jr nz, a2
ld d, h
ld d, h
ld c, d
ld d, d
ld d, h
ld d, h
ld c, d
ld e, b
ld d, h
ld d, h
ld d, d
ld d, h
ld c, (hl)
ld d, h
ld c, d
ld d, d
nop
and d
ld b, 0b
ld b, 0b
ld b, 0b
ld b, 0b
ld b, 0b
ld b, 0b
ld b, a1
dec bc
dec bc
ld b, a2
dec bc
and c
ld b, 00
and d
ld e, (hl)
and c
ld e, (hl)
ld e, (hl)
ld e, (hl)
ld d, h
ld d, b
ld d, h
and d
ld e, (hl)
and c
ld e, (hl)
ld e, (hl)
ld e, (hl)
ld h, d
ld h, (hl)
ld h, d
and d
ld e, (hl)
and c
ld e, (hl)
ld e, h
and d
ld e, b
and c
ld e, b
ld d, h
and c
ld d, d
ld d, h
ld d, d
ld d, h
and d
ld d, d
and c
ld c, (hl)
ld d, d
nop
and d
ld bc, 0146
ld c, d
ld bc, 0146
ld c, d
ld bc, 0146
ld b, (hl)
ld bc, 0146
ld b, (hl)
nop
and d
ld b, (hl)
ld d, h
ld d, h
ld d, h
ld b, (hl)
ld d, h
ld d, h
ld d, h
ld b, (hl)
ld d, h
ld d, d
ld e, b
ld b, h
ld d, d
ld c, d
ld e, b
nop
and d
ld h, d
and c
ld h, d
ld h, d
ld h, d
ld e, (hl)
ld e, d
ld e, (hl)
and d
ld h, d
and c
ld h, d
ld h, d
ld h, d
ld e, (hl)
ld e, d
ld e, (hl)
and d
ld h, d
and c
ld c, d
ld c, (hl)
and d
ld d, d
and c
ld c, d
ld e, h
and e
ld e, b
and c
ld d, h
and (hl)
ld l, h
nop
and d
ld bc, 014a
ld c, d
ld bc, 014a
ld c, d
ld bc, 46a1
ld b, (hl)
and d
ld b, (hl)
and c
ld b, (hl)
ld b, (hl)
and e
ld b, (hl)
and d
ld b, h
ld bc, a200
ld b, d
ld e, d
ld d, b
ld e, d
ld b, d
ld e, d
ld d, b
ld e, d
ld c, d
and c
ld d, d
ld d, d
and d
ld d, d
and c
ld d, d
ld d, d
and e
ld d, d
and d
ld d, h
ld bc, 0000
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
jp 6553
jp 69d6
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
