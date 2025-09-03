	.syntax unified
sub_08076B30:
	push {r4, lr}
	adds r4, r0, #0
	bl attackdata_c8__10UnitTarget
	cmp r0, #0
	beq _08076B40
_08076B3C:
	movs r0, #1
	b _08076BB6
_08076B40:
	adds r0, r4, #0
	bl sub_08076BBC
	adds r0, r4, #0
	bl sub_08076D18
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08076B98
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080770C8
	adds r0, r4, #0
	bl sub_08077A64
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _08076BA2
_08076B7A:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
	ldr r0, [r4, #0x60]
	cmp r0, #1
	beq _08076B7A
	b _08076BA2
_08076B98:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_080770C8
_08076BA2:
	ldr r0, [r4, #0x60]
	cmp r0, #3
	beq _08076B3C
	cmp r0, #3
	bgt _08076BB4
	cmp r0, #2
	bne _08076BB4
	movs r0, #0
	b _08076BB6
_08076BB4:
	movs r0, #2
_08076BB6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
