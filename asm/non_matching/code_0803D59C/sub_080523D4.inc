	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0805243C
	ldr r0, _08052440
	adds r5, r4, r0
	movs r0, #0
	strh r0, [r5]
	movs r1, #0xc2
	lsls r1, r1, #6
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
	movs r6, #0
	adds r7, r4, #0
	ldr r3, _08052444
	mov r8, r3
_080523FA:
	lsls r4, r6, #1
	ldr r1, _08052448
	adds r0, r7, r1
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	lsls r2, r6, #2
	add r2, r8
	lsls r0, r6, #0xa
	movs r3, #0xc2
	lsls r3, r3, #6
	adds r1, r7, r3
	adds r0, r0, r1
	ldr r3, [r2]
	adds r1, r4, #0
	adds r2, r6, #0
	bl _call_via_r3
	ldrh r0, [r4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080523FA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805243C: .4byte gSomeBlend
_08052440: .4byte 0x00004268
_08052444: .4byte gUnknown_09B8FF70
_08052448: .4byte 0x0000426A
	.syntax divided
