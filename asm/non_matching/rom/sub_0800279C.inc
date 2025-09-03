	.syntax unified
sub_0800279C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _080027C4
	cmp r0, #1
	bgt _080027B6
	cmp r0, #0
	beq _080027BC
	b _080027DC
_080027B6:
	cmp r2, #2
	beq _080027CC
	b _080027DC
_080027BC:
	ldr r0, _080027C0
	b _080027CE
	.align 2, 0
_080027C0: .4byte gUnknown_08CDB998
_080027C4:
	ldr r0, _080027C8
	b _080027CE
	.align 2, 0
_080027C8: .4byte gUnknown_08CDB9A0
_080027CC:
	ldr r0, _080027D8
_080027CE:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080027DE
	.align 2, 0
_080027D8: .4byte gUnknown_08CDB9A8
_080027DC:
	movs r0, #0
_080027DE:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
