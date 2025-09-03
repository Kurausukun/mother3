	.syntax unified
sub_080167B0:
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08016844
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	movs r5, #0
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r0, _08016848
	adds r4, r4, r0
	ldr r2, _0801684C
	ldr r1, _08016850
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r0, _08016854
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08016812
	movs r3, #0
	mov r5, sp
	movs r6, #1
_080167F4:
	adds r2, r4, r3
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08016808
	cmp r1, #8
	beq _08016808
	adds r0, #1
	strb r0, [r2]
	strh r6, [r5]
_08016808:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x61
	bls _080167F4
_08016812:
	ldr r1, _08016844
	ldr r2, _08016858
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	bl sub_08001960
	bl sub_08005C4C
	movs r1, #0
	ldr r0, _0801684C
	ldr r2, _08016850
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0x61
	bls _08016838
	movs r1, #1
_08016838:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08016844: .4byte gSomeBlend
_08016848: .4byte 0x00013210
_0801684C: .4byte gGame
_08016850: .4byte 0x00005962
_08016854: .4byte 0x00009D10
_08016858: .4byte 0x000121BA
	.syntax divided
