	.syntax unified
sub_08009E38:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08009EB4
	adds r0, r5, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08009EB8
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08009EBC
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08009EC0
	adds r0, r5, r2
	movs r1, #0
	strh r3, [r0]
	subs r2, #4
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08009ED0
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080019DC
	adds r4, r5, r4
	ldr r1, _08009EC4
	adds r0, r4, #0
	bl sub_080019DC
	ldr r1, _08009EC8
	adds r0, r5, r1
	movs r1, #0x60
	bl sub_080019DC
	ldr r2, _08009ECC
	adds r0, r5, r2
	movs r1, #0x60
	bl sub_080019DC
	b _08009EFA
	.align 2, 0
_08009EB4: .4byte 0x0000C513
_08009EB8: .4byte 0x0000C51A
_08009EBC: .4byte 0x0000322A
_08009EC0: .4byte 0x0000C518
_08009EC4: .4byte 0x00002FD0
_08009EC8: .4byte 0x00003168
_08009ECC: .4byte 0x000031C8
_08009ED0:
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl memclear
	adds r4, r5, r4
	ldr r1, _08009F04
	adds r0, r4, #0
	bl memclear
	ldr r1, _08009F08
	adds r0, r5, r1
	movs r1, #0x60
	bl memclear
	ldr r2, _08009F0C
	adds r0, r5, r2
	movs r1, #0x60
	bl memclear
_08009EFA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009F04: .4byte 0x00002FD0
_08009F08: .4byte 0x00003168
_08009F0C: .4byte 0x000031C8
	.syntax divided
