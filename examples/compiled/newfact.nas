	push	sp
	push	4
	add
	pop	sp
	push	"This is factorial!"
	puts
	push	0
	pop	sb[0]
L000:
	push	sb[0]
	push	0
	compEQ
	j0	L001
	push	"Please input a number between 0 and 20: "
	puts_
	geti
	pop	sb[1]
	push	sb[1]
	push	0
	compGE
	push	sb[1]
	push	20
	compLE
	and
	j0	L002
	push	1
	pop	sb[0]
L002:
	jmp	L000
L001:
	push	sb[1]
	pop	sb[2]
	push	1
	pop	sb[3]
L003:
	push	sb[2]
	push	1
	compGT
	j0	L004
	push	sb[3]
	push	sb[2]
	mul
	pop	sb[3]
	push	sb[2]
	push	1
	sub
	pop	sb[2]
	jmp	L003
L004:
	push	"Cool! The factorial of "
	puts_
	push	sb[1]
	puti_
	push	" is "
	puts_
	push	sb[3]
	puti
	jmp	L999
L998:
	push	999999
	puti
L999:
