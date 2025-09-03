	.syntax unified
sub_08059BE4:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r2, #0x10
	lsrs r0, r4, #0x10
	cmp r0, #0x9f
	bhi _08059C24
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08059BFE
	movs r3, #0
_08059BFE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08059C08
	movs r1, #0xf0
_08059C08:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r2, r3
	bgt _08059C24
	ldr r0, _08059C2C
	asrs r1, r4, #0xf
	ldr r4, _08059C30
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r2, #8
	orrs r0, r3
	strh r0, [r1]
_08059C24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059C2C: .4byte gSomeBlend
_08059C30: .4byte 0x000046D4
	.syntax divided
