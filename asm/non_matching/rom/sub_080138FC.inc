	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xa0
	bl sub_0803B800
	adds r6, r0, #0
	ldr r4, _08013980
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x9c
	bl sub_08001B18
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r0, [sp]
	orrs r0, r1
	ldrb r3, [r5, #0x14]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x11
	ldr r2, _08013984
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1f
	lsls r1, r1, #0x12
	ldr r2, _08013988
	ands r0, r2
	orrs r0, r1
	lsrs r3, r3, #3
	lsls r3, r3, #0x13
	ldr r1, _0801398C
	ands r0, r1
	orrs r0, r3
	ldrb r1, [r5, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	ldr r2, _08013990
	ands r0, r2
	orrs r0, r1
	ldrh r2, [r5, #0x10]
	ldr r1, _08013994
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x9c
	mov r0, sp
	movs r2, #4
	bl sub_08001B18
	subs r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08001B18
	adds r0, r6, #0
	bl sub_0803B860
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013980: .4byte gUnknown_0200BB44
_08013984: .4byte 0xFFFDFFFF
_08013988: .4byte 0xFFFBFFFF
_0801398C: .4byte 0xFF07FFFF
_08013990: .4byte 0xF0FFFFFF
_08013994: .4byte 0xFFFF0000
	.syntax divided
