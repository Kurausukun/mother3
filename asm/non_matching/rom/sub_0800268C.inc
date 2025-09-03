	.syntax unified
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _0800269C
	movs r0, #1
	b _080026B6
_08002698:
	adds r0, r1, #0
	b _080026B6
_0800269C:
	movs r1, #1
	ldr r3, _080026BC
_080026A0:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r2, r0
	blo _08002698
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _080026A0
	movs r0, #0xa
_080026B6:
	pop {r1}
	bx r1
	.align 2, 0
_080026BC: .4byte gUnknown_08CDB960
	.syntax divided
