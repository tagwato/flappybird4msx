; Untitled, AKG format, v1.0.

; Generated by Arkos Tracker 2.

MyFlappyBird1_Start
MyFlappyBird1_StartDisarkGenerateExternalLabel

MyFlappyBird1_DisarkByteRegionStart0
	db "AT20"
MyFlappyBird1_DisarkPointerRegionStart1
	dw MyFlappyBird1_ArpeggioTable	; The address of the Arpeggio table.
	dw MyFlappyBird1_PitchTable	; The address of the Pitch table.
	dw MyFlappyBird1_InstrumentTable	; The address of the Instrument table.
	dw MyFlappyBird1_EffectBlockTable	; The address of the Effect Block table.
MyFlappyBird1_DisarkPointerRegionEnd1


; The addresses of each Subsong:
MyFlappyBird1_DisarkPointerRegionStart2
	dw MyFlappyBird1_Subsong0_Start
MyFlappyBird1_DisarkPointerRegionEnd2

; Declares all the Arpeggios.
MyFlappyBird1_ArpeggioTable
MyFlappyBird1_DisarkPointerRegionStart3
MyFlappyBird1_DisarkPointerRegionEnd3

; Declares all the Pitches.
MyFlappyBird1_PitchTable
MyFlappyBird1_DisarkPointerRegionStart4
MyFlappyBird1_DisarkPointerRegionEnd4

; Declares all the Instruments.
MyFlappyBird1_InstrumentTable
MyFlappyBird1_DisarkPointerRegionStart5
	dw MyFlappyBird1_EmptyInstrument
	dw MyFlappyBird1_Instrument1
	dw MyFlappyBird1_Instrument2
	dw MyFlappyBird1_Instrument3
	dw MyFlappyBird1_Instrument4
	dw MyFlappyBird1_Instrument5
	dw MyFlappyBird1_Instrument6
MyFlappyBird1_DisarkPointerRegionEnd5

MyFlappyBird1_EmptyInstrument
	db 0	; The speed (>0, 0 for 256).
MyFlappyBird1_EmptyInstrument_Loop	db 0	; No Soft no Hard. Volume: 0. Noise? false.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument1
	db 1	; The speed (>0, 0 for 256).
	db 105	; Soft only. Volume: 13.
	db 65	; Additional data. Noise: 1. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 96	; Additional data. Noise: 0. Pitch? true. Arp? true. Period? false.
	db -12	; Arpeggio.
	dw -1	; Pitch.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 97	; Soft only. Volume: 12.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 96	; Additional data. Noise: 0. Pitch? true. Arp? true. Period? false.
	db -12	; Arpeggio.
	dw 1	; Pitch.

	db 81	; Soft only. Volume: 10.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 73	; Soft only. Volume: 9.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 65	; Soft only. Volume: 8.
	db 96	; Additional data. Noise: 0. Pitch? true. Arp? true. Period? false.
	db -12	; Arpeggio.
	dw -1	; Pitch.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 49	; Soft only. Volume: 6.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 41	; Soft only. Volume: 5.
	db 96	; Additional data. Noise: 0. Pitch? true. Arp? true. Period? false.
	db -12	; Arpeggio.
	dw 1	; Pitch.

	db 33	; Soft only. Volume: 4.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db -12	; Arpeggio.

	db 161	; Soft only. Volume: 4. Volume only.

	db 25	; Soft only. Volume: 3.
	db 32	; Additional data. Noise: 0. Pitch? true. Arp? false. Period? false.
	dw -1	; Pitch.

	db 153	; Soft only. Volume: 3. Volume only.

	db 17	; Soft only. Volume: 2.
	db 32	; Additional data. Noise: 0. Pitch? true. Arp? false. Period? false.
	dw 1	; Pitch.

	db 145	; Soft only. Volume: 2. Volume only.

	db 137	; Soft only. Volume: 1. Volume only.

	db 9	; Soft only. Volume: 1.
	db 32	; Additional data. Noise: 0. Pitch? true. Arp? false. Period? false.
	dw -1	; Pitch.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument2
	db 1	; The speed (>0, 0 for 256).
	db 121	; Soft only. Volume: 15.
	db 70	; Additional data. Noise: 6. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 10	; Arpeggio.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 9	; Arpeggio.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 8	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 5	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 4	; Arpeggio.

	db 73	; Soft only. Volume: 9.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 2	; Arpeggio.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 1	; Arpeggio.

	db 49	; Soft only. Volume: 6.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 1	; Arpeggio.

	db 177	; Soft only. Volume: 6. Volume only.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument3
	db 1	; The speed (>0, 0 for 256).
	db 240	; No Soft no Hard. Volume: 14. Noise? true.
	db 4	; Noise: 4.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 8	; Arpeggio.

	db 249	; Soft only. Volume: 15. Volume only.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument4
	db 1	; The speed (>0, 0 for 256).
	db 249	; Soft only. Volume: 15. Volume only.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 241	; Soft only. Volume: 14. Volume only.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 225	; Soft only. Volume: 12. Volume only.

	db 97	; Soft only. Volume: 12.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 217	; Soft only. Volume: 11. Volume only.

	db 81	; Soft only. Volume: 10.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 81	; Soft only. Volume: 10.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 201	; Soft only. Volume: 9. Volume only.

	db 73	; Soft only. Volume: 9.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 65	; Soft only. Volume: 8.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 193	; Soft only. Volume: 8. Volume only.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 177	; Soft only. Volume: 6. Volume only.

	db 49	; Soft only. Volume: 6.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 41	; Soft only. Volume: 5.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 169	; Soft only. Volume: 5. Volume only.

	db 33	; Soft only. Volume: 4.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 33	; Soft only. Volume: 4.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 153	; Soft only. Volume: 3. Volume only.

	db 25	; Soft only. Volume: 3.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 17	; Soft only. Volume: 2.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 145	; Soft only. Volume: 2. Volume only.

	db 9	; Soft only. Volume: 1.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 3	; Arpeggio.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument5
	db 1	; The speed (>0, 0 for 256).
	db 232	; No Soft no Hard. Volume: 13. Noise? true.
	db 4	; Noise: 4.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 11	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 9	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 233	; Soft only. Volume: 13. Volume only.

	db 225	; Soft only. Volume: 12. Volume only.

	db 6	; Loop to silence.

MyFlappyBird1_Instrument6
	db 1	; The speed (>0, 0 for 256).
	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 121	; Soft only. Volume: 15.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 113	; Soft only. Volume: 14.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 105	; Soft only. Volume: 13.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 97	; Soft only. Volume: 12.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 97	; Soft only. Volume: 12.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 89	; Soft only. Volume: 11.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 81	; Soft only. Volume: 10.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 81	; Soft only. Volume: 10.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 73	; Soft only. Volume: 9.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 73	; Soft only. Volume: 9.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 65	; Soft only. Volume: 8.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 65	; Soft only. Volume: 8.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 57	; Soft only. Volume: 7.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 49	; Soft only. Volume: 6.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 49	; Soft only. Volume: 6.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 41	; Soft only. Volume: 5.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 41	; Soft only. Volume: 5.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 33	; Soft only. Volume: 4.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 33	; Soft only. Volume: 4.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 25	; Soft only. Volume: 3.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 25	; Soft only. Volume: 3.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 17	; Soft only. Volume: 2.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 15	; Arpeggio.

	db 17	; Soft only. Volume: 2.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 7	; Arpeggio.

	db 9	; Soft only. Volume: 1.
	db 64	; Additional data. Noise: 0. Pitch? false. Arp? true. Period? false.
	db 12	; Arpeggio.

	db 6	; Loop to silence.


; The indexes of the effect blocks used by this song.
MyFlappyBird1_EffectBlockTable
MyFlappyBird1_DisarkPointerRegionStart6
	dw MyFlappyBird1_EffectBlock_P4P0	; Index 0
	dw MyFlappyBird1_EffectBlock_P4P3	; Index 1
	dw MyFlappyBird1_EffectBlock_P4P2	; Index 2
	dw MyFlappyBird1_EffectBlock_P4P4	; Index 3
	dw MyFlappyBird1_EffectBlock_P4P1	; Index 4
MyFlappyBird1_DisarkPointerRegionEnd6

MyFlappyBird1_EffectBlock_P4P0
	db 4, 0
MyFlappyBird1_EffectBlock_P4P1
	db 4, 1
MyFlappyBird1_EffectBlock_P4P2
	db 4, 2
MyFlappyBird1_EffectBlock_P4P3
	db 4, 3
MyFlappyBird1_EffectBlock_P4P4
	db 4, 4

MyFlappyBird1_DisarkByteRegionEnd0

; Subsong 0
; ----------------------
MyFlappyBird1_Subsong0_DisarkByteRegionStart0
MyFlappyBird1_Subsong0_Start
	db 2	; ReplayFrequency (0=12.5hz, 1=25, 2=50, 3=100, 4=150, 5=300).
	db 0	; Digichannel (0-2).
	db 1	; PSG count (>0).
	db 0	; Loop start index (>=0).
	db 8	; End index (>=0).
	db 6	; Initial speed (>=0).
	db 17	; Base note index (>=0).

MyFlappyBird1_Subsong0_Linker
MyFlappyBird1_Subsong0_DisarkPointerRegionStart1
; Position 0
MyFlappyBird1_Subsong0_Linker_Loop
	dw MyFlappyBird1_Subsong0_Track3
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track4
	dw MyFlappyBird1_Subsong0_LinkerBlock0

; Position 1
	dw MyFlappyBird1_Subsong0_Track0
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track2
	dw MyFlappyBird1_Subsong0_LinkerBlock1

; Position 2
	dw MyFlappyBird1_Subsong0_Track3
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track4
	dw MyFlappyBird1_Subsong0_LinkerBlock0

; Position 3
	dw MyFlappyBird1_Subsong0_Track0
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track2
	dw MyFlappyBird1_Subsong0_LinkerBlock2

; Position 4
	dw MyFlappyBird1_Subsong0_Track0
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track2
	dw MyFlappyBird1_Subsong0_LinkerBlock3

; Position 5
	dw MyFlappyBird1_Subsong0_Track0
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track2
	dw MyFlappyBird1_Subsong0_LinkerBlock3

; Position 6
	dw MyFlappyBird1_Subsong0_Track3
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track4
	dw MyFlappyBird1_Subsong0_LinkerBlock3

; Position 7
	dw MyFlappyBird1_Subsong0_Track0
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track2
	dw MyFlappyBird1_Subsong0_LinkerBlock4

; Position 8
	dw MyFlappyBird1_Subsong0_Track3
	dw MyFlappyBird1_Subsong0_Track1
	dw MyFlappyBird1_Subsong0_Track4
	dw MyFlappyBird1_Subsong0_LinkerBlock4

MyFlappyBird1_Subsong0_DisarkPointerRegionEnd1
	dw 0	; Loop.
MyFlappyBird1_Subsong0_DisarkWordForceReference2
	dw MyFlappyBird1_Subsong0_Linker_Loop

MyFlappyBird1_Subsong0_LinkerBlock0
	db 24	; Height.
	db 0	; Transposition 0.
	db 0	; Transposition 1.
	db 0	; Transposition 2.
MyFlappyBird1_Subsong0_DisarkWordForceReference3
	dw MyFlappyBird1_Subsong0_SpeedTrack0	; SpeedTrack address.
MyFlappyBird1_Subsong0_DisarkWordForceReference4
	dw MyFlappyBird1_Subsong0_EventTrack0	; EventTrack address.
MyFlappyBird1_Subsong0_LinkerBlock1
	db 24	; Height.
	db -5	; Transposition 0.
	db -5	; Transposition 1.
	db 7	; Transposition 2.
MyFlappyBird1_Subsong0_DisarkWordForceReference5
	dw MyFlappyBird1_Subsong0_SpeedTrack0	; SpeedTrack address.
MyFlappyBird1_Subsong0_DisarkWordForceReference6
	dw MyFlappyBird1_Subsong0_EventTrack0	; EventTrack address.
MyFlappyBird1_Subsong0_LinkerBlock2
	db 24	; Height.
	db 7	; Transposition 0.
	db -5	; Transposition 1.
	db -5	; Transposition 2.
MyFlappyBird1_Subsong0_DisarkWordForceReference7
	dw MyFlappyBird1_Subsong0_SpeedTrack0	; SpeedTrack address.
MyFlappyBird1_Subsong0_DisarkWordForceReference8
	dw MyFlappyBird1_Subsong0_EventTrack0	; EventTrack address.
MyFlappyBird1_Subsong0_LinkerBlock3
	db 24	; Height.
	db -5	; Transposition 0.
	db -5	; Transposition 1.
	db -5	; Transposition 2.
MyFlappyBird1_Subsong0_DisarkWordForceReference9
	dw MyFlappyBird1_Subsong0_SpeedTrack0	; SpeedTrack address.
MyFlappyBird1_Subsong0_DisarkWordForceReference10
	dw MyFlappyBird1_Subsong0_EventTrack0	; EventTrack address.
MyFlappyBird1_Subsong0_LinkerBlock4
	db 24	; Height.
	db -7	; Transposition 0.
	db -7	; Transposition 1.
	db -7	; Transposition 2.
MyFlappyBird1_Subsong0_DisarkWordForceReference11
	dw MyFlappyBird1_Subsong0_SpeedTrack0	; SpeedTrack address.
MyFlappyBird1_Subsong0_DisarkWordForceReference12
	dw MyFlappyBird1_Subsong0_EventTrack0	; EventTrack address.

MyFlappyBird1_Subsong0_Track0
	db 228
	db 6	; New Instrument (6).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 247
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 240
	db 6	; New Instrument (6).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 255
	db 77	; Escape note (77).
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 228
	db 6	; New Instrument (6).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 245
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 240
	db 6	; New Instrument (6).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 247
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 235
	db 4	; New Instrument (4).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 243
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 247
	db 4	; New Instrument (4).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 245
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 235
	db 4	; New Instrument (4).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 255
	db 75	; Escape note (75).
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 247
	db 4	; New Instrument (4).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 183
	db 1	; New Instrument (1).
	db 61, 127	; Waits for 128 lines.


MyFlappyBird1_Subsong0_Track1
	db 61, 127	; Waits for 128 lines.


MyFlappyBird1_Subsong0_Track2
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 204
	db 2	; New Instrument (2).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 194
	db 5	; New Instrument (5).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 140
	db 2	; New Instrument (2).
	db 12
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 194
	db 5	; New Instrument (5).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 204
	db 2	; New Instrument (2).
	db 2	; Index to an effect block.
	db 61, 127	; Waits for 128 lines.


MyFlappyBird1_Subsong0_Track3
	db 228
	db 6	; New Instrument (6).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 247
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 240
	db 6	; New Instrument (6).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 255
	db 77	; Escape note (77).
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 228
	db 6	; New Instrument (6).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 245
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 240
	db 6	; New Instrument (6).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 247
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 235
	db 4	; New Instrument (4).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 243
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 247
	db 4	; New Instrument (4).
	db 3	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 245
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 235
	db 4	; New Instrument (4).
	db 4	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 255
	db 75	; Escape note (75).
	db 1	; New Instrument (1).
	db 1	; Index to an effect block.
	db 247
	db 4	; New Instrument (4).
	db 3	; Index to an effect block.
	db 61, 127	; Waits for 128 lines.


MyFlappyBird1_Subsong0_Track4
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 204
	db 2	; New Instrument (2).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 228
	db 6	; New Instrument (6).
	db 2	; Index to an effect block.
	db 194
	db 5	; New Instrument (5).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 140
	db 2	; New Instrument (2).
	db 12
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 206
	db 3	; New Instrument (3).
	db 0	; Index to an effect block.
	db 60	; Waits for 1 line.

	db 235
	db 4	; New Instrument (4).
	db 2	; Index to an effect block.
	db 194
	db 5	; New Instrument (5).
	db 0	; Index to an effect block.
	db 61, 127	; Waits for 128 lines.


; The speed tracks
MyFlappyBird1_Subsong0_SpeedTrack0
	db 255	; Wait for 128 lines.

; The event tracks
MyFlappyBird1_Subsong0_EventTrack0
	db 255	; Wait for 128 lines.

MyFlappyBird1_Subsong0_DisarkByteRegionEnd0
