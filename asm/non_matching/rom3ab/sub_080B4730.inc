	.syntax unified
sub_080B4730:
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl dynaCastMonster
	adds r4, r0, #0
	cmp r4, #0
	beq _080B47BE
	adds r5, r4, #0
	adds r5, #0x20
	add r6, sp, #8
	b _080B4796
_080B475C:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
	ldr r2, [r4, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #4]
	str r0, [sp]
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #4
	mov r1, sp
	strh r0, [r1]
	ldr r1, [r4, #0x20]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0x1c]
	mov r1, sp
	bl _call_via_r2
_080B4796:
	ldr r2, [r4, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	ldr r1, _080B47C8
	cmp r0, r1
	ble _080B475C
	adds r0, r4, #0
	bl sub_08072FE0
	adds r0, r7, #0
	bl sub_080821A0
_080B47BE:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B47C8: .4byte 0x010F0000
	.syntax divided
