    .syntax unified
sub_080736B4:
	push {r4, r5, lr}
	ldr r4, _080736F0 @ =0xFFFFEB10
	add sp, r4
	adds r4, r0, #0
	adds r5, r1, #0
	bl len__3Msg
	cmp r0, #0
	ble _080736E4
	mov r0, sp
	bl sub_08084F08
	mov r0, sp
	adds r1, r5, #0
	bl sub_08085130
	mov r0, sp
	adds r1, r4, #0
	bl sub_080851A0
	mov r0, sp
	movs r1, #2
	bl sub_080850E0
_080736E4:
	ldr r3, _080736F4 @ =0x000014F0
	add sp, r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080736F0: .4byte 0xFFFFEB10
_080736F4: .4byte 0x000014F0
    .syntax divided
