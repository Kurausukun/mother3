	.syntax unified
sub_080512CC:
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, sp
	strh r0, [r1]
	ldr r5, _08051328
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805133A
	bl sub_0805213C
	bl sub_080521A4
	movs r2, #1
	ands r2, r0
	ldrb r3, [r4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0805132C
	movs r0, #0
	b _08051434
	.align 2, 0
_08051328: .4byte gUnknown_020050C0
_0805132C:
	ldr r0, _0805143C
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xf4
	movs r2, #0x18
	bl CpuSmartSet
_0805133A:
	ldr r1, _08051440
	movs r0, #2
	bl sub_080910AC
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805191C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080513A0
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805191C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080513A0
	ldr r4, _08051444
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080513A0
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	adds r3, r4, #0
	adds r3, #0xcc
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x68
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	bl sub_080523B8
_080513A0:
	mov r4, sp
	adds r4, #2
	ldr r1, _08051444
	adds r6, r1, #0
	adds r6, #0x68
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r4]
	add r5, sp, #4
	adds r1, #0xcc
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r5]
	bl snd_vsync_off
	ldrh r0, [r4]
	cmp r0, #0
	beq _080513DE
	movs r0, #0
	bl sub_0805153C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080513DE
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
_080513DE:
	ldrh r0, [r5]
	cmp r0, #0
	beq _080513FE
	movs r0, #1
	bl sub_0805153C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080513FE
	ldr r0, _08051444
	adds r0, #0xcc
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
_080513FE:
	bl snd_vsync_on
	ldr r2, _08051444
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	ldrh r1, [r4]
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _08051424
	adds r0, r2, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	ldrh r1, [r5]
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq _08051432
_08051424:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_08051432:
	movs r0, #1
_08051434:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805143C: .4byte gUnknown_02015E20
_08051440: .4byte gUnknown_02005204
_08051444: .4byte gUnknown_020050C0
	.syntax divided
