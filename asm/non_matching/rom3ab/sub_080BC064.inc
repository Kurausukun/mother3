	.syntax unified
sub_080BC064:
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08082A10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BC07C
	movs r0, #0
	b _080BC0F0
_080BC07C:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BC0EE
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
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
	ldr r1, [r5, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	bl sub_0807066C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl hitPlayer
	movs r0, #0xaa
	adds r1, r5, #0
	adds r2, r5, #0
	bl PlayAnimation
_080BC0EE:
	movs r0, #1
_080BC0F0:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
