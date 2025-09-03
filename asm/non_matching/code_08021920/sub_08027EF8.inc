	.syntax unified
sub_08027EF8:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08027F24
	lsls r3, r3, #0x11
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0800289C
	adds r1, r0, #0
	cmp r1, r4
	bne _08027F28
	movs r0, #0
	b _08027F30
	.align 2, 0
_08027F24: .4byte gScriptLogic
_08027F28:
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	ands r0, r6
_08027F30:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
