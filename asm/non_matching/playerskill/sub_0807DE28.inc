	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #1
	movs r2, #0
	bl sub_0807E428
_0807DE38:
	ldr r0, [r4, #0x40]
	subs r0, #1
	cmp r0, #4
	bhi _0807DE38
	lsls r0, r0, #2
	ldr r1, _0807DE4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807DE4C: .4byte _0807DE50
_0807DE50:
	.4byte _0807DE64
	.4byte _0807DE6E
	.4byte _0807DE90
	.4byte _0807DE94
	.4byte _0807DEB2
_0807DE64:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	b _0807DE7A
_0807DE6E:
	cmp r5, #1
	bne _0807DE84
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
_0807DE7A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0807DE38
_0807DE84:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_0807E428
	b _0807DE38
_0807DE90:
	movs r0, #0
	b _0807DECE
_0807DE94:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807DEAA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807DEAA:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _0807DECE
_0807DEB2:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807DEC8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807DEC8:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_0807DECE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
