	push	sp
	push	10
	add
	pop	sp
	push	9
	push	0
	push	1
	push	2
	mul
	add
	push	0
	add
	pop	in
	pop	sb[in]
	push	0
	push	1
	push	2
	mul
	add
	push	0
	add
	pop	in
	push	sb[in]
	puti
	push	1
	pop	sb[0]
	push	0
	push	0
	push	2
	mul
	add
	push	0
	add
	pop	in
	push	sb[in]
	puti
	jmp	L501
L500:
	push	sp
	push	0
	add
	pop	sp
	push	3
	push	1
	push	1
	push	3
	mul
	add
	push	4
	add
	pop	in
	pop	sb[in]
	push	fp[-5]
	push	1
	push	1
	push	3
	mul
	add
	push	4
	add
	pop	in
	push	sb[in]
	add
	puti
	push	0
	ret
L501:
	push	5
	push	1
	call	L500, 2
	jmp	L999
L998:
	push	999999
	puti
L999:
