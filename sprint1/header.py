import codecs
with open("Tetris.gb",'rb') as f:
    print("Restart $00 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $08 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $10 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $18 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $20 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $28 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $30 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Restart $38 Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Vertical Blank Interrupt Start Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Timer Overflow Interrupt Start Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("Serial Transfer Completion Interrupt Start Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    print("High-to-Low of P10-P13 Interrupt Start Address " + str(codecs.encode(f.read(8), 'hex_codec')))
    f.read(160) #Bytes 96 - 256 are nops
    print("Begining execution point " + str(codecs.encode(f.read(4), 'hex_codec')))
    if(codecs.encode(f.read(48), 'hex_codec') == b'ceed6666cc0d000b03730083000c000d0008111f8889000edccc6ee6ddddd999bbbb67636e0eecccdddc999fbbb9333e'):
        print("Nintendo scrolling graphic correct")
    else:
        print("Nintendo scrolling graphic error")
    print("Title of the game: ", str(codecs.decode(f.read(15), 'utf-8')))
    print("GBC if b'80'" + str(codecs.encode(f.read(1), 'hex_codec')))
    f.read(3) # Irrelevant
    print("Cartridge type "+str(codecs.encode(f.read(1), 'hex_codec')))
    print("ROM Size "+str(codecs.encode(f.read(1), 'hex_codec')))
    print("RAM Size "+str(codecs.encode(f.read(1), 'hex_codec')))
    print("Non-Japanese? "+str(codecs.encode(f.read(1), 'hex_codec')))
    print("Licence Code "+str(codecs.encode(f.read(1), 'hex_codec')))
    print("Mask/Header/Global "+str(codecs.encode(f.read(4), 'hex_codec')))
           
    


#[['NOP', 0, 'No Operation'], [], [], [], [], [], ['LD', 1, 'B into n'], [], [], [], [], [], [], [], ['LD', 1, 'C into n'], [], [], [], [], [], [], [], ['LD', 1, 'D into n'], [], [], [], [], [], [], [], ['LD', 1, 'E into n'], [], [], [], [], [], [], [], ['LD', 1, 'H into n'], [], [], [], [], [], [], [], ['LD', 1, 'L into n'], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], ['LD', 1, 'B into B'], ['LD', 1, 'C into B'], ['LD', 1, 'D into B'], ['LD', 1, 'E into B'], ['LD', 1, 'H into B'], ['LD', 1, 'L into B'], ['LD', 2, '(HL) into B'], ['LD', 1, 'A into B'], ['LD', 1, 'B into C'], ['LD', 1, 'C into C'], ['LD', 1, 'D into C'], ['LD', 1, 'E into C'], ['LD', 1, 'H into C'], ['LD', 1, 'L into C'], ['LD', 2, '(HL) into C'], ['LD', 1, 'A into C'], ['LD', 1, 'B into D'], ['LD', 1, 'C into D'], ['LD', 1, 'D into D'], ['LD', 1, 'E into D'], ['LD', 1, 'H into D'], ['LD', 1, 'L into D'], ['LD', 2, '(HL) into D'], ['LD', 1, 'A into D'], ['LD', 1, 'B into E'], ['LD', 1, 'C into E'], ['LD', 1, 'D into E'], ['LD', 1, 'E into E'], ['LD', 1, 'H into E'], ['LD', 1, 'L into E'], ['LD', 2, '(HL) into E'], ['LD', 1, 'A into E'], ['LD', 1, 'B into H'], ['LD', 1, 'C into H'], ['LD', 1, 'D into H'], ['LD', 1, 'E into H'], ['LD', 1, 'H into H'], ['LD', 1, 'L into H'], ['LD', 2, '(HL) into H'], ['LD', 1, 'A into H'], ['LD', 1, 'B into L'], ['LD', 1, 'C into L'], ['LD', 1, 'D into L'], ['LD', 1, 'E into L'], ['LD', 1, 'H into L'], ['LD', 1, 'L into L'], ['LD', 2, '(HL) into L'], ['LD', 1, 'A into L'], ['LD', 1, 'B into (HL)'], ['LD', 1, 'C into (HL)'], ['LD', 1, 'D into (HL)'], ['LD', 1, 'E into (HL)'], ['LD', 1, 'H into (HL)'], ['LD', 1, 'L into (HL)'], ['Halt', 0, 'Halt'], ['LD', 1, 'A into (HL)'], ['LD', 1, 'B into A'], ['LD', 1, 'C into A'], ['LD', 1, 'D into A'], ['LD', 1, 'E into A'], ['LD', 1, 'H into A'], ['LD', 1, 'L into A'], ['LD', 2, '(HL) into A'], ['LD', 1, 'A into A'], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]
