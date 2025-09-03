	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #4
	bhi _08003E6C
	movs r0, #0
	b _08003E9C
_08003E6C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08003E78
	movs r0, #0x64
	b _08003E9C
_08003E78:
	ldr r0, _08003E94
	cmp r2, r0
	bhi _08003E98
	movs r1, #0xc8
	lsls r1, r1, #1
	movs r3, #0xff
	lsls r3, r3, #2
	movs r0, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08003E9C
	.align 2, 0
_08003E94: .4byte 0x000003FB
_08003E98:
	movs r0, #0xc8
	lsls r0, r0, #1
_08003E9C:
	pop {r1}
	bx r1
	.syntax divided
