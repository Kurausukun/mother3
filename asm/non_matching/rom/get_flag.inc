	.syntax unified
get_flag:
	adds r2, r0, #0
	lsls r2, r2, #0x10
	ldr r0, _08002994
	lsrs r1, r2, #0x13
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r1, r2
	lsrs r1, r1, #0x10
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08002994: .4byte gSave
	.syntax divided
