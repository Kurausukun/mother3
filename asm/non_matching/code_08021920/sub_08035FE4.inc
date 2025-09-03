	.syntax unified
sub_08035FE4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08036028
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	subs r0, #0x41
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	cmp r3, #0
	bne _08036014
	adds r0, #2
	strb r3, [r0]
	b _08036028
_08036014:
	cmp r3, #4
	bhi _08036020
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #1
	b _08036026
_08036020:
	adds r1, r4, #0
	adds r1, #0x87
	movs r0, #2
_08036026:
	strb r0, [r1]
_08036028:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
