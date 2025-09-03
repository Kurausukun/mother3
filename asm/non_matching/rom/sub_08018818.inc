	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	ldr r0, _08018844
	ldr r2, _08018848
	adds r0, r0, r2
	ldr r0, [r0]
	bl Divide
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801884C
	adds r2, r4, #0
	adds r3, r5, #0
	b _08018858
	.align 2, 0
_08018844: .4byte gGame
_08018848: .4byte 0x00009D10
_0801884C:
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08018858:
	ldr r0, _08018874
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r4, _08018878
	adds r0, r1, r4
	strh r2, [r0]
	ldr r0, _0801887C
	adds r1, r1, r0
	strh r3, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018874: .4byte gGame
_08018878: .4byte 0x000058BC
_0801887C: .4byte 0x000058BE
	.syntax divided
