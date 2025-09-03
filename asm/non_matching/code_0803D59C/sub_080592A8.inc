	.syntax unified
sub_080592A8:
	push {lr}
	bl sub_080037D8
	ldr r0, _08059300
	ldrb r0, [r0]
	cmp r0, #0
	bne _080592FC
	movs r0, #0
	bl sub_08003B58
	movs r0, #1
	bl sub_08003B58
	ldr r0, _08059304
	bl sub_080038A4
	ldr r0, _08059308
	bl sub_080038A4
	movs r0, #0xf6
	lsls r0, r0, #2
	bl sub_080038A4
	ldr r0, _0805930C
	bl sub_080038A4
	ldr r0, _08059310
	bl sub_080038A4
	ldr r0, _08059314
	bl sub_080038A4
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
	ldr r0, _08059318
	bl sub_080038A4
	movs r0, #0xe
	bl sub_080038A4
_080592FC:
	pop {r0}
	bx r0
	.align 2, 0
_08059300: .4byte gUnknown_02015DC0
_08059304: .4byte 0x000003D6
_08059308: .4byte 0x000003D7
_0805930C: .4byte 0x000003D9
_08059310: .4byte 0x000003DA
_08059314: .4byte 0x000003DB
_08059318: .4byte 0x000003DD
	.syntax divided
