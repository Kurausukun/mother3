	.syntax unified
sub_080BABD0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl tellStatusWoreOff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BAC82
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08073E3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080BAC82
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	cmp r0, #0
	beq _080BAC82
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r5, #0
	bl PlayAnimation
	ldr r2, [r6, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r6, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	b _080BAC84
_080BAC82:
	movs r0, #0
_080BAC84:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
