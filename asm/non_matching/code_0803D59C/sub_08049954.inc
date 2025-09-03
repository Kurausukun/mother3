	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _0804996C
	ldr r2, _08049970
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #7
	bne _08049974
	movs r0, #8
	b _0804999A
	.align 2, 0
_0804996C: .4byte gSomeBlend
_08049970: .4byte 0x00004260
_08049974:
	ldr r2, _08049990
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _08049994
	lsrs r0, r2, #5
	bl sub_08002254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0804999A
	.align 2, 0
_08049990: .4byte 0x0000C5AC
_08049994:
	ldr r1, _080499A0
	adds r0, r3, r1
	ldrb r0, [r0]
_0804999A:
	pop {r1}
	bx r1
	.align 2, 0
_080499A0: .4byte 0x0000C5A0
	.syntax divided
