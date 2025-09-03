	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080870E8
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080870D0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _080870E0
_080870D0:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
_080870E0:
	ldrh r1, [r4, #0x2a]
	movs r0, #1
	orrs r0, r1
	b _08087114
_080870E8:
	ldrh r1, [r4, #0x2a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08087104
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	adds r1, #3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0806DB60
	b _0808710E
_08087104:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrh r1, [r4, #0x28]
	bl sub_0806DB60
_0808710E:
	ldrh r1, [r4, #0x2a]
	ldr r0, _0808711C
	ands r0, r1
_08087114:
	strh r0, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808711C: .4byte 0x0000FFFE
	.syntax divided
