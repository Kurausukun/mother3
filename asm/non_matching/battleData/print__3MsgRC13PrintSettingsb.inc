    .syntax unified
print__3MsgRC13PrintSettingsb:
	push {r4, r5, r6, lr}
	ldr r4, _08073628 @ =0xFFFFF020
	add sp, r4
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl len__3Msg
	cmp r0, #0
	ble _0807361C
	mov r0, sp
	bl sub_08083D40
	mov r0, sp
	adds r1, r4, #0
	bl sub_08084038
	mov r0, sp
	adds r1, r5, #0
	bl sub_080840A0
	mov r0, sp
	adds r1, r6, #0
	bl sub_080840B8
	mov r0, sp
	movs r1, #2
	bl sub_08083FE0
_0807361C:
	movs r3, #0xfe
	lsls r3, r3, #4
	add sp, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073628: .4byte 0xFFFFF020
    .syntax divided
