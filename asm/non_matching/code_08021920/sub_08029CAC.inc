	.syntax unified
sub_08029CAC:
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	movs r1, #0
_08029CB8:
	mov r3, sp
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CB8
	movs r3, #0
	movs r2, #0
	ldr r5, _08029D0C
_08029CCE:
	adds r0, r2, r5
	ldrb r1, [r0]
	cmp r1, r4
	beq _08029CE2
	mov r6, sp
	adds r0, r6, r3
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08029CE2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CCE
	movs r2, #0
	ldr r3, _08029D0C
_08029CF0:
	adds r1, r2, r3
	mov r4, sp
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _08029CF0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029D0C: .4byte gUnknown_0200DE94
	.syntax divided
