	.syntax unified
sub_0807DFDC:
	push {r4, lr}
	mov ip, r0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, #1
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r4, ip
	adds r4, #0x36
	movs r3, #0
	ldrsb r3, [r4, r3]
	subs r3, #1
	mov r0, ip
	bl sub_0807E994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E006
	movs r0, #0
	b _0807E00E
_0807E006:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0807E00E:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
