	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r1, _08050784
	ldr r2, _08050788
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r5, r2
	bhs _0805077C
	adds r7, r1, #0
	adds r6, r0, #0
_0805074C:
	lsls r0, r5, #2
	ldr r2, _0805078C
	adds r1, r7, r2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #5
	bne _08050770
	adds r0, r4, #0
	bl sub_08051144
	adds r0, r4, #0
	bl sub_08050790
_08050770:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r6]
	cmp r5, r0
	blo _0805074C
_0805077C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050784: .4byte gSomeBlend
_08050788: .4byte 0x00004530
_0805078C: .4byte 0x00004504
	.syntax divided
