	.syntax unified
sub_0807FF98:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #3
	bl sub_08073F88
	adds r1, r0, #0
	str r1, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08080060
	adds r5, r0, #0
	cmp r5, #1
	beq _0807FFFE
	cmp r5, #1
	bgt _0808001C
	cmp r5, #0
	bne _0808001C
	ldr r0, [r4, #0x38]
	ldr r1, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _0807FFF8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807FFF8:
	str r5, [r4, #0x38]
	movs r0, #0
	b _08080038
_0807FFFE:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _08080014
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080014:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #1
	b _08080038
_0808001C:
	ldr r2, [r4, #0x38]
	cmp r2, #0
	beq _08080032
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08080032:
	movs r0, #0
	str r0, [r4, #0x38]
	movs r0, #2
_08080038:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
