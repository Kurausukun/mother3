	.syntax unified
sub_0806EF34:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0806A9A4
	adds r4, r0, #0
	movs r1, #1
	bl sub_0806AB98
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806AB9C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806ABA0
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	bl sub_0806ABA4
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	bl sub_0806ABA8
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_0806ABB4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806ABC0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x3f
	bl sub_0806ABCC
	ldrh r3, [r7, #0x34]
	mov r2, sp
	movs r1, #0x78
	rsbs r1, r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABD8
	ldrh r1, [r7, #0x36]
	ldrh r0, [r7, #0x34]
	subs r1, r1, r0
	add r2, sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	strh r1, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABE4
	bl sub_0806B070
	mov r8, r0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x3c
	movs r5, #0x80
	lsls r5, r5, #0xa
_0806EFC8:
	lsrs r1, r5, #0x10
	mov r0, r8
	adds r2, r4, #0
	bl sub_0806BAB8
	adds r4, #4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0806EFC8
	movs r3, #0
	ldr r1, _0806F018
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F01C
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F020
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0806F024
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	str r0, [r1]
	ldr r0, _0806F028
	str r0, [r1, #4]
	ldr r0, _0806F02C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F018: .4byte 0x040000B0
_0806F01C: .4byte 0x0000C5FF
_0806F020: .4byte 0x00007FFF
_0806F024: .4byte 0x040000BA
_0806F028: .4byte 0x04000018
_0806F02C: .4byte 0xA6600002
	.syntax divided
