	.syntax unified
	push {r4, lr}
	ldr r4, _0805985C
	ldr r0, _08059860
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08059864
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08059940
	b _0805986E
	.align 2, 0
_0805985C: .4byte gSomeBlend
_08059860: .4byte 0x00002D15
_08059864: .4byte 0x00002CB0
_08059868:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_0805986E:
	adds r0, r4, #0
	bl sub_080599F4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08059868
	ldr r4, _08059894
	adds r0, r4, #0
	bl nullsub_12
	adds r4, #0x65
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059894: .4byte gUnknown_02018CD8
	.syntax divided
