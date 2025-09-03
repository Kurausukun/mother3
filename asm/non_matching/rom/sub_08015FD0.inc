	.syntax unified
sub_08015FD0:
	push {r4, r5, lr}
	ldr r4, _08016028
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	bl sub_08004FB4
	ldr r5, _0801602C
	ldrh r1, [r5, #4]
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_0801952C
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r5, #2
	ldrh r2, [r0]
	subs r0, r5, #4
	ldrh r3, [r0]
	movs r0, #0x5a
	movs r1, #0
	bl sub_08002E60
	strh r0, [r5, #4]
	ldr r1, _08016030
	adds r4, r4, r1
	ldrb r2, [r4]
	movs r3, #0x40
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016034
	movs r0, #0
	b _08016036
	.align 2, 0
_08016028: .4byte gSomeBlend
_0801602C: .4byte gUnknown_0200B564
_08016030: .4byte 0x0001ED10
_08016034:
	movs r0, #1
_08016036:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
