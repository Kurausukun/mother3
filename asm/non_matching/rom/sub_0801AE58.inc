	.syntax unified
sub_0801AE58:
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801AED4
	ldr r1, _0801AED8
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #2
	bl sub_0801B45C
	adds r6, r0, #0
	ldr r1, _0801AEDC
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r4
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #2]
	movs r5, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801AEF4
	add r4, sp, #4
_0801AE94:
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #4
	ldr r2, _0801AEDC
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #4
	strh r0, [r4, #2]
	ldrb r0, [r6]
	lsrs r0, r0, #6
	adds r0, #1
	lsls r0, r0, #4
	strh r0, [r4, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1a
	adds r0, #0x10
	strh r0, [r4, #6]
	adds r0, r4, #0
	mov r1, sp
	bl sub_080023A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801AEE0
	cmp r7, #0
	beq _0801AED0
	strh r5, [r7]
_0801AED0:
	adds r0, r6, #0
	b _0801AEF6
	.align 2, 0
_0801AED4: .4byte gGame
_0801AED8: .4byte 0x000067AC
_0801AEDC: .4byte 0xFFFF0000
_0801AEE0:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #0xc
	cmp r5, #0x31
	bhi _0801AEF4
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801AE94
_0801AEF4:
	movs r0, #0
_0801AEF6:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
