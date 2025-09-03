    .syntax unified
attackdata_70:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	b _0807627C
_08076250:
	ldr r0, [r7, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807627C:
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08076250
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	bls _080762AA
	b _080765C2
_080762AA:
	lsls r0, r0, #2
	ldr r1, _080762B4 @ =_080762B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080762B4: .4byte _080762B8
_080762B8: @ jump table
	.4byte _080762CC @ case 0
	.4byte _08076310 @ case 1
	.4byte _08076378 @ case 2
	.4byte _08076410 @ case 3
	.4byte _08076470 @ case 4
_080762CC:
	movs r6, #0
	b _080762FA
_080762D0:
	ldr r1, [r7, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r1, r3
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r7, r4
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
_080762FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080762D0
	b _080765C2
_08076310:
	movs r4, #0
	mov sb, r4
	b _08076362
_08076316:
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r5, r7, r5
	adds r6, r0, #0
	adds r6, #0xf0
	movs r3, #0
	ldrsh r4, [r6, r3]
	adds r4, r7, r4
	adds r1, r0, #0
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sb
	bl sub_0807067C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r4, #1
	add sb, r4
_08076362:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sb, r0
	blt _08076316
	b _080765C2
_08076378:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	adds r5, r7, #0
	adds r5, #0x2c
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _080763CC
	cmp r1, #0
	ble _080763CC
	adds r6, r1, #0
_0807639E:
	ldr r1, [r5, #4]
	subs r1, #1
	movs r0, #0
	bl randS32_
	adds r4, r0, #0
	ldr r1, [r5, #4]
	subs r1, #1
	movs r0, #0
	bl randS32_
	ldr r1, [r5, #8]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r4]
	str r2, [r0]
	subs r6, #1
	cmp r6, #0
	bne _0807639E
_080763CC:
	movs r6, #0
	b _080763FA
_080763D0:
	ldr r1, [r7, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r5, r1, r4
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r7, r4
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	adds r6, #1
_080763FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _080763D0
	b _080765C2
_08076410:
	movs r4, #0
	mov sb, r4
	movs r0, #0x2c
	adds r0, r0, r7
	mov sl, r0
	b _0807645A
_0807641C:
	ldr r4, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r6, r7, r6
	adds r4, #0xf0
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sl
	ldr r1, [r0, #4]
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	mov r3, r8
	ldr r2, [r3, #4]
	adds r0, r6, #0
	bl _call_via_r2
	movs r4, #1
	add sb, r4
_0807645A:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp sb, r0
	blt _0807641C
	b _080765C2
_08076470:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r6, #0
	b _080764F0
_0807647C:
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [sp, #0xc]
	mov r5, sp
	add r4, sp, #0xc
	mov r8, r4
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	adds r6, #1
	mov sb, r6
	cmp r0, r4
	bge _080764DC
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _080764AE
	adds r1, r0, #0
_080764AE:
	adds r4, r1, #0
	lsls r0, r4, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080764CE
	adds r1, r0, #0
_080764C4:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080764C4
_080764CE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080764D8
	bl __builtin_vec_delete
_080764D8:
	str r4, [r5]
	str r6, [r5, #8]
_080764DC:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
	mov r6, sb
_080764F0:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0807647C
	movs r0, #0
	mov r8, r0
	b _08076574
_0807650A:
	subs r5, r0, #1
	subs r0, #2
	movs r1, #1
	add r1, r8
	mov sl, r1
	cmp r0, r8
	blt _08076572
	movs r2, #0xcc
	lsls r2, r2, #1
	mov sb, r2
_0807651E:
	lsls r3, r5, #2
	ldr r0, [sp, #8]
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sb
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	str r3, [sp, #0x10]
	bl _call_via_r1
	str r0, [sp, #0x14]
	subs r6, r5, #1
	lsls r5, r6, #2
	ldr r0, [sp, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sb
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bge _0807656A
	ldr r0, [sp, #8]
	adds r2, r3, r0
	ldr r3, [r2]
	adds r0, r5, r0
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_0807656A:
	adds r5, r6, #0
	subs r0, r5, #1
	cmp r0, r8
	bge _0807651E
_08076572:
	mov r8, sl
_08076574:
	ldr r0, [sp, #4]
	cmp r8, r0
	blt _0807650A
	movs r4, #0
	b _0807659C
_0807657E:
	ldr r3, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r7, r0
	lsls r2, r4, #2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r3, #4]
	bl _call_via_r2
	adds r4, #1
_0807659C:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #4]
	cmp r1, r0
	ble _080765B4
	adds r1, r0, #0
_080765B4:
	cmp r4, r1
	blt _0807657E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080765C2
	bl __builtin_vec_delete
_080765C2:
	ldr r1, [r7, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	ble _080765DE
	movs r1, #1
_080765DE:
	adds r0, r1, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    .syntax divided
