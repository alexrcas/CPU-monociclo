LI $4 1
LI $5 0
inicio
RDP $1 P0
RDP $2 P1
RDP $3 P2
SUB $2 $4 $2
BZ suma
SUB $3 $4 $3
BZ resta
escritura
WDP $5 P0
JL inicio
suma
ADD $5 $1 $5
JL escritura
resta
SUB $5 $1 $5
JL escritura