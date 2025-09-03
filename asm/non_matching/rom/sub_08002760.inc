	.syntax unified
sub_08002760:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r0, #0
	bne _0800277C
	ldr r0, _08002778
	lsls r1, r1, #1
	b _08002788
	.align 2, 0
_08002778: .4byte gUnknown_08CDB988
_0800277C:
	cmp r0, #0
	blt _08002794
	cmp r0, #2
	bgt _08002794
	ldr r0, _08002790
	lsls r1, r2, #1
_08002788:
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002796
	.align 2, 0
_08002790: .4byte gUnknown_08CDB990
_08002794:
	movs r0, #0
_08002796:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
