	.syntax unified
sub_08066004:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x50
	bl __builtin_new
	bl sub_08066294
	str r0, [r4, #0x30]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r0, #0
	str r0, [r4, #0x34]
_08066028:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _08066034
	cmp r0, #1
	beq _0806603C
	b _08066042
_08066034:
	adds r0, r4, #0
	bl sub_0806609C
	b _08066042
_0806603C:
	adds r0, r4, #0
	bl sub_08066108
_08066042:
	ldr r0, [r4, #0x34]
	cmp r0, #2
	bne _08066028
	ldr r0, [r4, #0x30]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806607C
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08066078
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066078:
	movs r0, #0
	b _08066094
_0806607C:
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _08066092
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08066092:
	movs r0, #1
_08066094:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
