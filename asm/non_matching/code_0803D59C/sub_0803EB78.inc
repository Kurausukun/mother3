	.syntax unified
sub_0803EB78:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	movs r0, #0xb1
	lsls r0, r0, #6
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803EB9A
	ldr r1, _0803EC0C
	adds r0, r5, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_0803EC28
_0803EB9A:
	ldr r1, _0803EC10
	adds r7, r5, r1
	ldrh r0, [r7]
	cmp r0, #0
	beq _0803EBB4
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, _0803EC14
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_0803EC28
_0803EBB4:
	ldr r0, _0803EC18
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _0803EBCE
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _0803EC1C
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_0803EC28
_0803EBCE:
	ldr r2, _0803EC20
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803EBE8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r1, _0803EC24
	movs r2, #0x20
	movs r3, #0x20
	bl sub_0803EC28
_0803EBE8:
	ldrh r0, [r4]
	movs r0, #0
	strh r0, [r4]
	ldrh r0, [r4]
	ldrh r1, [r6]
	strh r0, [r6]
	ldrh r0, [r6]
	ldrh r1, [r7]
	strh r0, [r7]
	ldrh r0, [r7]
	mov r2, r8
	ldrh r1, [r2]
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC0C: .4byte 0x0600E000
_0803EC10: .4byte 0x00002C42
_0803EC14: .4byte 0x0600E800
_0803EC18: .4byte 0x00002C44
_0803EC1C: .4byte 0x0600F000
_0803EC20: .4byte 0x00002C46
_0803EC24: .4byte 0x0600F800
	.syntax divided
