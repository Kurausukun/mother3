    .syntax unified
	push {r4, lr}
	ldr r4, _080736AC @ =0xFFFFE894
	add sp, r4
	adds r4, r0, #0
	bl len__3Msg
	cmp r0, #0
	ble _080736A2
	mov r0, sp
	bl sub_080856E8
	mov r0, sp
	adds r1, r4, #0
	bl sub_080859EC
	mov r0, sp
	movs r1, #2
	bl sub_08085988
_080736A2:
	ldr r3, _080736B0 @ =0x0000176C
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080736AC: .4byte 0xFFFFE894
_080736B0: .4byte 0x0000176C
    .syntax divided
