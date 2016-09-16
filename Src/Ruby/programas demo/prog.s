LI $2 1
LI $10 1
LI $11 3
levela
LI $12 7
LI $15 1
WDP $15 P1
*
*
LI $13 127
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait
LI $4 128
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1
SUB $3 $10 $4
BZ levela
continue1
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait
*
*
waitb
LI $4 64
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2
SUB $3 $10 $4
BNZ levela
continue2
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb
*
*
waitc
LI $4 32
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3
SUB $3 $10 $4
BNZ levela
continue3
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc
*
*
waitd
LI $4 16
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4
SUB $3 $10 $4
BNZ levela
continue4
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitd
*
*
waite
LI $4 8
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5
SUB $3 $10 $4
BNZ levela
continue5
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waite
*
*
waitf
LI $4 4
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue6
SUB $3 $10 $4
BNZ levela
continue6
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitf
*
*
waitg
LI $4 2
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue7
SUB $3 $10 $4
BNZ levela
continue7
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitg
*
*
waith
LI $4 1
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue8
SUB $3 $10 $4
BZ levelb
continue8
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waith
*
*
JL levela
*
*
*************************************LEVEL 2******************************
levelb
*
*
LI $13 116
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
LI $15 2
WDP $15 P1
LI $0 0
wait2
LI $4 129
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1a
SUB $3 $10 $4
BZ levela
continue1a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait2
*
*
waitb2
LI $4 65
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2a
SUB $3 $11 $4
BNZ levela
continue2a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb2
*
*
waitc2
LI $4 33
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3a
SUB $3 $11 $4
BNZ levela
continue3a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitc2
*
*
waitd2
LI $4 17
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4a
SUB $3 $11 $4
BNZ levela
continue4a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitd2
*
*
waite2
LI $4 9
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5a
SUB $3 $11 $4
BNZ levela
continue5a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waite2
*
*
waitf2
LI $4 5
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue6a
SUB $3 $11 $4
BNZ levela
continue6a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitf2
*
*
waitg2
LI $4 3
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue7a
SUB $3 $11 $4
BZ levelcpar
continue7a
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitg2
*
********************************PASADA IMPAR
*
LI $13 116
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
LI $0 0
wait2a
LI $4 129
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1aa
SUB $3 $10 $4
BZ levela
continue1aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait2a
*
*
waitb2a
LI $4 65
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2aa
SUB $3 $11 $4
BNZ levela
continue2aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb2a
*
*
waitc2a
LI $4 33
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3aa
SUB $3 $11 $4
BNZ levela
continue3aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc2a
*
*
waitd2a
LI $4 17
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4aa
SUB $3 $11 $4
BNZ levela
continue4aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitd2a
*
*
waite2a
LI $4 9
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5aa
SUB $3 $11 $4
BNZ levela
continue5aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waite2a
*
*
waitf2a
LI $4 5
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue6aa
SUB $3 $11 $4
BNZ levela
continue6aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitf2a
*
*
waitg2a
LI $4 3
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue7aa
SUB $3 $11 $4
BZ levelc
continue7aa
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitg2a
*
*
JL levelb
*
*
***********************************LEVEL 3***********************************
levelc
LI $15 3
WDP $15 P1
LI $0 0
*
*
LI $13 105
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait3
LI $4 131
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1b
SUB $3 $12 $4
BZ levela
continue1b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait3
*
*
waitb3
LI $4 67
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2b
SUB $3 $12 $4
BNZ levela
continue2b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb3
*
*
waitc3
LI $4 35
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3b
SUB $3 $12 $4
BNZ levela
continue3b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc3
*
*
waitd3
LI $4 19
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4b
SUB $3 $12 $4
BNZ levela
continue4b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitd3
*
*
waite3
LI $4 11
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5b
SUB $3 $12 $4
BNZ levela
continue5b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waite3
*
*
waitf3
LI $4 7
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue6b
SUB $3 $12 $4
BZ leveld
continue6b
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitf3
*
*
JL levelc
*
********************************************************Pasada impar
levelcpar
LI $15 3
WDP $15 P1
LI $0 0
*
*
LI $13 105
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait3a
LI $4 131
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1bb
SUB $3 $12 $4
BZ levela
continue1bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait3a
*
*
waitb3a
LI $4 67
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2bb
SUB $3 $12 $4
BNZ levela
continue2bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb3a
*
*
waitc3a
LI $4 35
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3bb
SUB $3 $12 $4
BNZ levela
continue3bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitc3a
*
*
waitd3a
LI $4 19
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4bb
SUB $3 $12 $4
BNZ levela
continue4bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitd3a
*
*
waite3a
LI $4 11
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5bb
SUB $3 $12 $4
BNZ levela
continue5bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waite3a
*
*
waitf3a
LI $4 7
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue6bb
SUB $3 $12 $4
BZ leveldpar
continue6bb
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitf3a
*
*
JL levelcpar
*
*
**************************************************Nivel 4************************
leveld
LI $15 4
LI $12 15
WDP $15 P1
*
*
LI $13 94
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait4
LI $4 135
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1c
SUB $3 $12 $4
BZ levela
continue1c
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait4
*
*
waitb4
LI $4 71
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2c
SUB $3 $12 $4
BNZ levela
continue2c
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb4
*
*
waitc4
LI $4 39
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3c
SUB $3 $12 $4
BNZ levela
continue3c
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitc4
*
*
waitd4
LI $4 23
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4c
SUB $3 $12 $4
BNZ levela
continue4c
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitd4
*
*
waite4
LI $4 15
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5c
SUB $3 $12 $4
BZ levele
continue5c
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waite4
*
*
**************************************************************************Pasada impar
leveldpar
LI $12 15
LI $15 4
WDP $15 P1
*
*
LI $13 94
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait4a
LI $4 135
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1cc
SUB $3 $12 $4
BZ levela
continue1cc
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait4a
*
*
waitb4a
LI $4 71
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2cc
SUB $3 $12 $4
BNZ levela
continue2cc
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb4a
*
*
waitc4a
LI $4 39
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3cc
SUB $3 $12 $4
BNZ levela
continue3cc
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc4a
*
*
waitd4a
LI $4 23
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4cc
SUB $3 $12 $4
BNZ levela
continue4cc
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitd4a
*
*
waite4a
LI $4 15
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue5cc
SUB $3 $12 $4
BZ levelepar
continue5cc
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waite4a
*
*
JL leveld
*
*
**************************************************Nivel 5************************
levele
LI $15 5
LI $12 31
WDP $15 P1
*
*
LI $13 83
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait5
LI $4 143
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1d
SUB $3 $12 $4
BZ levela
continue1d
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait5
*
*
waitb5
LI $4 79
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2d
SUB $3 $12 $4
BNZ levela
continue2d
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb5
*
*
waitc5
LI $4 47
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3d
SUB $3 $12 $4
BNZ levela
continue3d
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitc5
*
*
waitd5
LI $4 31
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4d
SUB $3 $12 $4
BZ levelfimpar
continue4d
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitd5
*
*
JL levele
*******************************************Pasada impar
levelepar
LI $15 5
LI $12 31
WDP $15 P1
*
*
LI $13 83
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait5a
LI $4 143
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1dd
SUB $3 $12 $4
BZ levela
continue1dd
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait5a
*
*
waitb5a
LI $4 79
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2dd
SUB $3 $12 $4
BNZ levela
continue2dd
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb5a
*
*
waitc5a
LI $4 47
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3dd
SUB $3 $12 $4
BNZ levela
continue3dd
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc5a
*
*
waitd5a
LI $4 31
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue4dd
SUB $3 $12 $4
BZ levelf
continue4dd
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitd5a
*
*
JL levelepar
*
*
*************************************************************NIVEL 6
levelf
LI $15 6
LI $12 63
WDP $15 P1
*
*
LI $13 72
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait6
LI $4 159
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1e
SUB $3 $12 $4
BZ levela
continue1e
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait6
*
*
waitb6
LI $4 95
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2e
SUB $3 $12 $4
BNZ levela
continue2e
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb6
*
*
waitc6
LI $4 63
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3e
SUB $3 $12 $4
BZ levelg
continue3e
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitc6
*
******************************************Pasada impar
levelfimpar
LI $15 6
LI $12 63
WDP $15 P1
*
*
LI $13 72
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait6a
LI $4 159
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1ee
SUB $3 $12 $4
BZ levela
continue1ee
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait6a
*
*
waitb6a
LI $4 95
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2ee
SUB $3 $12 $4
BNZ levela
continue2ee
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb6a
*
*
waitc6a
LI $4 63
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue3ee
SUB $3 $12 $4
BZ levelgpar
continue3ee
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc6a
*
*
JL levelf
*
*
*************************************************************NIVEL 7
levelg
LI $15 7
LI $12 127
WDP $15 P1
*
*
LI $13 61
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait7
LI $4 191
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1ef
SUB $3 $12 $4
BZ levela
continue1ef
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait7
*
*
waitb7
LI $4 127
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2ef
SUB $3 $12 $4
BZ levelh
continue2ef
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb7
*
*
JL levelg
*******************************Pasada impar
levelgpar
LI $15 7
LI $12 127
WDP $15 P1
*
*
LI $13 61
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait7a
LI $4 191
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1ff
SUB $3 $12 $4
BZ levela
continue1ff
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait7a
*
*
waitb7a
LI $4 127
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2ff
SUB $3 $12 $4
BZ levelhpar
continue2ff
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb7a
*
*
JL levelgpar
*
**************************************** NIVEL 8
levelh
LI $15 8
LI $12 255
WDP $15 P1
*
*
LI $13 40
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait8a
LI $4 127
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1g
SUB $3 $12 $4
BZ levela
continue1g
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ wait8a
*
*
waitb8a
LI $4 255
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2g
SUB $3 $12 $4
BZ levelfinal
continue2g
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ waitb8a
*
*
JL levelh
*
**************************************pasada impar
levelhpar
LI $15 8
LI $12 255
WDP $15 P1
*
*
LI $13 40
LI $14 0
WDP $13 P2
WDP $14 P3
*
*
wait8aa
LI $4 127
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue1gg
SUB $3 $12 $4
BZ levela
continue1gg
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BZ wait8aa
*
*
waitb8aa
LI $4 255
WDP $4 P0
LI $3 0
RDP $3 P2
SUB $3 $2 $3
BNZ continue2gg
SUB $3 $12 $4
BZ levelfinal
continue2gg
LI $4 0
RDP $4 P3
SUB $4 $2 $4
BNZ waitb8aa
*
*
JL levelhpar
*
*
levelfinal
LI $15 0
LI $12 255
WDP $15 P1
*
*
wait9
LI $4 255
WDP $4 P0
RDP $4 P3
SUB $4 $2 $4
BNZ wait9
*
*
waitb9
LI $4 0
WDP $4 P0
RDP $4 P3
SUB $4 $2 $4
BZ waitb9
*
*
waitc9
LI $4 255
WDP $4 P0
RDP $4 P3
SUB $4 $2 $4
BNZ waitc9
*
*
waitd9
LI $4 255
WDP $4 P0
RDP $4 P3
SUB $4 $2 $4
BZ waitd9