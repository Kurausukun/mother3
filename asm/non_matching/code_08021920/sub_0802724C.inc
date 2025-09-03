	.syntax unified
sub_0802724C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0801B3D8
	lsls r1, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B3FC
	ldr r1, _080272D8
	bl sub_08090F88
	movs r0, #0xc1
	lsls r0, r0, #5
	bl sub_0803B800
	mov r8, r0
	adds r0, r5, #0
	bl sub_0801B444
	mov r1, r8
	bl sub_08090F8C
	lsls r4, r4, #9
	add r4, r8
	ldr r6, _080272DC
	ldr r1, _080272E0
	adds r0, r6, r1
	ldr r5, _080272E4
	str r5, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001B18
	mov r0, r8
	bl sub_0803B860
	ldr r1, _080272E8
	adds r0, r6, r1
	ldrh r0, [r0]
	bl sub_080123B0
	ldr r0, _080272EC
	adds r5, r5, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_08007CE8
	ldr r1, _080272F0
	adds r6, r6, r1
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080272D8: .4byte 0x0600F800
_080272DC: .4byte gGame
_080272E0: .4byte 0x000058AC
_080272E4: .4byte gUnknown_020294B8
_080272E8: .4byte 0x000067AC
_080272EC: .4byte 0xFFFECB70
_080272F0: .4byte 0x000067C5
	.syntax divided
