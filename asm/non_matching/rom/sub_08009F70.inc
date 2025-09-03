	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08009FC0
_08009F78:
	movs r0, #0x8c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r5, r2
	ldr r0, _08009FC4
	adds r3, r2, r0
	ldrh r0, [r3]
	ldr r7, _08009FC8
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08009FCC
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r3]
	ldr r7, _08009FD0
	adds r2, r2, r7
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x27
	bls _08009F78
	adds r0, r5, #0
	bl sub_08009FD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009FC0: .4byte 0xFFFFF000
_08009FC4: .4byte 0x0000969A
_08009FC8: .4byte 0x000003FF
_08009FCC: .4byte 0x00009699
_08009FD0: .4byte 0x00009698
	.syntax divided
