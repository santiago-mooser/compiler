	push	sp
	push	2
	add
	pop	sp
	push	3
	pop	sb[0]
L000:
	push	sb[0]
	push	6
	compLT
	j0	L001
	push	0
	pop	sb[1]
L003:
	push	sb[1]
	push	sb[0]
	compLE
	j0	L004
	push	sb[1]
	puti
L005:
	push	sb[1]
	push	1
	add
	pop	sb[1]
	jmp	L003
L004:
L002:
	push	sb[0]
	push	1
	add
	pop	sb[0]
	jmp	L000
L001:
	jmp	L999
L998:
	push	999999
	puti
L999:
