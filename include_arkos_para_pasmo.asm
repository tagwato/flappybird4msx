MUSICSPACE
UNTITLED_START
PLY_AKG_OFFSET2B
PLY_AKG_OFFSET1B
PLY_AKG_OPCODE_OR_A
PLY_AKG_OPCODE_ADD_HL_BC_MSB db 65
PLY_AKG_FULL_INIT_CODE
PLY_AKG_USE_HOOKS
PLY_AKG_STOP_SOUNDS db 84
PLY_AKG_BITFORSOUND
PLY_AKG_SOUNDEFFECTDATA_OFFSETINVERTEDVOLUME db 50
PLY_AKG_SOUNDEFFECTDATA_OFFSETCURRENTSTEP db 48
PLY_AKG_BITFORNOISE equ $+1
PLY_AKG_SOUNDEFFECTDATA_OFFSETSPEED dw UNTITLED_ARPEGGIOTABLE
    dw UNTITLED_ARPEGGIOTABLE
PLY_AKG_OPCODE_ADD_HL_BC_LSB equ $+1
    dw UNTITLED_ARPEGGIOTABLE
    dw UNTITLED_EFFECTBLOCKTABLE
    dw UNTITLED_SUBSONG0_START
UNTITLED_ARPEGGIOTABLE
UNTITLED_PITCHTABLE
UNTITLED_INSTRUMENTTABLE dw UNTITLED_EMPTYINSTRUMENT
    dw UNTITLED_INSTRUMENT1
    dw UNTITLED_INSTRUMENT2
    dw UNTITLED_INSTRUMENT3
    dw UNTITLED_INSTRUMENT4
    dw UNTITLED_INSTRUMENT5
    dw UNTITLED_INSTRUMENT6
    dw UNTITLED_INSTRUMENT7
    dw UNTITLED_INSTRUMENT8
    dw UNTITLED_INSTRUMENT9
PLY_AKG_OPCODE_INC_HL equ $+1
    dw UNTITLED_INSTRUMENT10
UNTITLED_EMPTYINSTRUMENT db 0
UNTITLED_EMPTYINSTRUMENT_LOOP db 0
    db 6
UNTITLED_INSTRUMENT1 db 1
    db 105
    db 65
    db 244
PLY_AKG_OPCODE_DEC_HL db 121
    db 64
    db 244
    db 113
    db 96
    db 244
    db 255
    db 255
    db 105
    db 64
    db 244
    db 97
    db 64
    db 244
    db 89
    db 96
    db 244
    db 1
    db 0
    db 81
    db 64
    db 244
    db 73
PLY_AKG_OPCODE_SBC_HL_BC_LSB db 64
    db 244
    db 65
    db 96
    db 244
    db 255
    db 255
    db 57
    db 64
    db 244
    db 49
    db 64
    db 244
    db 41
    db 96
    db 244
    db 1
    db 0
    db 33
    db 64
    db 244
    db 161
    db 25
    db 32
    db 255
    db 255
    db 153
    db 17
    db 32
    db 1
    db 0
    db 145
    db 137
    db 9
    db 32
    db 255
    db 255
    db 6
UNTITLED_INSTRUMENT2 db 1
    db 121
    db 70
    db 12
    db 121
    db 64
    db 10
    db 105
    db 64
    db 9
    db 105
    db 64
    db 8
    db 89
    db 64
    db 5
    db 89
    db 64
    db 4
    db 73
    db 64
    db 3
    db 57
    db 64
    db 2
    db 57
    db 64
    db 1
    db 49
    db 64
    db 1
    db 177
    db 6
UNTITLED_INSTRUMENT3 db 1
    db 240
    db 4
    db 121
    db 64
    db 15
    db 121
    db 64
    db 8
    db 249
    db 6
UNTITLED_INSTRUMENT4 db 1
UNTITLED_INSTRUMENT4_LOOP db 34
    db 131
    db 7
    dw UNTITLED_INSTRUMENT4_LOOP
UNTITLED_INSTRUMENT5 db 1
    db 249
    db 121
    db 32
    db 255
    db 255
    db 241
    db 113
    db 32
    db 1
    db 0
    db 233
    db 105
    db 32
    db 255
    db 255
    db 225
    db 97
    db 32
    db 1
    db 0
    db 217
    db 89
    db 32
    db 255
    db 255
    db 209
    db 81
    db 32
    db 1
    db 0
    db 201
    db 73
    db 32
    db 255
    db 255
    db 193
    db 57
    db 32
    db 1
    db 0
PLY_AKG_OPCODE_JP db 177
    db 41
    db 32
PLY_AKG_OPCODE_ADD_A_IMMEDIATE db 255
    db 255
    db 161
    db 25
    db 32
    db 1
    db 0
    db 145
    db 9
    db 32
    db 255
    db 255
    db 0
    db 6
UNTITLED_INSTRUMENT6 db 1
    db 249
PLY_AKG_OPCODE_SUB_IMMEDIATE db 121
    db 64
    db 3
    db 113
    db 64
    db 7
    db 241
    db 105
    db 64
    db 3
    db 105
    db 64
    db 7
    db 225
    db 97
    db 64
    db 3
    db 89
    db 64
    db 7
    db 217
    db 81
    db 64
PLY_AKG_OPCODE_SBC_HL_BC_MSB db 3
    db 81
    db 64
    db 7
    db 201
    db 73
    db 64
    db 3
    db 65
    db 64
    db 7
    db 193
    db 57
    db 64
    db 3
    db 57
    db 64
    db 7
PLY_AKG_OPCODE_SCF db 177
    db 49
    db 64
    db 3
    db 41
    db 64
    db 7
    db 169
    db 33
    db 64
    db 3
    db 33
    db 64
    db 7
    db 153
    db 25
    db 64
    db 3
    db 17
    db 64
    db 7
    db 145
    db 9
    db 64
    db 3
    db 6
UNTITLED_INSTRUMENT7 db 1
    db 249
    db 105
    db 64
    db 3
    db 89
    db 64
    db 7
    db 81
    db 64
    db 3
    db 201
    db 65
    db 64
    db 3
    db 241
    db 97
    db 64
    db 3
    db 81
    db 64
    db 7
    db 73
    db 64
    db 3
    db 193
    db 57
    db 64
    db 3
    db 233
    db 89
    db 64
    db 3
    db 73
    db 64
    db 7
    db 65
    db 64
    db 3
    db 185
    db 49
    db 64
    db 3
    db 6
UNTITLED_INSTRUMENT8 db 1
    db 232
    db 4
    db 121
    db 64
    db 11
    db 113
    db 64
    db 9
    db 113
    db 64
    db 7
    db 233
    db 225
    db 6
UNTITLED_INSTRUMENT9 db 1
    db 121
    db 64
    db 12
    db 121
    db 32
    db 255
    db 255
    db 121
    db 32
    db 255
    db 255
    db 113
    db 32
    db 255
    db 255
    db 241
    db 241
    db 241
    db 233
    db 233
    db 233
    db 105
    db 32
    db 255
    db 255
    db 97
    db 32
    db 255
    db 255
    db 97
    db 32
    db 255
    db 255
    db 225
    db 225
    db 217
    db 209
    db 209
    db 209
    db 73
    db 32
    db 255
    db 255
    db 73
    db 32
    db 255
    db 255
    db 73
    db 32
    db 255
    db 255
UNTITLED_INSTRUMENT9_LOOP db 193
    db 193
    db 193
    db 193
    db 193
    db 65
    db 32
    db 255
    db 255
    db 65
    db 32
    db 255
    db 255
    db 65
    db 32
    db 255
    db 255
    db 7
    dw UNTITLED_INSTRUMENT9_LOOP
UNTITLED_INSTRUMENT10 db 1
    db 121
    db 64
    db 7
    db 121
    db 64
    db 12
    db 113
    db 64
    db 15
    db 113
    db 64
    db 7
    db 105
    db 64
    db 12
    db 105
    db 64
    db 15
    db 97
    db 64
    db 7
    db 97
    db 64
    db 12
    db 89
    db 64
    db 15
    db 89
    db 64
    db 7
    db 81
    db 64
    db 12
    db 81
    db 64
    db 15
    db 73
    db 64
    db 7
    db 73
    db 64
    db 12
    db 65
    db 64
    db 15
    db 65
    db 64
    db 7
    db 57
    db 64
    db 12
    db 57
    db 64
    db 15
    db 49
    db 64
    db 7
    db 49
    db 64
    db 12
    db 41
    db 64
    db 15
    db 41
    db 64
    db 7
    db 33
    db 64
    db 12
    db 33
    db 64
    db 15
    db 25
    db 64
    db 7
    db 25
    db 64
    db 12
    db 17
    db 64
    db 15
    db 17
    db 64
    db 7
    db 9
    db 64
    db 12
    db 6
UNTITLED_EFFECTBLOCKTABLE dw UNTITLED_EFFECTBLOCK_P4P0
    dw UNTITLED_EFFECTBLOCK_P4P3
    dw UNTITLED_EFFECTBLOCK_P4P2
    dw UNTITLED_EFFECTBLOCK_P4P4
    dw UNTITLED_EFFECTBLOCK_P4P1
    dw UNTITLED_EFFECTBLOCK_P20P128P0
    dw UNTITLED_EFFECTBLOCK_P18P0P2
    dw UNTITLED_EFFECTBLOCK_P4P5
    dw UNTITLED_EFFECTBLOCK_P4P6
    dw UNTITLED_EFFECTBLOCK_P4P7
    dw UNTITLED_EFFECTBLOCK_P4P8
    dw UNTITLED_EFFECTBLOCK_P20P128P1
    dw UNTITLED_EFFECTBLOCK_P18P0P1
    dw UNTITLED_EFFECTBLOCK_P20P0P2
UNTITLED_EFFECTBLOCK_P4P0 db 4
    db 0
UNTITLED_EFFECTBLOCK_P4P1 db 4
    db 1
UNTITLED_EFFECTBLOCK_P4P2 db 4
    db 2
UNTITLED_EFFECTBLOCK_P4P3 db 4
    db 3
UNTITLED_EFFECTBLOCK_P4P4 db 4
    db 4
UNTITLED_EFFECTBLOCK_P4P5 db 4
    db 5
UNTITLED_EFFECTBLOCK_P4P6 db 4
    db 6
UNTITLED_EFFECTBLOCK_P4P7 db 4
    db 7
UNTITLED_EFFECTBLOCK_P4P8 db 4
    db 8
UNTITLED_EFFECTBLOCK_P20P128P0 db 20
    db 128
    db 0
UNTITLED_EFFECTBLOCK_P20P128P1 db 20
    db 128
    db 1
UNTITLED_EFFECTBLOCK_P18P0P1 db 18
    db 0
    db 1
UNTITLED_EFFECTBLOCK_P18P0P2 db 18
    db 0
    db 2
UNTITLED_EFFECTBLOCK_P20P0P2 db 20
    db 0
    db 2
UNTITLED_SUBSONG0_START db 2
    db 0
    db 1
    db 2
    db 26
    db 6
    db 24
UNTITLED_SUBSONG0_LINKER dw UNTITLED_SUBSONG0_TRACK12
    dw UNTITLED_SUBSONG0_TRACK1
    dw UNTITLED_SUBSONG0_TRACK13
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK1
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
UNTITLED_SUBSONG0_LINKER_LOOP dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK9
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK10
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK4
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK5
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK11
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK6
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK7
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK7
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK14
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK15
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK15
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK3
    dw UNTITLED_SUBSONG0_TRACK7
    dw UNTITLED_SUBSONG0_TRACK8
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK15
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK1
    dw UNTITLED_SUBSONG0_TRACK3
    dw UNTITLED_SUBSONG0_TRACK6
    dw UNTITLED_SUBSONG0_TRACK8
    dw UNTITLED_SUBSONG0_LINKERBLOCK0
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK15
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK2
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK9
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK10
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK4
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK5
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK11
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK6
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK7
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK3
    dw UNTITLED_SUBSONG0_TRACK7
    dw UNTITLED_SUBSONG0_TRACK8
    dw UNTITLED_SUBSONG0_LINKERBLOCK3
    dw UNTITLED_SUBSONG0_TRACK0
    dw UNTITLED_SUBSONG0_TRACK14
    dw UNTITLED_SUBSONG0_TRACK2
    dw UNTITLED_SUBSONG0_LINKERBLOCK4
    dw UNTITLED_SUBSONG0_TRACK3
    dw UNTITLED_SUBSONG0_TRACK15
    dw UNTITLED_SUBSONG0_TRACK8
    dw UNTITLED_SUBSONG0_LINKERBLOCK4
    db 0
    db 0
    dw UNTITLED_SUBSONG0_LINKER_LOOP
UNTITLED_SUBSONG0_LINKERBLOCK0 db 24
    db 0
    db 0
    db 0
    dw UNTITLED_SUBSONG0_SPEEDTRACK0
    dw UNTITLED_SUBSONG0_EVENTTRACK0
UNTITLED_SUBSONG0_LINKERBLOCK1 db 24
    db 251
    db 251
    db 7
    dw UNTITLED_SUBSONG0_SPEEDTRACK0
    dw UNTITLED_SUBSONG0_EVENTTRACK0
UNTITLED_SUBSONG0_LINKERBLOCK2 db 24
    db 7
    db 251
    db 251
    dw UNTITLED_SUBSONG0_SPEEDTRACK0
    dw UNTITLED_SUBSONG0_EVENTTRACK0
UNTITLED_SUBSONG0_LINKERBLOCK3 db 24
    db 251
    db 251
    db 251
    dw UNTITLED_SUBSONG0_SPEEDTRACK0
    dw UNTITLED_SUBSONG0_EVENTTRACK0
UNTITLED_SUBSONG0_LINKERBLOCK4 db 24
    db 249
    db 249
    db 249
    dw UNTITLED_SUBSONG0_SPEEDTRACK0
    dw UNTITLED_SUBSONG0_EVENTTRACK0
UNTITLED_SUBSONG0_TRACK0 db 221
    db 10
    db 0
    db 60
    db 240
    db 1
    db 1
    db 233
    db 10
    db 3
    db 60
    db 245
    db 1
    db 1
    db 221
    db 10
    db 4
    db 60
    db 238
    db 1
    db 1
    db 233
    db 10
    db 3
    db 60
    db 240
    db 1
    db 1
    db 228
    db 6
    db 4
    db 60
    db 236
    db 1
    db 1
    db 240
    db 6
    db 3
    db 60
    db 238
    db 1
    db 1
    db 228
    db 6
    db 4
    db 60
    db 243
    db 1
    db 1
    db 240
    db 6
    db 3
    db 60
    db 176
    db 1
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK1 db 128
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK2 db 199
    db 3
    db 0
    db 60
    db 221
    db 10
    db 2
    db 197
    db 2
    db 0
    db 60
    db 221
    db 10
    db 2
    db 199
    db 3
    db 0
    db 60
    db 221
    db 10
    db 2
    db 255
    db 19
    db 8
    db 0
    db 60
    db 228
    db 6
    db 2
    db 199
    db 3
    db 0
    db 60
    db 133
    db 2
    db 5
    db 60
    db 228
    db 6
    db 2
    db 199
    db 3
    db 0
    db 60
    db 228
    db 6
    db 2
    db 255
    db 19
    db 8
    db 0
    db 60
    db 197
    db 2
    db 2
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK3 db 221
    db 10
    db 0
    db 60
    db 240
    db 1
    db 1
    db 233
    db 10
    db 3
    db 60
    db 245
    db 1
    db 1
    db 221
    db 10
    db 4
    db 60
    db 238
    db 1
    db 1
    db 233
    db 10
    db 3
    db 60
    db 240
    db 1
    db 1
    db 228
    db 6
    db 4
    db 60
    db 236
    db 1
    db 1
    db 240
    db 6
    db 3
    db 60
    db 238
    db 1
    db 1
    db 228
    db 6
    db 4
    db 60
    db 243
    db 1
    db 1
    db 240
    db 6
    db 3
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK4 db 133
    db 4
    db 8
    db 10
    db 12
    db 15
    db 16
    db 17
    db 60
    db 209
    db 5
    db 0
    db 60
    db 69
    db 3
    db 84
    db 0
    db 60
    db 72
    db 3
    db 79
    db 0
    db 60
    db 67
    db 3
    db 81
    db 0
    db 216
    db 9
    db 4
    db 60
    db 88
    db 2
    db 41
    db 108
    db 4
    db 110
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK5 db 240
    db 9
    db 0
    db 60
    db 124
    db 6
    db 53
    db 62
    db 48
    db 62
    db 46
    db 60
    db 108
    db 1
    db 110
    db 0
    db 60
    db 124
    db 12
    db 48
    db 62
    db 157
    db 5
    db 145
    db 4
    db 160
    db 5
    db 34
    db 133
    db 4
    db 128
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK6 db 164
    db 5
    db 60
    db 24
    db 17
    db 60
    db 24
    db 60
    db 133
    db 4
    db 145
    db 5
    db 29
    db 60
    db 32
    db 27
    db 60
    db 143
    db 4
    db 150
    db 5
    db 60
    db 23
    db 24
    db 60
    db 167
    db 9
    db 62
    db 124
    db 13
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK7 db 228
    db 9
    db 0
    db 62
    db 133
    db 4
    db 60
    db 169
    db 7
    db 145
    db 4
    db 60
    db 172
    db 9
    db 60
    db 124
    db 5
    db 43
    db 62
    db 128
    db 0
    db 162
    db 9
    db 62
    db 131
    db 4
    db 60
    db 128
    db 0
    db 167
    db 9
    db 124
    db 5
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK8 db 199
    db 3
    db 0
    db 60
    db 221
    db 10
    db 2
    db 197
    db 2
    db 0
    db 60
    db 221
    db 10
    db 2
    db 199
    db 3
    db 0
    db 60
    db 221
    db 10
    db 2
    db 255
    db 19
    db 8
    db 0
    db 60
    db 228
    db 6
    db 2
    db 199
    db 3
    db 0
    db 60
    db 133
    db 2
    db 5
    db 60
    db 228
    db 6
    db 2
    db 199
    db 3
    db 0
    db 60
    db 228
    db 6
    db 2
    db 255
    db 19
    db 8
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK9 db 133
    db 4
    db 8
    db 10
    db 12
    db 15
    db 16
    db 17
    db 62
    db 5
    db 62
    db 15
    db 62
    db 3
    db 62
    db 12
    db 62
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK10 db 133
    db 4
    db 8
    db 10
    db 12
    db 15
    db 16
    db 17
    db 60
    db 209
    db 5
    db 0
    db 60
    db 69
    db 3
    db 84
    db 0
    db 60
    db 72
    db 3
    db 79
    db 0
    db 60
    db 67
    db 3
    db 81
    db 0
    db 140
    db 4
    db 60
    db 124
    db 11
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK11 db 240
    db 9
    db 0
    db 60
    db 124
    db 6
    db 53
    db 62
    db 48
    db 62
    db 46
    db 60
    db 108
    db 1
    db 110
    db 0
    db 60
    db 124
    db 5
    db 41
    db 62
    db 145
    db 4
    db 60
    db 128
    db 0
    db 133
    db 4
    db 60
    db 128
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK12 db 221
    db 10
    db 10
    db 60
    db 240
    db 1
    db 9
    db 169
    db 10
    db 60
    db 245
    db 1
    db 8
    db 157
    db 10
    db 60
    db 238
    db 1
    db 7
    db 233
    db 10
    db 3
    db 60
    db 240
    db 1
    db 1
    db 228
    db 6
    db 2
    db 60
    db 236
    db 1
    db 7
    db 240
    db 6
    db 3
    db 60
    db 238
    db 1
    db 1
    db 228
    db 6
    db 2
    db 60
    db 243
    db 1
    db 1
    db 240
    db 6
    db 3
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK13 db 199
    db 3
    db 10
    db 60
    db 221
    db 10
    db 9
    db 133
    db 2
    db 60
    db 221
    db 10
    db 8
    db 135
    db 3
    db 60
    db 221
    db 10
    db 7
    db 255
    db 19
    db 8
    db 3
    db 60
    db 228
    db 6
    db 1
    db 199
    db 3
    db 2
    db 60
    db 197
    db 2
    db 7
    db 69
    db 3
    db 60
    db 228
    db 6
    db 1
    db 199
    db 3
    db 2
    db 60
    db 164
    db 6
    db 255
    db 19
    db 8
    db 0
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK14 db 240
    db 9
    db 0
    db 62
    db 133
    db 4
    db 60
    db 240
    db 9
    db 2
    db 145
    db 4
    db 60
    db 255
    db 80
    db 9
    db 0
    db 60
    db 124
    db 5
    db 55
    db 124
    db 2
    db 124
    db 3
    db 124
    db 8
    db 110
    db 0
    db 62
    db 131
    db 4
    db 60
    db 128
    db 0
    db 179
    db 9
    db 124
    db 5
    db 61
    db 127
UNTITLED_SUBSONG0_TRACK15 db 145
    db 4
    db 62
    db 5
    db 128
    db 0
    db 133
    db 4
    db 17
    db 62
    db 5
    db 60
    db 124
    db 6
    db 15
    db 62
    db 3
    db 128
    db 0
    db 131
    db 4
    db 15
    db 62
    db 3
    db 61
    db 127
UNTITLED_SUBSONG0_SPEEDTRACK0 db 255
UNTITLED_SUBSONG0_EVENTTRACK0 db 255
SOUNDEFFECTSSPACE
MYRING1SOUND_SOUNDEFFECTS dw MYRING1SOUND_SOUNDEFFECTS_SOUND1
MYRING1SOUND_SOUNDEFFECTS_SOUND1 db 0
    db 61
    db 90
    db 0
    db 37
    db 115
    db 0
    db 61
    db 140
    db 0
    db 57
    db 133
    db 0
    db 53
    db 126
    db 0
    db 49
    db 119
    db 0
    db 45
    db 112
    db 0
    db 41
    db 105
    db 0
    db 37
    db 98
    db 0
    db 33
    db 91
    db 0
    db 29
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 25
    db 91
    db 0
    db 21
    db 89
    db 0
    db 21
    db 89
    db 0
    db 21
    db 89
    db 0
    db 21
    db 89
    db 0
    db 21
    db 89
    db 0
    db 21
    db 89
    db 0
MYRING1SOUND_SOUNDEFFECTS_SOUND1_LOOP db 0
    db 12
    dw MYRING1SOUND_SOUNDEFFECTS_SOUND1_LOOP
PLY_AKG_START jp PLY_AKG_INIT
    jp PLY_AKG_PLAY
    jp PLY_AKG_INITTABLEJP_END
PLY_AKG_INITSOUNDEFFECTS ld (PLY_AKG_PTSOUNDEFFECTTABLE),hl
    ret 
PLY_AKG_PLAYSOUNDEFFECT dec a
    ld hl,(PLY_AKG_PTSOUNDEFFECTTABLE)
    ld e,a
    ld d,0
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
    ld a,(de)
    inc de
    ex af,af'
    ld a,b
    ld hl,PLY_AKG_CHANNEL1_SOUNDEFFECTDATA
    ld b,0
    sla c
    sla c
    sla c
    add hl,bc
    ld (hl),e
    inc hl
    ld (hl),d
    inc hl
    ld (hl),a
    inc hl
    ld (hl),0
    inc hl
    ex af,af'
    ld (hl),a
    ret 
PLY_AKG_STOPSOUNDEFFECTFROMCHANNEL add a,a
    add a,a
    add a,a
    ld e,a
    ld d,0
    ld hl,PLY_AKG_CHANNEL1_SOUNDEFFECTDATA
    add hl,de
    ld (hl),d
    inc hl
    ld (hl),d
    ret 
PLY_AKG_PLAYSOUNDEFFECTSSTREAM rla 
    rla 
    ld ix,PLY_AKG_CHANNEL1_SOUNDEFFECTDATA
    ld iy,PLY_AKG_PSGREG8
    ld hl,PLY_AKG_PSGREG01_INSTR
    exx
    ld c,a
    call PLY_AKG_PSES_PLAY
    ld ix,PLY_AKG_CHANNEL2_SOUNDEFFECTDATA
    ld iy,PLY_AKG_PSGREG9_10_INSTR
    exx
    ld hl,PLY_AKG_PSGREG23_INSTR
    exx
    srl c
    call PLY_AKG_PSES_PLAY
    ld ix,PLY_AKG_CHANNEL3_SOUNDEFFECTDATA
    ld iy,PLY_AKG_PSGREG10
    exx
    ld hl,PLY_AKG_PSGREG45_INSTR
    exx
    scf
    rr c
    call PLY_AKG_PSES_PLAY
    ld a,c
    ret 
PLY_AKG_PSES_PLAY ld l,(ix+0)
    ld h,(ix+1)
    ld a,l
    or h
    ret z
PLY_AKG_PSES_READFIRSTBYTE ld a,(hl)
    inc hl
    ld b,a
    rra 
    jr c,PLY_AKG_PSES_SOFTWAREORSOFTWAREANDHARDWARE
    rra 
    jr c,PLY_AKG_PSES_HARDWAREONLY
    rra 
    jr c,PLY_AKG_PSES_S_ENDORLOOP
    call PLY_AKG_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKG_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    set 2,c
    jr PLY_AKG_PSES_SAVEPOINTERANDEXIT
PLY_AKG_PSES_S_ENDORLOOP rra 
    jr c,PLY_AKG_PSES_S_LOOP
    xor a
    ld (ix+0),a
    ld (ix+1),a
    ret 
PLY_AKG_PSES_S_LOOP ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jr PLY_AKG_PSES_READFIRSTBYTE
PLY_AKG_PSES_SAVEPOINTERANDEXIT ld a,(ix+3)
    cp (ix+4)
    jr c,PLY_AKG_PSES_NOTREACHED
    ld (ix+3),0
    db 221
    db 117
    db 0
    db 221
    db 116
    db 1
    ret 
PLY_AKG_PSES_NOTREACHED inc (ix+3)
    ret 
PLY_AKG_PSES_HARDWAREONLY call PLY_AKG_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    set 2,c
    jr PLY_AKG_PSES_SAVEPOINTERANDEXIT
PLY_AKG_PSES_SOFTWAREORSOFTWAREANDHARDWARE rra 
    jr c,PLY_AKG_PSES_SOFTWAREANDHARDWARE
    call PLY_AKG_PSES_MANAGEVOLUMEFROMA_FILTER4BITS
    rl b
    call PLY_AKG_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    res 2,c
    call PLY_AKG_PSES_READSOFTWAREPERIOD
    jr PLY_AKG_PSES_SAVEPOINTERANDEXIT
PLY_AKG_PSES_SOFTWAREANDHARDWARE call PLY_AKG_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE
    call PLY_AKG_PSES_READSOFTWAREPERIOD
    res 2,c
    jr PLY_AKG_PSES_SAVEPOINTERANDEXIT
PLY_AKG_PSES_SHARED_READRETRIGHARDWAREENVPERIODNOISE rra 
    jr nc,PLY_AKG_PSES_H_AFTERRETRIG
    ld d,a
    ld a,255
    ld (PLY_AKG_PSGREG13_OLDVALUE),a
    ld a,d
PLY_AKG_PSES_H_AFTERRETRIG and 7
    add a,8
    ld (PLY_AKG_PSGREG13_INSTR),a
    rl b
    call PLY_AKG_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL
    call PLY_AKG_PSES_READHARDWAREPERIOD
    ld a,16
    jp PLY_AKG_PSES_MANAGEVOLUMEFROMA_HARD
PLY_AKG_PSES_READNOISEIFNEEDEDANDOPENORCLOSENOISECHANNEL jr c,PLY_AKG_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE
    set 5,c
    ret 
PLY_AKG_PSES_READNOISEANDOPENNOISECHANNEL_OPENNOISE ld a,(hl)
    ld (PLY_AKG_PSGREG6_8_INSTR),a
    inc hl
    res 5,c
    ret 
PLY_AKG_PSES_READHARDWAREPERIOD ld a,(hl)
    ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR),a
    inc hl
    ld a,(hl)
    ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR+1),a
    inc hl
    ret 
PLY_AKG_PSES_READSOFTWAREPERIOD ld a,(hl)
    inc hl
    exx
    ld (hl),a
    inc hl
    exx
    ld a,(hl)
    inc hl
    exx
    ld (hl),a
    exx
    ret 
PLY_AKG_PSES_MANAGEVOLUMEFROMA_FILTER4BITS and 15
PLY_AKG_PSES_MANAGEVOLUMEFROMA_HARD sub (ix+2)
    jr nc,PLY_AKG_PSES_MVFA_NOOVERFLOW
    xor a
PLY_AKG_PSES_MVFA_NOOVERFLOW ld (iy+0),a
    ret 
PLY_AKG_INIT ld de,4
    add hl,de
    ld de,PLY_AKG_ARPEGGIOSTABLE
    ldi
    ldi
    ld de,PLY_AKG_PITCHESTABLE
    ldi
    ldi
    ld de,PLY_AKG_INSTRUMENTSTABLE
    ldi
    ldi
    ld c,(hl)
    inc hl
    ld b,(hl)
    inc hl
    ld (PLY_AKG_CHANNEL_READEFFECTS_EFFECTBLOCKS1),bc
    add a,a
    ld e,a
    ld d,0
    add hl,de
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld de,5
    add hl,de
    ld de,PLY_AKG_CURRENTSPEED
    ldi
    ld de,PLY_AKG_BASENOTEINDEX
    ldi
    ld (PLY_AKG_READLINKER_PTLINKER),hl
    ld hl,PLY_AKG_INITTABLE0
    ld bc,3584
    call PLY_AKG_INIT_READWORDSANDFILL
    inc c
    ld hl,PLY_AKG_INITTABLE0_END
    ld b,3
    call PLY_AKG_INIT_READWORDSANDFILL
    ld hl,PLY_AKG_INITTABLE1_END
    ld bc,3328
    call PLY_AKG_INIT_READWORDSANDFILL
    ld hl,PLY_AKG_INITTABLEORA_END
    ld bc,3267
    call PLY_AKG_INIT_READWORDSANDFILL
    ld a,255
    ld (PLY_AKG_PSGREG13_OLDVALUE),a
    ld hl,(PLY_AKG_INSTRUMENTSTABLE)
    ld e,(hl)
    inc hl
    ld d,(hl)
    ex de,hl
    inc hl
    ld (PLY_AKG_EMPTYINSTRUMENTDATAPT),hl
    ld (PLY_AKG_CHANNEL1_PTINSTRUMENT),hl
    ld (PLY_AKG_CHANNEL2_PTINSTRUMENT),hl
    ld (PLY_AKG_CHANNEL3_PTINSTRUMENT),hl
    xor a
    ld (PLY_AKG_CHANNEL1_PITCHTRACK+1),a
    ld hl,PLY_AKG_CHANNEL1_PITCHTRACKINTEGERADDORSUBRETURN
    ld (PLY_AKG_CHANNEL1_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL1_PITCHTRACKADDORSBC_16BITSRETURN
    ld (PLY_AKG_CHANNEL1_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP
    ld (PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTRANDVALUERETURNJP+1),hl
    ld (PLY_AKG_CHANNEL2_PITCHTRACK+1),a
    ld hl,PLY_AKG_CHANNEL2_PITCHTRACKINTEGERADDORSUBRETURN
    ld (PLY_AKG_CHANNEL2_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL2_PITCHTRACKADDORSBC_16BITSRETURN
    ld (PLY_AKG_CHANNEL2_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP
    ld (PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTRANDVALUERETURNJP+1),hl
    ld (PLY_AKG_CHANNEL3_PITCHTRACK+1),a
    ld hl,PLY_AKG_CHANNEL3_PITCHTRACKINTEGERADDORSUBRETURN
    ld (PLY_AKG_CHANNEL3_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL3_PITCHTRACKADDORSBC_16BITSRETURN
    ld (PLY_AKG_CHANNEL3_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS+1),hl
    ld hl,PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP
    ld (PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTRANDVALUERETURNJP+1),hl
    ld hl,0
    ld (PLY_AKG_CHANNEL1_SOUNDEFFECTDATA),hl
    ld (PLY_AKG_CHANNEL2_SOUNDEFFECTDATA),hl
    ld (PLY_AKG_CHANNEL3_SOUNDEFFECTDATA),hl
    ret 
PLY_AKG_INIT_READWORDSANDFILL_LOOP ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld a,c
    ld (de),a
PLY_AKG_INIT_READWORDSANDFILL djnz PLY_AKG_INIT_READWORDSANDFILL_LOOP
    ret 
PLY_AKG_INITTABLE0 dw PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGERANDDECIMAL
    dw PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGER
    dw PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGERANDDECIMAL
    dw PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGER
    dw PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGERANDDECIMAL
    dw PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGER
    dw PLY_AKG_CHANNEL1_PITCH
    dw PLY_AKG_CHANNEL1_PITCH+1
    dw PLY_AKG_CHANNEL2_PITCH
    dw PLY_AKG_CHANNEL2_PITCH+1
    dw PLY_AKG_CHANNEL3_PITCH
    dw PLY_AKG_CHANNEL3_PITCH+1
    dw PLY_AKG_CHANNEL_RE_READNEXTEFFECTINBLOCK
PLY_AKG_INITTABLE0_END
PLY_AKG_INITTABLE1 dw PLY_AKG_PATTERNDECREASINGHEIGHT
    dw PLY_AKG_TICKDECREASINGCOUNTER
PLY_AKG_INITTABLE1_END
PLY_AKG_INITTABLEORA dw PLY_AKG_CHANNEL1_ISVOLUMESLIDE
    dw PLY_AKG_CHANNEL2_ISVOLUMESLIDE
    dw PLY_AKG_CHANNEL3_ISVOLUMESLIDE
    dw PLY_AKG_CHANNEL1_ISARPEGGIOTABLE
    dw PLY_AKG_CHANNEL2_ISARPEGGIOTABLE
    dw PLY_AKG_CHANNEL3_ISARPEGGIOTABLE
    dw PLY_AKG_CHANNEL1_ISPITCHTABLE
    dw PLY_AKG_CHANNEL2_ISPITCHTABLE
    dw PLY_AKG_CHANNEL3_ISPITCHTABLE
    dw PLY_AKG_CHANNEL1_ISPITCH
    dw PLY_AKG_CHANNEL2_ISPITCH
    dw PLY_AKG_CHANNEL3_ISPITCH
PLY_AKG_INITTABLEORA_END
PLY_AKG_INITTABLEJP dw PLY_AKG_CHANNEL1_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL2_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL3_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL1_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL2_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL3_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS
    dw PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTRANDVALUERETURNJP
    dw PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTRANDVALUERETURNJP
    dw PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTRANDVALUERETURNJP
    dw PLY_AKG_CHANNEL_READEFFECTS_ENDJUMPINSTRANDADDRESS
    dw PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS
PLY_AKG_INITTABLEJP_END
PLY_AKG_STOP ld (PLY_AKG_SAVESP),sp
    xor a
    ld l,a
    ld h,a
    ld (PLY_AKG_PSGREG8),a
    ld (PLY_AKG_PSGREG9_10_INSTR),hl
    ld a,191
    jp PLY_AKG_SENDPSGREGISTERS
PLY_AKG_PLAY ld (PLY_AKG_SAVESP),sp
    xor a
    ld (PLY_AKG_EVENT),a
    ld a,(PLY_AKG_TICKDECREASINGCOUNTER)
    dec a
    jp nz,PLY_AKG_SETSPEEDBEFOREPLAYSTREAMS
    ld a,(PLY_AKG_PATTERNDECREASINGHEIGHT)
    dec a
    jr nz,PLY_AKG_SETCURRENTLINEBEFOREREADLINE
PLY_AKG_READLINKER ld sp,(PLY_AKG_READLINKER_PTLINKER)
    pop hl
    ld a,l
    or h
    jr nz,PLY_AKG_READLINKER_NOLOOP
    pop hl
    ld sp,hl
    pop hl
PLY_AKG_READLINKER_NOLOOP ld (PLY_AKG_CHANNEL1_PTTRACK),hl
    pop hl
    ld (PLY_AKG_CHANNEL2_PTTRACK),hl
    pop hl
    ld (PLY_AKG_CHANNEL3_PTTRACK),hl
    pop hl
    ld (PLY_AKG_READLINKER_PTLINKER),sp
    ld sp,hl
    pop hl
    ld c,l
    ld a,h
    ld (PLY_AKG_CHANNEL1_SOUNDSTREAM_RELATIVEMODIFIERADDRESS),a
    pop hl
    ld a,l
    ld (PLY_AKG_CHANNEL2_PLAYINSTRUMENT_RELATIVEMODIFIERADDRESS),a
    ld a,h
    ld (PLY_AKG_CHANNEL3_SOUNDSTREAM_RELATIVEMODIFIERADDRESS),a
    pop hl
    ld (PLY_AKG_SPEEDTRACK_PTTRACK),hl
    pop hl
    ld (PLY_AKG_EVENTTRACK_PTTRACK),hl
    xor a
    ld (PLY_AKG_SPEEDTRACK_WAITCOUNTER),a
    ld (PLY_AKG_EVENTTRACK_WAITCOUNTER),a
    ld (PLY_AKG_CHANNEL1_WAITCOUNTER),a
    ld (PLY_AKG_CHANNEL2_WAITCOUNTER),a
    ld (PLY_AKG_CHANNEL3_WAITCOUNTER),a
    ld a,c
PLY_AKG_SETCURRENTLINEBEFOREREADLINE ld (PLY_AKG_PATTERNDECREASINGHEIGHT),a
PLY_AKG_READLINE ld a,(PLY_AKG_SPEEDTRACK_WAITCOUNTER)
    sub 1
    jr nc,PLY_AKG_SPEEDTRACK_MUSTWAIT
    ld hl,(PLY_AKG_SPEEDTRACK_PTTRACK)
    ld a,(hl)
    inc hl
    srl a
    jr c,PLY_AKG_SPEEDTRACK_STOREPOINTERANDWAITCOUNTER
    jr nz,PLY_AKG_SPEEDTRACK_NORMALVALUE
    ld a,(hl)
    inc hl
PLY_AKG_SPEEDTRACK_NORMALVALUE ld (PLY_AKG_CURRENTSPEED),a
    xor a
PLY_AKG_SPEEDTRACK_STOREPOINTERANDWAITCOUNTER ld (PLY_AKG_SPEEDTRACK_PTTRACK),hl
PLY_AKG_SPEEDTRACK_MUSTWAIT ld (PLY_AKG_SPEEDTRACK_WAITCOUNTER),a
PLY_AKG_SPEEDTRACK_END ld a,(PLY_AKG_EVENTTRACK_WAITCOUNTER)
    sub 1
    jr nc,PLY_AKG_EVENTTRACK_MUSTWAIT
    ld hl,(PLY_AKG_EVENTTRACK_PTTRACK)
    ld a,(hl)
    inc hl
    srl a
    jr c,PLY_AKG_EVENTTRACK_STOREPOINTERANDWAITCOUNTER
    jr nz,PLY_AKG_EVENTTRACK_NORMALVALUE
    ld a,(hl)
    inc hl
PLY_AKG_EVENTTRACK_NORMALVALUE ld (PLY_AKG_EVENT),a
    xor a
PLY_AKG_EVENTTRACK_STOREPOINTERANDWAITCOUNTER ld (PLY_AKG_EVENTTRACK_PTTRACK),hl
PLY_AKG_EVENTTRACK_MUSTWAIT ld (PLY_AKG_EVENTTRACK_WAITCOUNTER),a
PLY_AKG_EVENTTRACK_END ld a,(PLY_AKG_CHANNEL1_WAITCOUNTER)
    sub 1
    jr c,PLY_AKG_CHANNEL1_READTRACK
    ld (PLY_AKG_CHANNEL1_WAITCOUNTER),a
    jp PLY_AKG_CHANNEL1_READCELLEND
PLY_AKG_CHANNEL1_READTRACK ld hl,(PLY_AKG_CHANNEL1_PTTRACK)
    ld c,(hl)
    inc hl
    ld a,c
    and 63
    cp 60
    jr c,PLY_AKG_CHANNEL1_NOTE
    sub 60
    jp z,PLY_AKG_CHANNEL1_MAYBEEFFECTS
    dec a
    jr z,PLY_AKG_CHANNEL1_WAIT
    dec a
    jr z,PLY_AKG_CHANNEL1_SMALLWAIT
    ld a,(hl)
    inc hl
    jr PLY_AKG_CHANNEL1_AFTERNOTEKNOWN
PLY_AKG_CHANNEL1_SMALLWAIT ld a,c
    rlca 
    rlca 
    and 3
    inc a
    ld (PLY_AKG_CHANNEL1_WAITCOUNTER),a
    jr PLY_AKG_CHANNEL1_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL1_WAIT ld a,(hl)
    ld (PLY_AKG_CHANNEL1_WAITCOUNTER),a
    inc hl
    jr PLY_AKG_CHANNEL1_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL1_SAMEINSTRUMENT ld de,(PLY_AKG_CHANNEL1_PTBASEINSTRUMENT)
    ld (PLY_AKG_CHANNEL1_PTINSTRUMENT),de
    jr PLY_AKG_CHANNEL1_AFTERINSTRUMENT
PLY_AKG_CHANNEL1_NOTE ld b,a
    ld a,(PLY_AKG_BASENOTEINDEX)
    add a,b
PLY_AKG_CHANNEL1_AFTERNOTEKNOWN ld b,a
    ld a,(PLY_AKG_CHANNEL1_SOUNDSTREAM_RELATIVEMODIFIERADDRESS)
    add a,b
    ld (PLY_AKG_CHANNEL1_TRACKNOTE),a
    rl c
    jr nc,PLY_AKG_CHANNEL1_SAMEINSTRUMENT
    ld a,(hl)
    inc hl
    exx
    ld l,a
    ld h,0
    add hl,hl
    ld de,(PLY_AKG_INSTRUMENTSTABLE)
    add hl,de
    ld sp,hl
    pop hl
    ld a,(hl)
    inc hl
    ld (PLY_AKG_CHANNEL1_INSTRUMENTORIGINALSPEED),a
    ld (PLY_AKG_CHANNEL1_PTINSTRUMENT),hl
    ld (PLY_AKG_CHANNEL1_PTBASEINSTRUMENT),hl
    exx
PLY_AKG_CHANNEL1_AFTERINSTRUMENT ex de,hl
    xor a
    ld l,a
    ld h,a
    ld (PLY_AKG_CHANNEL1_PITCH),hl
    ld (PLY_AKG_CHANNEL1_ARPEGGIOTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL1_PITCHTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL1_INSTRUMENTSTEP),a
    ld a,(PLY_AKG_CHANNEL1_INSTRUMENTORIGINALSPEED)
    ld (PLY_AKG_CHANNEL1_INSTRUMENTSPEED),a
    ld a,0
    ld (PLY_AKG_CHANNEL1_ISPITCH),a
    ld a,(PLY_AKG_CHANNEL1_ARPEGGIOBASESPEED)
    ld (PLY_AKG_CHANNEL1_ARPEGGIOTABLESPEED),a
    ld a,(PLY_AKG_CHANNEL1_PITCHBASESPEED)
    ld (PLY_AKG_CHANNEL1_PITCHTABLESPEED),a
    ld hl,(PLY_AKG_CHANNEL1_ARPEGGIOTABLEBASE)
    ld (PLY_AKG_CHANNEL1_ARPEGGIOTABLE),hl
    ld hl,(PLY_AKG_CHANNEL1_PITCHTABLEBASE)
    ld (PLY_AKG_CHANNEL1_PITCHTABLE),hl
    ex de,hl
    rl c
    jp c,PLY_AKG_CHANNEL1_READEFFECTS
PLY_AKG_CHANNEL1_BEFOREEND_STORECELLPOINTER ld (PLY_AKG_CHANNEL1_PTTRACK),hl
PLY_AKG_CHANNEL1_READCELLEND ld a,(PLY_AKG_CHANNEL2_WAITCOUNTER)
    sub 1
    jr c,PLY_AKG_CHANNEL2_READTRACK
    ld (PLY_AKG_CHANNEL2_WAITCOUNTER),a
    jp PLY_AKG_CHANNEL2_READCELLEND
PLY_AKG_CHANNEL2_READTRACK ld hl,(PLY_AKG_CHANNEL2_PTTRACK)
    ld c,(hl)
    inc hl
    ld a,c
    and 63
    cp 60
    jr c,PLY_AKG_CHANNEL2_NOTE
    sub 60
    jp z,PLY_AKG_CHANNEL1_READEFFECTSEND
    dec a
    jr z,PLY_AKG_CHANNEL2_WAIT
    dec a
    jr z,PLY_AKG_CHANNEL2_SMALLWAIT
    ld a,(hl)
    inc hl
    jr PLY_AKG_CHANNEL2_AFTERNOTEKNOWN
PLY_AKG_CHANNEL2_SMALLWAIT ld a,c
    rlca 
    rlca 
    and 3
    inc a
    ld (PLY_AKG_CHANNEL2_WAITCOUNTER),a
    jr PLY_AKG_CHANNEL2_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL2_WAIT ld a,(hl)
    ld (PLY_AKG_CHANNEL2_WAITCOUNTER),a
    inc hl
    jr PLY_AKG_CHANNEL2_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL2_SAMEINSTRUMENT ld de,(PLY_AKG_CHANNEL2_PTBASEINSTRUMENT)
    ld (PLY_AKG_CHANNEL2_PTINSTRUMENT),de
    jr PLY_AKG_CHANNEL2_AFTERINSTRUMENT
PLY_AKG_CHANNEL2_NOTE ld b,a
    ld a,(PLY_AKG_BASENOTEINDEX)
    add a,b
PLY_AKG_CHANNEL2_AFTERNOTEKNOWN ld b,a
    ld a,(PLY_AKG_CHANNEL2_PLAYINSTRUMENT_RELATIVEMODIFIERADDRESS)
    add a,b
    ld (PLY_AKG_CHANNEL2_TRACKNOTE),a
    rl c
    jr nc,PLY_AKG_CHANNEL2_SAMEINSTRUMENT
    ld a,(hl)
    inc hl
    exx
    ld e,a
    ld d,0
    ld hl,(PLY_AKG_INSTRUMENTSTABLE)
    add hl,de
    add hl,de
    ld sp,hl
    pop hl
    ld a,(hl)
    inc hl
    ld (PLY_AKG_CHANNEL2_INSTRUMENTORIGINALSPEED),a
    ld (PLY_AKG_CHANNEL2_PTINSTRUMENT),hl
    ld (PLY_AKG_CHANNEL2_PTBASEINSTRUMENT),hl
    exx
PLY_AKG_CHANNEL2_AFTERINSTRUMENT ex de,hl
    xor a
    ld l,a
    ld h,a
    ld (PLY_AKG_CHANNEL2_PITCH),hl
    ld (PLY_AKG_CHANNEL2_ARPEGGIOTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL2_PITCHTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL2_INSTRUMENTSTEP),a
    ld a,(PLY_AKG_CHANNEL2_INSTRUMENTORIGINALSPEED)
    ld (PLY_AKG_CHANNEL2_INSTRUMENTSPEED),a
    ld a,0
    ld (PLY_AKG_CHANNEL2_ISPITCH),a
    ld a,(PLY_AKG_CHANNEL2_ARPEGGIOBASESPEED)
    ld (PLY_AKG_CHANNEL2_ARPEGGIOTABLESPEED),a
    ld a,(PLY_AKG_CHANNEL2_PITCHBASESPEED)
    ld (PLY_AKG_CHANNEL2_PITCHTABLESPEED),a
    ld hl,(PLY_AKG_CHANNEL2_ARPEGGIOTABLEBASE)
    ld (PLY_AKG_CHANNEL2_ARPEGGIOTABLE),hl
    ld hl,(PLY_AKG_CHANNEL2_PITCHTABLEBASE)
    ld (PLY_AKG_CHANNEL2_PITCHTABLE),hl
    ex de,hl
    rl c
    jp c,PLY_AKG_CHANNEL2_READEFFECTS
PLY_AKG_CHANNEL2_BEFOREEND_STORECELLPOINTER ld (PLY_AKG_CHANNEL2_PTTRACK),hl
PLY_AKG_CHANNEL2_READCELLEND ld a,(PLY_AKG_CHANNEL3_WAITCOUNTER)
    sub 1
    jr c,PLY_AKG_CHANNEL3_READTRACK
    ld (PLY_AKG_CHANNEL3_WAITCOUNTER),a
    jp PLY_AKG_CHANNEL3_READCELLEND
PLY_AKG_CHANNEL3_READTRACK ld hl,(PLY_AKG_CHANNEL3_PTTRACK)
    ld c,(hl)
    inc hl
    ld a,c
    and 63
    cp 60
    jr c,PLY_AKG_CHANNEL3_NOTE
    sub 60
    jp z,PLY_AKG_CHANNEL2_READEFFECTSEND
    dec a
    jr z,PLY_AKG_CHANNEL3_WAIT
    dec a
    jr z,PLY_AKG_CHANNEL3_SMALLWAIT
    ld a,(hl)
    inc hl
    jr PLY_AKG_CHANNEL3_AFTERNOTEKNOWN
PLY_AKG_CHANNEL3_SMALLWAIT ld a,c
    rlca 
    rlca 
    and 3
    inc a
    ld (PLY_AKG_CHANNEL3_WAITCOUNTER),a
    jr PLY_AKG_CHANNEL3_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL3_WAIT ld a,(hl)
    ld (PLY_AKG_CHANNEL3_WAITCOUNTER),a
    inc hl
    jr PLY_AKG_CHANNEL3_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL3_SAMEINSTRUMENT ld de,(PLY_AKG_CHANNEL3_PTBASEINSTRUMENT)
    ld (PLY_AKG_CHANNEL3_PTINSTRUMENT),de
    jr PLY_AKG_CHANNEL3_AFTERINSTRUMENT
PLY_AKG_CHANNEL3_NOTE ld b,a
    ld a,(PLY_AKG_BASENOTEINDEX)
    add a,b
PLY_AKG_CHANNEL3_AFTERNOTEKNOWN ld b,a
    ld a,(PLY_AKG_CHANNEL3_SOUNDSTREAM_RELATIVEMODIFIERADDRESS)
    add a,b
    ld (PLY_AKG_CHANNEL3_TRACKNOTE),a
    rl c
    jr nc,PLY_AKG_CHANNEL3_SAMEINSTRUMENT
    ld a,(hl)
    inc hl
    exx
    ld e,a
    ld d,0
    ld hl,(PLY_AKG_INSTRUMENTSTABLE)
    add hl,de
    add hl,de
    ld sp,hl
    pop hl
    ld a,(hl)
    inc hl
    ld (PLY_AKG_CHANNEL3_INSTRUMENTORIGINALSPEED),a
    ld (PLY_AKG_CHANNEL3_PTINSTRUMENT),hl
    ld (PLY_AKG_CHANNEL3_PTBASEINSTRUMENT),hl
    exx
PLY_AKG_CHANNEL3_AFTERINSTRUMENT ex de,hl
    xor a
    ld l,a
    ld h,a
    ld (PLY_AKG_CHANNEL3_PITCH),hl
    ld (PLY_AKG_CHANNEL3_ARPEGGIOTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL3_PITCHTABLECURRENTSTEP),a
    ld (PLY_AKG_CHANNEL3_INSTRUMENTSTEP),a
    ld a,(PLY_AKG_CHANNEL3_INSTRUMENTORIGINALSPEED)
    ld (PLY_AKG_CHANNEL3_INSTRUMENTSPEED),a
    ld a,0
    ld (PLY_AKG_CHANNEL3_ISPITCH),a
    ld a,(PLY_AKG_CHANNEL3_ARPEGGIOBASESPEED)
    ld (PLY_AKG_CHANNEL3_ARPEGGIOTABLESPEED),a
    ld a,(PLY_AKG_CHANNEL3_PITCHBASESPEED)
    ld (PLY_AKG_CHANNEL3_PITCHTABLESPEED),a
    ld hl,(PLY_AKG_CHANNEL3_ARPEGGIOTABLEBASE)
    ld (PLY_AKG_CHANNEL3_ARPEGGIOTABLE),hl
    ld hl,(PLY_AKG_CHANNEL3_PITCHTABLEBASE)
    ld (PLY_AKG_CHANNEL3_PITCHTABLE),hl
    ex de,hl
    rl c
    jp c,PLY_AKG_CHANNEL3_READEFFECTS
PLY_AKG_CHANNEL3_BEFOREEND_STORECELLPOINTER ld (PLY_AKG_CHANNEL3_PTTRACK),hl
PLY_AKG_CHANNEL3_READCELLEND ld a,(PLY_AKG_CURRENTSPEED)
PLY_AKG_SETSPEEDBEFOREPLAYSTREAMS ld (PLY_AKG_TICKDECREASINGCOUNTER),a
    ld hl,(PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGERANDDECIMAL)
    ld a,(PLY_AKG_CHANNEL1_ISVOLUMESLIDE)
    add a,a
    jr nc,PLY_AKG_CHANNEL1_VOLUMESLIDE_END
    ld de,(PLY_AKG_CHANNEL1_VOLUMESLIDEVALUE)
    add hl,de
    bit 7,h
    jr z,PLY_AKG_CHANNEL1_VOLUMENOTOVERFLOW
    ld h,0
    jr PLY_AKG_CHANNEL1_VOLUMESETAGAIN
PLY_AKG_CHANNEL1_VOLUMENOTOVERFLOW ld a,h
    cp 16
    jr c,PLY_AKG_CHANNEL1_VOLUMESETAGAIN
    ld h,15
PLY_AKG_CHANNEL1_VOLUMESETAGAIN ld (PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGERANDDECIMAL),hl
PLY_AKG_CHANNEL1_VOLUMESLIDE_END ld a,h
    ld (PLY_AKG_CHANNEL1_GENERATEDCURRENTINVERTEDVOLUME),a
    ld c,0
    ld a,(PLY_AKG_CHANNEL1_ISARPEGGIOTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL1_ARPEGGIOTABLE_END
    ld hl,(PLY_AKG_CHANNEL1_ARPEGGIOTABLE)
    ld a,(hl)
    cp 128
    jr nz,PLY_AKG_CHANNEL1_ARPEGGIOTABLE_AFTERLOOPTEST
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
PLY_AKG_CHANNEL1_ARPEGGIOTABLE_AFTERLOOPTEST ld c,a
    ld a,(PLY_AKG_CHANNEL1_ARPEGGIOTABLESPEED)
    ld d,a
    ld a,(PLY_AKG_CHANNEL1_ARPEGGIOTABLECURRENTSTEP)
    inc a
    cp d
    jr c,PLY_AKG_CHANNEL1_ARPEGGIOTABLE_BEFOREEND_SAVESTEP
    inc hl
    ld (PLY_AKG_CHANNEL1_ARPEGGIOTABLE),hl
    xor a
PLY_AKG_CHANNEL1_ARPEGGIOTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL1_ARPEGGIOTABLECURRENTSTEP),a
PLY_AKG_CHANNEL1_ARPEGGIOTABLE_END ld de,0
    ld a,(PLY_AKG_CHANNEL1_ISPITCHTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL1_PITCHTABLE_END
    ld sp,(PLY_AKG_CHANNEL1_PITCHTABLE)
    pop de
    pop hl
    ld a,(PLY_AKG_CHANNEL1_PITCHTABLESPEED)
    ld b,a
    ld a,(PLY_AKG_CHANNEL1_PITCHTABLECURRENTSTEP)
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL1_PITCHTABLE_BEFOREEND_SAVESTEP
    ld (PLY_AKG_CHANNEL1_PITCHTABLE),hl
    xor a
PLY_AKG_CHANNEL1_PITCHTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL1_PITCHTABLECURRENTSTEP),a
PLY_AKG_CHANNEL1_PITCHTABLE_END ld hl,(PLY_AKG_CHANNEL1_PITCH)
    ld a,(PLY_AKG_CHANNEL1_ISPITCH)
    add a,a
    jr nc,PLY_AKG_CHANNEL1_PITCH_END
    db 221
    db 105
    ld bc,(PLY_AKG_CHANNEL1_PITCHTRACK)
    or a
    jp PLY_AKG_CHANNEL1_PITCHTRACKADDORSBC_16BITS
PLY_AKG_CHANNEL1_PITCHTRACKADDORSBC_16BITSRETURN ld a,(PLY_AKG_CHANNEL1_PITCHTRACKDECIMALVALUE)
    ld b,a
    ld a,(PLY_AKG_CHANNEL1_PITCHTRACKDECIMALCOUNTER)
    jp PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTR
PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP ld (PLY_AKG_CHANNEL1_PITCHTRACKDECIMALCOUNTER),a
    jr nc,PLY_AKG_CHANNEL1_PITCHTRACKINTEGERADDORSUBRETURN
    jp PLY_AKG_CHANNEL1_PITCHTRACKINTEGERADDORSUB
PLY_AKG_CHANNEL1_PITCHTRACKINTEGERADDORSUBRETURN
PLY_AKG_CHANNEL1_PITCHNOCARRY ld (PLY_AKG_CHANNEL1_PITCH),hl
    ld a,(PLY_AKG_CHANNEL1_GLIDEDIRECTION)
    or a
    jr z,PLY_AKG_CHANNEL1_GLIDE_END
    ld (PLY_AKG_CHANNEL1_GLIDE_SAVEHL),hl
    ld c,l
    ld b,h
    ex af,af'
    ld a,(PLY_AKG_CHANNEL1_TRACKNOTE)
    add a,a
    ld l,a
    ex af,af'
    ld h,0
    ld sp,PLY_AKG_PERIODTABLE
    add hl,sp
    ld sp,hl
    pop hl
    dec sp
    dec sp
    add hl,bc
    ld bc,(PLY_AKG_CHANNEL1_GLIDETOREACH)
    rra 
    jr nc,PLY_AKG_CHANNEL1_GLIDEDOWNCHECK
    or a
    sbc hl,bc
    jr nc,PLY_AKG_CHANNEL1_GLIDE_BEFOREEND
    jr PLY_AKG_CHANNEL1_GLIDEOVER
PLY_AKG_CHANNEL1_GLIDEDOWNCHECK sbc hl,bc
    jr c,PLY_AKG_CHANNEL1_GLIDE_BEFOREEND
PLY_AKG_CHANNEL1_GLIDEOVER ld l,c
    ld h,b
    pop bc
    or a
    sbc hl,bc
    ld (PLY_AKG_CHANNEL1_PITCH),hl
    ld a,0
    ld (PLY_AKG_CHANNEL1_ISPITCH),a
    jr PLY_AKG_CHANNEL1_GLIDE_END
PLY_AKG_CHANNEL1_GLIDE_BEFOREEND ld hl,(PLY_AKG_CHANNEL1_GLIDE_SAVEHL)
PLY_AKG_CHANNEL1_GLIDE_END db 221
    db 77
PLY_AKG_CHANNEL1_PITCH_END add hl,de
    ld (PLY_AKG_CHANNEL1_GENERATEDCURRENTPITCH),hl
    ld a,c
    ld (PLY_AKG_CHANNEL1_GENERATEDCURRENTARPNOTE),a
    ld hl,(PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGERANDDECIMAL)
    ld a,(PLY_AKG_CHANNEL2_ISVOLUMESLIDE)
    add a,a
    jr nc,PLY_AKG_CHANNEL2_VOLUMESLIDE_END
    ld de,(PLY_AKG_CHANNEL2_VOLUMESLIDEVALUE)
    add hl,de
    bit 7,h
    jr z,PLY_AKG_CHANNEL2_VOLUMENOTOVERFLOW
    ld h,0
    jr PLY_AKG_CHANNEL2_VOLUMESETAGAIN
PLY_AKG_CHANNEL2_VOLUMENOTOVERFLOW ld a,h
    cp 16
    jr c,PLY_AKG_CHANNEL2_VOLUMESETAGAIN
    ld h,15
PLY_AKG_CHANNEL2_VOLUMESETAGAIN ld (PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGERANDDECIMAL),hl
PLY_AKG_CHANNEL2_VOLUMESLIDE_END ld a,h
    ld (PLY_AKG_CHANNEL2_GENERATEDCURRENTINVERTEDVOLUME),a
    ld c,0
    ld a,(PLY_AKG_CHANNEL2_ISARPEGGIOTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL2_ARPEGGIOTABLE_END
    ld hl,(PLY_AKG_CHANNEL2_ARPEGGIOTABLE)
    ld a,(hl)
    cp 128
    jr nz,PLY_AKG_CHANNEL2_ARPEGGIOTABLE_AFTERLOOPTEST
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
PLY_AKG_CHANNEL2_ARPEGGIOTABLE_AFTERLOOPTEST ld c,a
    ld a,(PLY_AKG_CHANNEL2_ARPEGGIOTABLESPEED)
    ld d,a
    ld a,(PLY_AKG_CHANNEL2_ARPEGGIOTABLECURRENTSTEP)
    inc a
    cp d
    jr c,PLY_AKG_CHANNEL2_ARPEGGIOTABLE_BEFOREEND_SAVESTEP
    inc hl
    ld (PLY_AKG_CHANNEL2_ARPEGGIOTABLE),hl
    xor a
PLY_AKG_CHANNEL2_ARPEGGIOTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL2_ARPEGGIOTABLECURRENTSTEP),a
PLY_AKG_CHANNEL2_ARPEGGIOTABLE_END ld de,0
    ld a,(PLY_AKG_CHANNEL2_ISPITCHTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL2_PITCHTABLE_END
    ld sp,(PLY_AKG_CHANNEL2_PITCHTABLE)
    pop de
    pop hl
    ld a,(PLY_AKG_CHANNEL2_PITCHTABLESPEED)
    ld b,a
    ld a,(PLY_AKG_CHANNEL2_PITCHTABLECURRENTSTEP)
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL2_PITCHTABLE_BEFOREEND_SAVESTEP
    ld (PLY_AKG_CHANNEL2_PITCHTABLE),hl
    xor a
PLY_AKG_CHANNEL2_PITCHTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL2_PITCHTABLECURRENTSTEP),a
PLY_AKG_CHANNEL2_PITCHTABLE_END ld hl,(PLY_AKG_CHANNEL2_PITCH)
    ld a,(PLY_AKG_CHANNEL2_ISPITCH)
    add a,a
    jr nc,PLY_AKG_CHANNEL2_PITCH_END
    db 221
    db 105
    ld bc,(PLY_AKG_CHANNEL2_PITCHTRACK)
    or a
    jp PLY_AKG_CHANNEL2_PITCHTRACKADDORSBC_16BITS
PLY_AKG_CHANNEL2_PITCHTRACKADDORSBC_16BITSRETURN ld a,(PLY_AKG_CHANNEL2_PITCHTRACKDECIMALVALUE)
    ld b,a
    ld a,(PLY_AKG_CHANNEL2_PITCHTRACKDECIMALCOUNTER)
    jp PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTR
PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP ld (PLY_AKG_CHANNEL2_PITCHTRACKDECIMALCOUNTER),a
    jr nc,PLY_AKG_CHANNEL2_PITCHTRACKINTEGERADDORSUBRETURN
    jp PLY_AKG_CHANNEL2_PITCHTRACKINTEGERADDORSUB
PLY_AKG_CHANNEL2_PITCHTRACKINTEGERADDORSUBRETURN
PLY_AKG_CHANNEL2_PITCHNOCARRY ld (PLY_AKG_CHANNEL2_PITCH),hl
    ld a,(PLY_AKG_CHANNEL2_GLIDEDIRECTION)
    or a
    jr z,PLY_AKG_CHANNEL2_GLIDE_END
    ld (PLY_AKG_CHANNEL2_GLIDE_SAVEHL),hl
    ld c,l
    ld b,h
    ex af,af'
    ld a,(PLY_AKG_CHANNEL2_TRACKNOTE)
    add a,a
    ld l,a
    ex af,af'
    ld h,0
    ld sp,PLY_AKG_PERIODTABLE
    add hl,sp
    ld sp,hl
    pop hl
    dec sp
    dec sp
    add hl,bc
    ld bc,(PLY_AKG_CHANNEL2_GLIDETOREACH)
    rra 
    jr nc,PLY_AKG_CHANNEL2_GLIDEDOWNCHECK
    or a
    sbc hl,bc
    jr nc,PLY_AKG_CHANNEL2_GLIDE_BEFOREEND
    jr PLY_AKG_CHANNEL2_GLIDEOVER
PLY_AKG_CHANNEL2_GLIDEDOWNCHECK sbc hl,bc
    jr c,PLY_AKG_CHANNEL2_GLIDE_BEFOREEND
PLY_AKG_CHANNEL2_GLIDEOVER ld l,c
    ld h,b
    pop bc
    or a
    sbc hl,bc
    ld (PLY_AKG_CHANNEL2_PITCH),hl
    ld a,0
    ld (PLY_AKG_CHANNEL2_ISPITCH),a
    jr PLY_AKG_CHANNEL2_GLIDE_END
PLY_AKG_CHANNEL2_GLIDE_BEFOREEND ld hl,(PLY_AKG_CHANNEL2_GLIDE_SAVEHL)
PLY_AKG_CHANNEL2_GLIDE_END db 221
    db 77
PLY_AKG_CHANNEL2_PITCH_END add hl,de
    ld (PLY_AKG_CHANNEL2_GENERATEDCURRENTPITCH),hl
    ld a,c
    ld (PLY_AKG_CHANNEL2_GENERATEDCURRENTARPNOTE),a
    ld hl,(PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGERANDDECIMAL)
    ld a,(PLY_AKG_CHANNEL3_ISVOLUMESLIDE)
    add a,a
    jr nc,PLY_AKG_CHANNEL3_VOLUMESLIDE_END
    ld de,(PLY_AKG_CHANNEL3_VOLUMESLIDEVALUE)
    add hl,de
    bit 7,h
    jr z,PLY_AKG_CHANNEL3_VOLUMENOTOVERFLOW
    ld h,0
    jr PLY_AKG_CHANNEL3_VOLUMESETAGAIN
PLY_AKG_CHANNEL3_VOLUMENOTOVERFLOW ld a,h
    cp 16
    jr c,PLY_AKG_CHANNEL3_VOLUMESETAGAIN
    ld h,15
PLY_AKG_CHANNEL3_VOLUMESETAGAIN ld (PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGERANDDECIMAL),hl
PLY_AKG_CHANNEL3_VOLUMESLIDE_END ld a,h
    ld (PLY_AKG_CHANNEL3_GENERATEDCURRENTINVERTEDVOLUME),a
    ld c,0
    ld a,(PLY_AKG_CHANNEL3_ISARPEGGIOTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL3_ARPEGGIOTABLE_END
    ld hl,(PLY_AKG_CHANNEL3_ARPEGGIOTABLE)
    ld a,(hl)
    cp 128
    jr nz,PLY_AKG_CHANNEL3_ARPEGGIOTABLE_AFTERLOOPTEST
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,(hl)
PLY_AKG_CHANNEL3_ARPEGGIOTABLE_AFTERLOOPTEST ld c,a
    ld a,(PLY_AKG_CHANNEL3_ARPEGGIOTABLESPEED)
    ld d,a
    ld a,(PLY_AKG_CHANNEL3_ARPEGGIOTABLECURRENTSTEP)
    inc a
    cp d
    jr c,PLY_AKG_CHANNEL3_ARPEGGIOTABLE_BEFOREEND_SAVESTEP
    inc hl
    ld (PLY_AKG_CHANNEL3_ARPEGGIOTABLE),hl
    xor a
PLY_AKG_CHANNEL3_ARPEGGIOTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL3_ARPEGGIOTABLECURRENTSTEP),a
PLY_AKG_CHANNEL3_ARPEGGIOTABLE_END ld de,0
    ld a,(PLY_AKG_CHANNEL3_ISPITCHTABLE)
    add a,a
    jr nc,PLY_AKG_CHANNEL3_PITCHTABLE_END
    ld sp,(PLY_AKG_CHANNEL3_PITCHTABLE)
    pop de
    pop hl
    ld a,(PLY_AKG_CHANNEL3_PITCHTABLESPEED)
    ld b,a
    ld a,(PLY_AKG_CHANNEL3_PITCHTABLECURRENTSTEP)
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL3_PITCHTABLE_BEFOREEND_SAVESTEP
    ld (PLY_AKG_CHANNEL3_PITCHTABLE),hl
    xor a
PLY_AKG_CHANNEL3_PITCHTABLE_BEFOREEND_SAVESTEP ld (PLY_AKG_CHANNEL3_PITCHTABLECURRENTSTEP),a
PLY_AKG_CHANNEL3_PITCHTABLE_END ld hl,(PLY_AKG_CHANNEL3_PITCH)
    ld a,(PLY_AKG_CHANNEL3_ISPITCH)
    add a,a
    jr nc,PLY_AKG_CHANNEL3_PITCH_END
    db 221
    db 105
    ld bc,(PLY_AKG_CHANNEL3_PITCHTRACK)
    or a
    jp PLY_AKG_CHANNEL3_PITCHTRACKADDORSBC_16BITS
PLY_AKG_CHANNEL3_PITCHTRACKADDORSBC_16BITSRETURN ld a,(PLY_AKG_CHANNEL3_PITCHTRACKDECIMALVALUE)
    ld b,a
    ld a,(PLY_AKG_CHANNEL3_PITCHTRACKDECIMALCOUNTER)
    jp PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTR
PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTRANDVALUERETURNAFTERJP ld (PLY_AKG_CHANNEL3_PITCHTRACKDECIMALCOUNTER),a
    jr nc,PLY_AKG_CHANNEL3_PITCHTRACKINTEGERADDORSUBRETURN
    jp PLY_AKG_CHANNEL3_PITCHTRACKINTEGERADDORSUB
PLY_AKG_CHANNEL3_PITCHTRACKINTEGERADDORSUBRETURN
PLY_AKG_CHANNEL3_PITCHNOCARRY ld (PLY_AKG_CHANNEL3_PITCH),hl
    ld a,(PLY_AKG_CHANNEL3_GLIDEDIRECTION)
    or a
    jr z,PLY_AKG_CHANNEL3_GLIDE_END
    ld (PLY_AKG_CHANNEL3_GLIDE_SAVEHL),hl
    ld c,l
    ld b,h
    ex af,af'
    ld a,(PLY_AKG_CHANNEL3_TRACKNOTE)
    add a,a
    ld l,a
    ex af,af'
    ld h,0
    ld sp,PLY_AKG_PERIODTABLE
    add hl,sp
    ld sp,hl
    pop hl
    dec sp
    dec sp
    add hl,bc
    ld bc,(PLY_AKG_CHANNEL3_GLIDETOREACH)
    rra 
    jr nc,PLY_AKG_CHANNEL3_GLIDEDOWNCHECK
    or a
    sbc hl,bc
    jr nc,PLY_AKG_CHANNEL3_GLIDE_BEFOREEND
    jr PLY_AKG_CHANNEL3_GLIDEOVER
PLY_AKG_CHANNEL3_GLIDEDOWNCHECK sbc hl,bc
    jr c,PLY_AKG_CHANNEL3_GLIDE_BEFOREEND
PLY_AKG_CHANNEL3_GLIDEOVER ld l,c
    ld h,b
    pop bc
    or a
    sbc hl,bc
    ld (PLY_AKG_CHANNEL3_PITCH),hl
    ld a,0
    ld (PLY_AKG_CHANNEL3_ISPITCH),a
    jr PLY_AKG_CHANNEL3_GLIDE_END
PLY_AKG_CHANNEL3_GLIDE_BEFOREEND ld hl,(PLY_AKG_CHANNEL3_GLIDE_SAVEHL)
PLY_AKG_CHANNEL3_GLIDE_END db 221
    db 77
PLY_AKG_CHANNEL3_PITCH_END add hl,de
    ld (PLY_AKG_CHANNEL3_GENERATEDCURRENTPITCH),hl
    ld a,c
    ld (PLY_AKG_CHANNEL3_GENERATEDCURRENTARPNOTE),a
    ld sp,(PLY_AKG_SAVESP)
    ld hl,(PLY_AKG_CHANNEL1_GENERATEDCURRENTPITCH)
    ld a,(PLY_AKG_CHANNEL1_TRACKNOTE)
    ld e,a
    ld a,(PLY_AKG_CHANNEL1_GENERATEDCURRENTARPNOTE)
    add a,e
    ld e,a
    ld d,0
    exx
    ld a,(PLY_AKG_CHANNEL1_INSTRUMENTSTEP)
    db 253
    db 111
    ld hl,(PLY_AKG_CHANNEL1_PTINSTRUMENT)
    ld a,(PLY_AKG_CHANNEL1_GENERATEDCURRENTINVERTEDVOLUME)
    ld e,a
    ld d,224
    call PLY_AKG_READINSTRUMENTCELL
    ld a,(PLY_AKG_CHANNEL1_INSTRUMENTSPEED)
    ld b,a
    db 253
    db 125
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL1_SETINSTRUMENTSTEP
    ld (PLY_AKG_CHANNEL1_PTINSTRUMENT),hl
    xor a
PLY_AKG_CHANNEL1_SETINSTRUMENTSTEP ld (PLY_AKG_CHANNEL1_INSTRUMENTSTEP),a
    ld a,e
    ld (PLY_AKG_PSGREG8),a
    srl d
    exx
    ld (PLY_AKG_PSGREG01_INSTR),hl
    ld hl,(PLY_AKG_CHANNEL2_GENERATEDCURRENTPITCH)
    ld a,(PLY_AKG_CHANNEL2_TRACKNOTE)
    ld e,a
    ld a,(PLY_AKG_CHANNEL2_GENERATEDCURRENTARPNOTE)
    add a,e
    ld e,a
    ld d,0
    exx
    ld a,(PLY_AKG_CHANNEL2_INSTRUMENTSTEP)
    db 253
    db 111
    ld hl,(PLY_AKG_CHANNEL2_PTINSTRUMENT)
    ld a,(PLY_AKG_CHANNEL2_GENERATEDCURRENTINVERTEDVOLUME)
    ld e,a
    call PLY_AKG_READINSTRUMENTCELL
    ld a,(PLY_AKG_CHANNEL2_INSTRUMENTSPEED)
    ld b,a
    db 253
    db 125
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL2_SETINSTRUMENTSTEP
    ld (PLY_AKG_CHANNEL2_PTINSTRUMENT),hl
    xor a
PLY_AKG_CHANNEL2_SETINSTRUMENTSTEP ld (PLY_AKG_CHANNEL2_INSTRUMENTSTEP),a
    ld a,e
    ld (PLY_AKG_PSGREG9_10_INSTR),a
    scf
    rr d
    exx
    ld (PLY_AKG_PSGREG23_INSTR),hl
    ld hl,(PLY_AKG_CHANNEL3_GENERATEDCURRENTPITCH)
    ld a,(PLY_AKG_CHANNEL3_TRACKNOTE)
    ld e,a
    ld a,(PLY_AKG_CHANNEL3_GENERATEDCURRENTARPNOTE)
    add a,e
    ld e,a
    ld d,0
    exx
    ld a,(PLY_AKG_CHANNEL3_INSTRUMENTSTEP)
    db 253
    db 111
    ld hl,(PLY_AKG_CHANNEL3_PTINSTRUMENT)
    ld a,(PLY_AKG_CHANNEL3_GENERATEDCURRENTINVERTEDVOLUME)
    ld e,a
    call PLY_AKG_READINSTRUMENTCELL
    ld a,(PLY_AKG_CHANNEL3_INSTRUMENTSPEED)
    ld b,a
    db 253
    db 125
    inc a
    cp b
    jr c,PLY_AKG_CHANNEL3_SETINSTRUMENTSTEP
    ld (PLY_AKG_CHANNEL3_PTINSTRUMENT),hl
    xor a
PLY_AKG_CHANNEL3_SETINSTRUMENTSTEP ld (PLY_AKG_CHANNEL3_INSTRUMENTSTEP),a
    ld a,e
    ld (PLY_AKG_PSGREG10),a
    ld a,d
    exx
    ld (PLY_AKG_PSGREG45_INSTR),hl
    call PLY_AKG_PLAYSOUNDEFFECTSSTREAM
PLY_AKG_SENDPSGREGISTERS ld b,a
    ld a,7
    out (160),a
    ld a,b
    out (161),a
    ld hl,(PLY_AKG_PSGREG01_INSTR)
    xor a
    out (160),a
    ld a,l
    out (161),a
    ld a,1
    out (160),a
    ld a,h
    out (161),a
    ld hl,(PLY_AKG_PSGREG23_INSTR)
    ld a,2
    out (160),a
    ld a,l
    out (161),a
    ld a,3
    out (160),a
    ld a,h
    out (161),a
    ld hl,(PLY_AKG_PSGREG45_INSTR)
    ld a,4
    out (160),a
    ld a,l
    out (161),a
    ld a,5
    out (160),a
    ld a,h
    out (161),a
    ld hl,(PLY_AKG_PSGREG6_8_INSTR)
    ld a,6
    out (160),a
    ld a,l
    out (161),a
    ld a,8
    out (160),a
    ld a,h
    out (161),a
    ld hl,(PLY_AKG_PSGREG9_10_INSTR)
    ld a,9
    out (160),a
    ld a,l
    out (161),a
    ld a,10
    out (160),a
    ld a,h
    out (161),a
    ld hl,(PLY_AKG_PSGHARDWAREPERIOD_INSTR)
    ld a,11
    out (160),a
    ld a,l
    out (161),a
    ld a,12
    out (160),a
    ld a,h
    out (161),a
    ld a,13
    out (160),a
    ld a,(PLY_AKG_PSGREG13_INSTR)
    ld l,a
    ld a,(PLY_AKG_RETRIG)
    ld h,a
    ld a,(PLY_AKG_PSGREG13_OLDVALUE)
    or h
    cp l
    jr z,PLY_AKG_PSGREG13_END
    ld a,l
    ld (PLY_AKG_PSGREG13_OLDVALUE),a
    out (161),a
    xor a
    ld (PLY_AKG_RETRIG),a
PLY_AKG_PSGREG13_END ld sp,(PLY_AKG_SAVESP)
    ret 
PLY_AKG_CHANNEL1_MAYBEEFFECTS ld (PLY_AKG_CHANNEL1_WAITCOUNTER),a
    bit 6,c
    jp z,PLY_AKG_CHANNEL1_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL1_READEFFECTS ld iy,PLY_AKG_CHANNEL1_SOUNDSTREAM_RELATIVEMODIFIERADDRESS
    ld ix,PLY_AKG_CHANNEL1_SOUNDSTREAM_RELATIVEMODIFIERADDRESS
    ld de,PLY_AKG_CHANNEL1_BEFOREEND_STORECELLPOINTER
    jr PLY_AKG_CHANNEL3_READEFFECTSEND
PLY_AKG_CHANNEL1_READEFFECTSEND
PLY_AKG_CHANNEL2_MAYBEEFFECTS ld (PLY_AKG_CHANNEL2_WAITCOUNTER),a
    bit 6,c
    jp z,PLY_AKG_CHANNEL2_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL2_READEFFECTS ld iy,PLY_AKG_CHANNEL2_PLAYINSTRUMENT_RELATIVEMODIFIERADDRESS
    ld ix,PLY_AKG_CHANNEL2_PLAYINSTRUMENT_RELATIVEMODIFIERADDRESS
    ld de,PLY_AKG_CHANNEL2_BEFOREEND_STORECELLPOINTER
    jr PLY_AKG_CHANNEL3_READEFFECTSEND
PLY_AKG_CHANNEL2_READEFFECTSEND
PLY_AKG_CHANNEL3_MAYBEEFFECTS ld (PLY_AKG_CHANNEL3_WAITCOUNTER),a
    bit 6,c
    jp z,PLY_AKG_CHANNEL3_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL3_READEFFECTS ld iy,PLY_AKG_CHANNEL3_SOUNDSTREAM_RELATIVEMODIFIERADDRESS
    ld ix,PLY_AKG_CHANNEL3_SOUNDSTREAM_RELATIVEMODIFIERADDRESS
    ld de,PLY_AKG_CHANNEL3_BEFOREEND_STORECELLPOINTER
PLY_AKG_CHANNEL3_READEFFECTSEND
PLY_AKG_CHANNEL_READEFFECTS ld (PLY_AKG_CHANNEL_READEFFECTS_ENDJUMPINSTRANDADDRESS+1),de
    ex de,hl
    ld a,(de)
    inc de
    sla a
    jr c,PLY_AKG_CHANNEL_READEFFECTS_RELATIVEADDRESS
    exx
    ld l,a
    ld h,0
    ld de,(PLY_AKG_CHANNEL_READEFFECTS_EFFECTBLOCKS1)
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
PLY_AKG_CHANNEL_RE_EFFECTADDRESSKNOWN ld a,(de)
    inc de
    ld (PLY_AKG_CHANNEL_RE_READNEXTEFFECTINBLOCK),a
    and 254
    ld l,a
    ld h,0
    ld sp,PLY_AKG_EFFECTTABLE
    add hl,sp
    ld sp,hl
    ret 
PLY_AKG_CHANNEL_RE_EFFECTRETURN ld a,(PLY_AKG_CHANNEL_RE_READNEXTEFFECTINBLOCK)
    rra 
    jr c,PLY_AKG_CHANNEL_RE_EFFECTADDRESSKNOWN
    exx
    ex de,hl
    jp PLY_AKG_CHANNEL_READEFFECTS_ENDJUMPINSTRANDADDRESS
PLY_AKG_CHANNEL_READEFFECTS_RELATIVEADDRESS srl a
    exx
    ld h,a
    exx
    ld a,(de)
    inc de
    exx
    ld l,a
    ld de,(PLY_AKG_CHANNEL_READEFFECTS_EFFECTBLOCKS1)
    add hl,de
    jr PLY_AKG_CHANNEL_RE_EFFECTADDRESSKNOWN
PLY_AKG_READINSTRUMENTCELL ld a,(hl)
    inc hl
    ld b,a
    rra 
    jp c,PLY_AKG_S_OR_H_OR_SAH_OR_ENDWITHLOOP
    rra 
    jp c,PLY_AKG_STH_OR_ENDWITHOUTLOOP
    rra 
    jr c,PLY_AKG_HARDTOSOFT
PLY_AKG_NOSOFTNOHARD and 15
    sub e
    jr nc,PLY_AKG_NOSOFTNOHARD+6
    xor a
    ld e,a
    rl b
    jr nc,PLY_AKG_NSNH_NONOISE
    ld a,(hl)
    inc hl
    ld (PLY_AKG_PSGREG6_8_INSTR),a
    set 2,d
    res 5,d
    ret 
PLY_AKG_NSNH_NONOISE set 2,d
    ret 
PLY_AKG_SOFT and 15
    sub e
    jr nc,PLY_AKG_SOFTONLY_HARDONLY_TESTSIMPLE_COMMON-1
    xor a
    ld e,a
PLY_AKG_SOFTONLY_HARDONLY_TESTSIMPLE_COMMON rl b
    jr nc,PLY_AKG_S_NOTSIMPLE
    ld c,0
    jr PLY_AKG_S_AFTERSIMPLETEST
PLY_AKG_S_NOTSIMPLE ld b,(hl)
    ld c,b
    inc hl
PLY_AKG_S_AFTERSIMPLETEST call PLY_AKG_S_OR_H_CHECKIFSIMPLEFIRST_CALCULATEPERIOD
    ld a,c
    and 31
    ret z
    ld (PLY_AKG_PSGREG6_8_INSTR),a
    res 5,d
    ret 
PLY_AKG_HARDTOSOFT call PLY_AKG_STOH_HTOS_SANDH_COMMON
    exx
    ld bc,PLY_AKG_HS_JUMPRATIO
    add a,c
    ld c,a
    ld a,b
    adc a,0
    ld b,a
    ld (PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS+1),bc
    exx
    ld a,b
    exx
    ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR),hl
    jp PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS
PLY_AKG_HS_JUMPRATIO sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    rla 
    jr nc,PLY_AKG_SH_NOSOFTWAREPITCHSHIFT
    exx
    ld a,(hl)
    inc hl
    exx
    add a,l
    ld l,a
    exx
    ld a,(hl)
    inc hl
    exx
    adc a,h
    ld h,a
PLY_AKG_SH_NOSOFTWAREPITCHSHIFT exx
    ret 
PLY_AKG_ENDWITHOUTLOOP ld hl,(PLY_AKG_EMPTYINSTRUMENTDATAPT)
    inc hl
    xor a
    ld b,a
    jp PLY_AKG_NOSOFTNOHARD
PLY_AKG_STH_OR_ENDWITHOUTLOOP rra 
    jr c,PLY_AKG_ENDWITHOUTLOOP
    call PLY_AKG_STOH_HTOS_SANDH_COMMON
    exx
    ld bc,PLY_AKG_SH_JUMPRATIO
    add a,c
    ld c,a
    ld a,b
    adc a,0
    ld b,a
    ld (PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS+1),bc
    exx
    ld a,b
    exx
    ld e,l
    ld d,h
    jp PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS
PLY_AKG_SH_JUMPRATIO srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    jr nc,PLY_AKG_SH_JUMPRATIOEND
    inc hl
PLY_AKG_SH_JUMPRATIOEND rla 
    jr nc,PLY_AKG_SH_NOHARDWAREPITCHSHIFT
    exx
    ld a,(hl)
    inc hl
    exx
    add a,l
    ld l,a
    exx
    ld a,(hl)
    inc hl
    exx
    adc a,h
    ld h,a
PLY_AKG_SH_NOHARDWAREPITCHSHIFT ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR),hl
    ex de,hl
    exx
    ret 
PLY_AKG_S_OR_H_OR_SAH_OR_ENDWITHLOOP rra 
    jr c,PLY_AKG_H_OR_ENDWITHLOOP
    rra 
    jp nc,PLY_AKG_SOFT
    exx
    push hl
    push de
    exx
    call PLY_AKG_STOH_HTOS_SANDH_COMMON
    exx
    ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR),hl
    pop de
    pop hl
    exx
    rl b
    jp PLY_AKG_S_OR_H_CHECKIFSIMPLEFIRST_CALCULATEPERIOD
PLY_AKG_H_OR_ENDWITHLOOP rra 
    jr c,PLY_AKG_ENDWITHLOOP
    ld e,16
    rra 
    jr nc,PLY_AKG_H_AFTERRETRIG
    ld c,a
    db 253
    db 125
    or a
    jr nz,PLY_AKG_H_RETRIGEND
    ld a,e
    ld (PLY_AKG_RETRIG),a
PLY_AKG_H_RETRIGEND ld a,c
PLY_AKG_H_AFTERRETRIG and 7
    add a,8
    ld (PLY_AKG_PSGREG13_INSTR),a
    call PLY_AKG_SOFTONLY_HARDONLY_TESTSIMPLE_COMMON
    exx
    ld (PLY_AKG_PSGHARDWAREPERIOD_INSTR),hl
    exx
    set 2,d
    ret 
PLY_AKG_ENDWITHLOOP ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    jp PLY_AKG_READINSTRUMENTCELL
PLY_AKG_S_OR_H_CHECKIFSIMPLEFIRST_CALCULATEPERIOD jr nc,PLY_AKG_S_OR_H_NEXTBYTE
    exx
    ex de,hl
    add hl,hl
    ld bc,PLY_AKG_PERIODTABLE
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    add hl,de
    exx
    rl b
    rl b
    rl b
    ret 
PLY_AKG_S_OR_H_NEXTBYTE rl b
    jr c,PLY_AKG_S_OR_H_FORCEDPERIOD
    rl b
    jr nc,PLY_AKG_S_OR_H_AFTERARPEGGIO
    ld a,(hl)
    inc hl
    exx
    add a,e
    ld e,a
    exx
PLY_AKG_S_OR_H_AFTERARPEGGIO rl b
    jr nc,PLY_AKG_S_OR_H_AFTERPITCH
    ld a,(hl)
    inc hl
    exx
    add a,l
    ld l,a
    exx
    ld a,(hl)
    inc hl
    exx
    adc a,h
    ld h,a
    exx
PLY_AKG_S_OR_H_AFTERPITCH exx
    ex de,hl
    add hl,hl
    ld bc,PLY_AKG_PERIODTABLE
    add hl,bc
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    add hl,de
    exx
    ret 
PLY_AKG_S_OR_H_FORCEDPERIOD ld a,(hl)
    inc hl
    exx
    ld l,a
    exx
    ld a,(hl)
    inc hl
    exx
    ld h,a
    exx
    rl b
    rl b
    ret 
PLY_AKG_STOH_HTOS_SANDH_COMMON ld e,16
    rra 
    jr nc,PLY_AKG_SHOHS_AFTERRETRIG
    ld c,a
    db 253
    db 125
    or a
    jr nz,PLY_AKG_SHOHS_RETRIGEND
    dec a
    ld (PLY_AKG_RETRIG),a
PLY_AKG_SHOHS_RETRIGEND ld a,c
PLY_AKG_SHOHS_AFTERRETRIG and 7
    add a,8
    ld (PLY_AKG_PSGREG13_INSTR),a
    rl b
    jr nc,PLY_AKG_SHOHS_AFTERNOISE
    ld a,(hl)
    inc hl
    ld (PLY_AKG_PSGREG6_8_INSTR),a
    res 5,d
PLY_AKG_SHOHS_AFTERNOISE ld c,(hl)
    ld b,c
    inc hl
    rl b
    call PLY_AKG_S_OR_H_CHECKIFSIMPLEFIRST_CALCULATEPERIOD
    ld a,c
    rla 
    rla 
    and 28
    ret 
PLY_AKG_EFFECTTABLE dw PLY_AKG_EFFECT_RESETFULLVOLUME
    dw PLY_AKG_EFFECT_RESET
    dw PLY_AKG_EFFECT_VOLUME
    dw PLY_AKG_EFFECT_ARPEGGIOTABLE
    dw PLY_AKG_EFFECT_ARPEGGIOTABLESTOP
    dw PLY_AKG_EFFECT_PITCHTABLE
    dw PLY_AKG_EFFECT_PITCHTABLESTOP
    dw PLY_AKG_EFFECT_VOLUMESLIDE
    dw PLY_AKG_EFFECT_VOLUMESLIDESTOP
    dw PLY_AKG_EFFECT_PITCHUP
    dw PLY_AKG_EFFECT_PITCHDOWN
    dw PLY_AKG_EFFECT_PITCHSTOP
    dw PLY_AKG_EFFECT_GLIDEWITHNOTE
    dw PLY_AKG_EFFECT_GLIDE_READSPEED
    dw PLY_AKG_EFFECT_LEGATO
    dw PLY_AKG_EFFECT_FORCEINSTRUMENTSPEED
    dw PLY_AKG_EFFECT_FORCEARPEGGIOSPEED
    dw PLY_AKG_EFFECT_FORCEPITCHSPEED
PLY_AKG_EFFECT_RESETFULLVOLUME xor a
    jr PLY_AKG_EFFECT_RESETVOLUME_AFTERREADING
PLY_AKG_EFFECT_RESET ld a,(de)
    inc de
PLY_AKG_EFFECT_RESETVOLUME_AFTERREADING ld (iy+38),a
    xor a
    ld (iy+39),a
    ld (iy+40),a
    ld a,0
    ld (iy+5),a
    ld (iy+4),a
    ld (iy+3),a
    ld (iy+2),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_VOLUME ld a,(de)
    inc de
    ld (iy+38),a
    ld (iy+2),0
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_ARPEGGIOTABLE ld a,(de)
    inc de
    ld l,a
    ld h,0
    add hl,hl
    ld bc,(PLY_AKG_ARPEGGIOSTABLE)
    add hl,bc
    ld c,(hl)
    inc hl
    ld b,(hl)
    inc hl
    ld a,(bc)
    inc bc
    ld (iy+12),a
    ld (iy+11),a
    ld (iy+23),c
    ld (iy+24),b
    ld (iy+25),c
    ld (iy+26),b
    ld (iy+3),255
    xor a
    ld (iy+9),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_ARPEGGIOTABLESTOP ld (iy+3),0
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_PITCHTABLE ld a,(de)
    inc de
    ld l,a
    ld h,0
    add hl,hl
    ld bc,(PLY_AKG_PITCHESTABLE)
    add hl,bc
    ld c,(hl)
    inc hl
    ld b,(hl)
    inc hl
    ld a,(bc)
    inc bc
    ld (iy+15),a
    ld (iy+14),a
    ld (iy+29),c
    ld (iy+30),b
    ld (iy+31),c
    ld (iy+32),b
    ld (iy+4),255
    xor a
    ld (iy+13),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_PITCHTABLESTOP ld (iy+4),0
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_VOLUMESLIDE ld a,(de)
    inc de
    ld (iy+45),a
    ld a,(de)
    inc de
    ld (iy+46),a
    ld (iy+2),255
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_VOLUMESLIDESTOP ld (iy+2),0
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_PITCHDOWN ld (iy+58),0
    ld (iy+59),9
    ld (iy+51),198
    ld (iy+63),35
PLY_AKG_EFFECT_PITCHUPDOWN_COMMON ld (iy+5),255
    ld (iy+19),0
    ld a,(de)
    inc de
    ld (iy+52),a
    ld a,(de)
    inc de
    ld (iy+27),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_PITCHUP ld (iy+58),237
    ld (iy+59),66
    ld (iy+51),214
    ld (iy+63),43
    jr PLY_AKG_EFFECT_PITCHUPDOWN_COMMON
PLY_AKG_EFFECT_PITCHSTOP ld (iy+5),0
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_GLIDEWITHNOTE ld a,(de)
    inc de
    ld (PLY_AKG_EFFECT_GLIDEWITHNOTESAVEDE),de
    add a,a
    ld l,a
    ld h,0
    ld bc,PLY_AKG_PERIODTABLE
    add hl,bc
    ld sp,hl
    pop de
    ld (iy+47),e
    ld (iy+48),d
    ld a,(ix+18)
    add a,a
    ld l,a
    ld h,0
    add hl,bc
    ld sp,hl
    pop hl
    ld c,(iy+39)
    ld b,(iy+40)
    add hl,bc
    or a
    sbc hl,de
    ld de,(PLY_AKG_EFFECT_GLIDEWITHNOTESAVEDE)
    jr c,PLY_AKG_EFFECT_GLIDE_PITCHDOWN
    ld (iy+19),1
    ld (iy+58),237
    ld (iy+59),66
    ld (iy+51),214
    ld (iy+63),43
PLY_AKG_EFFECT_GLIDE_READSPEED
PLY_AKG_EFFECT_GLIDESPEED ld a,(de)
    inc de
    ld (iy+52),a
    ld a,(de)
    inc de
    ld (iy+27),a
    ld a,255
    ld (iy+5),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_GLIDE_PITCHDOWN ld (iy+19),2
    ld (iy+58),0
    ld (iy+59),9
    ld (iy+51),198
    ld (iy+63),35
    jr PLY_AKG_EFFECT_GLIDE_READSPEED
PLY_AKG_EFFECT_LEGATO ld a,(de)
    inc de
    ld (ix+18),a
    ld a,0
    ld (iy+5),a
    xor a
    ld (iy+39),a
    ld (iy+40),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_FORCEINSTRUMENTSPEED ld a,(de)
    inc de
    ld (ix+7),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_FORCEARPEGGIOSPEED ld a,(de)
    inc de
    ld (iy+12),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_EFFECT_FORCEPITCHSPEED ld a,(de)
    inc de
    ld (iy+15),a
    jp PLY_AKG_CHANNEL_RE_EFFECTRETURN
PLY_AKG_PERIODTABLE dw 6778
    dw 6398
    dw 6039
    dw 5700
    dw 5380
    dw 5078
    dw 4793
    dw 4524
    dw 4270
    dw 4030
    dw 3804
    dw 3591
    dw 3389
    dw 3199
    dw 3019
    dw 2850
    dw 2690
    dw 2539
    dw 2397
    dw 2262
    dw 2135
    dw 2015
    dw 1902
    dw 1795
    dw 1695
    dw 1599
    dw 1510
    dw 1425
    dw 1345
    dw 1270
    dw 1198
    dw 1131
    dw 1068
    dw 1008
    dw 951
    dw 898
    dw 847
    dw 800
    dw 755
    dw 712
    dw 673
    dw 635
    dw 599
    dw 566
    dw 534
    dw 504
    dw 476
    dw 449
    dw 424
    dw 400
    dw 377
    dw 356
    dw 336
    dw 317
    dw 300
    dw 283
    dw 267
    dw 252
    dw 238
    dw 224
    dw 212
    dw 200
    dw 189
    dw 178
    dw 168
    dw 159
    dw 150
    dw 141
    dw 133
    dw 126
    dw 119
    dw 112
    dw 106
    dw 100
    dw 94
    dw 89
    dw 84
    dw 79
    dw 75
    dw 71
    dw 67
    dw 63
    dw 59
    dw 56
    dw 53
    dw 50
    dw 47
    dw 45
    dw 42
    dw 40
    dw 37
    dw 35
    dw 33
    dw 31
    dw 30
    dw 28
    dw 26
    dw 25
    dw 24
    dw 22
    dw 21
    dw 20
    dw 19
    dw 18
    dw 17
    dw 16
    dw 15
    dw 14
    dw 13
    dw 12
    dw 12
    dw 11
    dw 11
    dw 10
    dw 9
    dw 9
    dw 8
    dw 8
    dw 7
    dw 7
    dw 7
    dw 6
    dw 6
    dw 6
    dw 5
    dw 5
    dw 5
    dw 4
PLY_AKG_PERIODTABLE_END
PLY_AKG_END
CHANGECURRENTSPEED ld (PLY_AKG_CURRENTSPEED),a
    ret 
PLY_AKG_ARPEGGIOSTABLE equ 56849
PLY_AKG_BASENOTEINDEX equ 56834
PLY_AKG_CHANNEL1_ARPEGGIOBASESPEED equ 56892
PLY_AKG_CHANNEL1_ARPEGGIOTABLE equ 56904
PLY_AKG_CHANNEL1_ARPEGGIOTABLEBASE equ 56906
PLY_AKG_CHANNEL1_ARPEGGIOTABLECURRENTSTEP equ 56890
PLY_AKG_CHANNEL1_ARPEGGIOTABLESPEED equ 56893
PLY_AKG_CHANNEL1_GENERATEDCURRENTARPNOTE equ 56891
PLY_AKG_CHANNEL1_GENERATEDCURRENTINVERTEDVOLUME equ 56901
PLY_AKG_CHANNEL1_GENERATEDCURRENTPITCH equ 56937
PLY_AKG_CHANNEL1_GLIDEDIRECTION equ 56900
PLY_AKG_CHANNEL1_GLIDETOREACH equ 56928
PLY_AKG_CHANNEL1_GLIDE_SAVEHL equ 56930
PLY_AKG_CHANNEL1_INSTRUMENTORIGINALSPEED equ 56887
PLY_AKG_CHANNEL1_INSTRUMENTSPEED equ 56888
PLY_AKG_CHANNEL1_INSTRUMENTSTEP equ 56889
PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGER equ 56919
PLY_AKG_CHANNEL1_INVERTEDVOLUMEINTEGERANDDECIMAL equ 56918
PLY_AKG_CHANNEL1_ISARPEGGIOTABLE equ 56884
PLY_AKG_CHANNEL1_ISPITCH equ 56886
PLY_AKG_CHANNEL1_ISPITCHTABLE equ 56885
PLY_AKG_CHANNEL1_ISVOLUMESLIDE equ 56883
PLY_AKG_CHANNEL1_PITCH equ 56920
PLY_AKG_CHANNEL1_PITCHBASESPEED equ 56895
PLY_AKG_CHANNEL1_PITCHTABLE equ 56910
PLY_AKG_CHANNEL1_PITCHTABLEBASE equ 56912
PLY_AKG_CHANNEL1_PITCHTABLECURRENTSTEP equ 56894
PLY_AKG_CHANNEL1_PITCHTABLESPEED equ 56896
PLY_AKG_CHANNEL1_PITCHTRACK equ 56908
PLY_AKG_CHANNEL1_PITCHTRACKADDORSBC_16BITS equ 56939
PLY_AKG_CHANNEL1_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS equ 56941
PLY_AKG_CHANNEL1_PITCHTRACKDECIMALCOUNTER equ 56898
PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTR equ 56932
PLY_AKG_CHANNEL1_PITCHTRACKDECIMALINSTRANDVALUERETURNJP equ 56934
PLY_AKG_CHANNEL1_PITCHTRACKDECIMALVALUE equ 56933
PLY_AKG_CHANNEL1_PITCHTRACKINTEGERADDORSUB equ 56944
PLY_AKG_CHANNEL1_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS equ 56945
PLY_AKG_CHANNEL1_PTBASEINSTRUMENT equ 56924
PLY_AKG_CHANNEL1_PTINSTRUMENT equ 56922
PLY_AKG_CHANNEL1_PTTRACK equ 56902
PLY_AKG_CHANNEL1_SOUNDEFFECTDATA equ 57084
PLY_AKG_CHANNEL1_SOUNDSTREAM_RELATIVEMODIFIERADDRESS equ 56881
PLY_AKG_CHANNEL1_TRACKNOTE equ 56899
PLY_AKG_CHANNEL1_VOLUMESLIDEVALUE equ 56926
PLY_AKG_CHANNEL1_WAITCOUNTER equ 56882
PLY_AKG_CHANNEL2_ARPEGGIOBASESPEED equ 56959
PLY_AKG_CHANNEL2_ARPEGGIOTABLE equ 56971
PLY_AKG_CHANNEL2_ARPEGGIOTABLEBASE equ 56973
PLY_AKG_CHANNEL2_ARPEGGIOTABLECURRENTSTEP equ 56957
PLY_AKG_CHANNEL2_ARPEGGIOTABLESPEED equ 56960
PLY_AKG_CHANNEL2_GENERATEDCURRENTARPNOTE equ 56958
PLY_AKG_CHANNEL2_GENERATEDCURRENTINVERTEDVOLUME equ 56968
PLY_AKG_CHANNEL2_GENERATEDCURRENTPITCH equ 57004
PLY_AKG_CHANNEL2_GLIDEDIRECTION equ 56967
PLY_AKG_CHANNEL2_GLIDETOREACH equ 56995
PLY_AKG_CHANNEL2_GLIDE_SAVEHL equ 56997
PLY_AKG_CHANNEL2_INSTRUMENTORIGINALSPEED equ 56954
PLY_AKG_CHANNEL2_INSTRUMENTSPEED equ 56955
PLY_AKG_CHANNEL2_INSTRUMENTSTEP equ 56956
PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGER equ 56986
PLY_AKG_CHANNEL2_INVERTEDVOLUMEINTEGERANDDECIMAL equ 56985
PLY_AKG_CHANNEL2_ISARPEGGIOTABLE equ 56951
PLY_AKG_CHANNEL2_ISPITCH equ 56953
PLY_AKG_CHANNEL2_ISPITCHTABLE equ 56952
PLY_AKG_CHANNEL2_ISVOLUMESLIDE equ 56950
PLY_AKG_CHANNEL2_PITCH equ 56987
PLY_AKG_CHANNEL2_PITCHBASESPEED equ 56962
PLY_AKG_CHANNEL2_PITCHTABLE equ 56977
PLY_AKG_CHANNEL2_PITCHTABLEBASE equ 56979
PLY_AKG_CHANNEL2_PITCHTABLECURRENTSTEP equ 56961
PLY_AKG_CHANNEL2_PITCHTABLESPEED equ 56963
PLY_AKG_CHANNEL2_PITCHTRACK equ 56975
PLY_AKG_CHANNEL2_PITCHTRACKADDORSBC_16BITS equ 57006
PLY_AKG_CHANNEL2_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS equ 57008
PLY_AKG_CHANNEL2_PITCHTRACKDECIMALCOUNTER equ 56965
PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTR equ 56999
PLY_AKG_CHANNEL2_PITCHTRACKDECIMALINSTRANDVALUERETURNJP equ 57001
PLY_AKG_CHANNEL2_PITCHTRACKDECIMALVALUE equ 57000
PLY_AKG_CHANNEL2_PITCHTRACKINTEGERADDORSUB equ 57011
PLY_AKG_CHANNEL2_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS equ 57012
PLY_AKG_CHANNEL2_PLAYINSTRUMENT_RELATIVEMODIFIERADDRESS equ 56948
PLY_AKG_CHANNEL2_PTBASEINSTRUMENT equ 56991
PLY_AKG_CHANNEL2_PTINSTRUMENT equ 56989
PLY_AKG_CHANNEL2_PTTRACK equ 56969
PLY_AKG_CHANNEL2_SOUNDEFFECTDATA equ 57092
PLY_AKG_CHANNEL2_TRACKNOTE equ 56966
PLY_AKG_CHANNEL2_VOLUMESLIDEVALUE equ 56993
PLY_AKG_CHANNEL2_WAITCOUNTER equ 56949
PLY_AKG_CHANNEL3_ARPEGGIOBASESPEED equ 57026
PLY_AKG_CHANNEL3_ARPEGGIOTABLE equ 57038
PLY_AKG_CHANNEL3_ARPEGGIOTABLEBASE equ 57040
PLY_AKG_CHANNEL3_ARPEGGIOTABLECURRENTSTEP equ 57024
PLY_AKG_CHANNEL3_ARPEGGIOTABLESPEED equ 57027
PLY_AKG_CHANNEL3_GENERATEDCURRENTARPNOTE equ 57025
PLY_AKG_CHANNEL3_GENERATEDCURRENTINVERTEDVOLUME equ 57035
PLY_AKG_CHANNEL3_GENERATEDCURRENTPITCH equ 57071
PLY_AKG_CHANNEL3_GLIDEDIRECTION equ 57034
PLY_AKG_CHANNEL3_GLIDETOREACH equ 57062
PLY_AKG_CHANNEL3_GLIDE_SAVEHL equ 57064
PLY_AKG_CHANNEL3_INSTRUMENTORIGINALSPEED equ 57021
PLY_AKG_CHANNEL3_INSTRUMENTSPEED equ 57022
PLY_AKG_CHANNEL3_INSTRUMENTSTEP equ 57023
PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGER equ 57053
PLY_AKG_CHANNEL3_INVERTEDVOLUMEINTEGERANDDECIMAL equ 57052
PLY_AKG_CHANNEL3_ISARPEGGIOTABLE equ 57018
PLY_AKG_CHANNEL3_ISPITCH equ 57020
PLY_AKG_CHANNEL3_ISPITCHTABLE equ 57019
PLY_AKG_CHANNEL3_ISVOLUMESLIDE equ 57017
PLY_AKG_CHANNEL3_PITCH equ 57054
PLY_AKG_CHANNEL3_PITCHBASESPEED equ 57029
PLY_AKG_CHANNEL3_PITCHTABLE equ 57044
PLY_AKG_CHANNEL3_PITCHTABLEBASE equ 57046
PLY_AKG_CHANNEL3_PITCHTABLECURRENTSTEP equ 57028
PLY_AKG_CHANNEL3_PITCHTABLESPEED equ 57030
PLY_AKG_CHANNEL3_PITCHTRACK equ 57042
PLY_AKG_CHANNEL3_PITCHTRACKADDORSBC_16BITS equ 57073
PLY_AKG_CHANNEL3_PITCHTRACKAFTERADDORSBCJUMPINSTRANDADDRESS equ 57075
PLY_AKG_CHANNEL3_PITCHTRACKDECIMALCOUNTER equ 57032
PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTR equ 57066
PLY_AKG_CHANNEL3_PITCHTRACKDECIMALINSTRANDVALUERETURNJP equ 57068
PLY_AKG_CHANNEL3_PITCHTRACKDECIMALVALUE equ 57067
PLY_AKG_CHANNEL3_PITCHTRACKINTEGERADDORSUB equ 57078
PLY_AKG_CHANNEL3_PITCHTRACKINTEGERAFTERADDORSUBJUMPINSTRANDADDRESS equ 57079
PLY_AKG_CHANNEL3_PTBASEINSTRUMENT equ 57058
PLY_AKG_CHANNEL3_PTINSTRUMENT equ 57056
PLY_AKG_CHANNEL3_PTTRACK equ 57036
PLY_AKG_CHANNEL3_SOUNDEFFECTDATA equ 57100
PLY_AKG_CHANNEL3_SOUNDSTREAM_RELATIVEMODIFIERADDRESS equ 57015
PLY_AKG_CHANNEL3_TRACKNOTE equ 57033
PLY_AKG_CHANNEL3_VOLUMESLIDEVALUE equ 57060
PLY_AKG_CHANNEL3_WAITCOUNTER equ 57016
PLY_AKG_CHANNEL_READEFFECTS_EFFECTBLOCKS1 equ 56855
PLY_AKG_CHANNEL_READEFFECTS_ENDJUMPINSTRANDADDRESS equ 56873
PLY_AKG_CHANNEL_RE_READNEXTEFFECTINBLOCK equ 56842
PLY_AKG_CURRENTSPEED equ 56833
PLY_AKG_EFFECT_GLIDEWITHNOTESAVEDE equ 56876
PLY_AKG_EMPTYINSTRUMENTDATAPT equ 56857
PLY_AKG_EVENT equ 56832
PLY_AKG_EVENTTRACK_PTTRACK equ 56847
PLY_AKG_EVENTTRACK_WAITCOUNTER equ 56838
PLY_AKG_INSTRUMENTSTABLE equ 56853
PLY_AKG_PATTERNDECREASINGHEIGHT equ 56835
PLY_AKG_PITCHESTABLE equ 56851
PLY_AKG_PSGHARDWAREPERIOD_INSTR equ 56871
PLY_AKG_PSGREG01_INSTR equ 56861
PLY_AKG_PSGREG10 equ 56870
PLY_AKG_PSGREG13_INSTR equ 56840
PLY_AKG_PSGREG13_OLDVALUE equ 56839
PLY_AKG_PSGREG23_INSTR equ 56863
PLY_AKG_PSGREG45_INSTR equ 56865
PLY_AKG_PSGREG6_8_INSTR equ 56867
PLY_AKG_PSGREG8 equ 56868
PLY_AKG_PSGREG9_10_INSTR equ 56869
PLY_AKG_PTSOUNDEFFECTTABLE equ 57082
PLY_AKG_READLINKER_PTLINKER equ 56843
PLY_AKG_RETRIG equ 56841
PLY_AKG_SAVESP equ 56859
PLY_AKG_SPEEDTRACK_PTTRACK equ 56845
PLY_AKG_SPEEDTRACK_WAITCOUNTER equ 56837
PLY_AKG_TEMPPLAYINSTRUMENTJUMPINSTRANDADDRESS equ 56878
PLY_AKG_TICKDECREASINGCOUNTER equ 56836
