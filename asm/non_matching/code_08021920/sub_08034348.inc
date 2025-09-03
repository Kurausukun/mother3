	.syntax unified
	push {lr}
	sub sp, #4
	mov r1, sp
	bl sub_08036BEC
	movs r2, #2
	ldr r0, _08034370
	ldr r1, _08034374
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	subs r0, #1
	cmp r0, #7
	bhi _080343B0
	lsls r0, r0, #2
	ldr r1, _08034378
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034370: .4byte gGame
_08034374: .4byte 0x000082B6
_08034378: .4byte _0803437C
_0803437C:
	.4byte _0803439C
	.4byte _080343B0
	.4byte _080343A2
	.4byte _080343B0
	.4byte _0803439C
	.4byte _080343B0
	.4byte _080343A2
	.4byte _080343B0
_0803439C:
	mov r0, sp
	ldrh r1, [r0, #2]
	b _080343A6
_080343A2:
	mov r0, sp
	ldrh r1, [r0]
_080343A6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080343B0
	movs r2, #1
_080343B0:
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1
	.syntax divided
