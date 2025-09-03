	.syntax unified
sub_080486A0:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080486BC
	adds r0, r5, #0
	movs r1, #0x58
	bl sub_0800289C
	adds r4, r0, #0
	cmp r4, #0
	bne _080486C0
	movs r0, #0
	b _080486D0
	.align 2, 0
_080486BC: .4byte gMenuData
_080486C0:
	adds r0, r5, #0
	movs r1, #0x59
	bl sub_0800289C
	lsls r1, r6, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	adds r0, r0, r1
_080486D0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
