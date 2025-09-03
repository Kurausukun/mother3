	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08049904
	ldr r1, _08049908
	adds r0, r2, r1
	ldrb r0, [r0]
	lsrs r0, r0, #5
	cmp r0, #1
	beq _08049924
	cmp r0, #1
	bgt _0804990C
	cmp r0, #0
	beq _08049912
	b _0804994C
	.align 2, 0
_08049904: .4byte gSomeBlend
_08049908: .4byte 0x0000C5AC
_0804990C:
	cmp r0, #2
	beq _0804993C
	b _0804994C
_08049912:
	ldr r0, _08049920
	adds r2, r2, r0
	movs r0, #0x16
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	b _08049930
	.align 2, 0
_08049920: .4byte 0x0000C59C
_08049924:
	ldr r1, _08049938
	adds r0, r2, r1
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r0, [r0]
_08049930:
	adds r0, r0, r1
	adds r0, #2
	b _0804994E
	.align 2, 0
_08049938: .4byte 0x0000C59C
_0804993C:
	ldr r1, _08049948
	adds r0, r2, r1
	lsls r1, r3, #5
	ldr r0, [r0]
	adds r0, r0, r1
	b _0804994E
	.align 2, 0
_08049948: .4byte 0x0000C59C
_0804994C:
	movs r0, #0
_0804994E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
