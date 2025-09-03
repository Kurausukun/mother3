	.syntax unified
sub_080166D8:
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0801670C
	ldrh r2, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #8]
	movs r4, #0
	orrs r0, r2
	strh r0, [r1, #8]
	bl sub_08004FB4
	ldr r3, _08016710
	mov r0, sp
	strh r4, [r0]
	ldr r2, _08016714
	ldr r5, _08016718
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r5, #4
	b _0801675A
	.align 2, 0
_0801670C: .4byte gSomeBlend
_08016710: .4byte 0x0000C001
_08016714: .4byte gGame
_08016718: .4byte 0x0000595E
_0801671C:
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0xf
	beq _08016740
	ldr r1, _08016794
	lsls r0, r0, #2
	adds r1, r0, r1
	lsrs r0, r2, #4
	lsls r0, r0, #7
	adds r1, r1, r0
	strh r3, [r1]
	strh r3, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r3, [r0]
	adds r1, #0x42
	strh r3, [r1]
_08016740:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08016772
	ldr r2, _08016798
	ldr r1, _0801679C
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r5, _080167A0
_0801675A:
	adds r2, r2, r5
	adds r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, _080167A4
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0801671C
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_08016772:
	ldr r0, _080167A8
	ldr r1, _080167AC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	bl sub_08001960
	bl sub_08005C4C
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08016794: .4byte gUnknown_02016078
_08016798: .4byte gGame
_0801679C: .4byte 0x0000595E
_080167A0: .4byte 0x00005962
_080167A4: .4byte gUnknown_080C2248
_080167A8: .4byte gSomeBlend
_080167AC: .4byte 0x00002C90
	.syntax divided
