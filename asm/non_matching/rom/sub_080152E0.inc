	.syntax unified
sub_080152E0:
	push {r4, r5, lr}
	ldr r5, _0801533C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _08015340
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08019408
	bl sub_08001960
	bl sub_08005C4C
	subs r0, r4, #2
	ldrh r2, [r0]
	subs r0, r4, #4
	ldrh r3, [r0]
	movs r0, #0
	movs r1, #0xf0
	bl sub_08002E60
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bhi _08015348
	ldr r0, _08015344
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	movs r0, #0
	b _08015356
	.align 2, 0
_0801533C: .4byte gSomeBlend
_08015340: .4byte gUnknown_0200B564
_08015344: .4byte 0x0001ED10
_08015348:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801535C
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
_08015356:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801535C: .4byte 0x0000DFFF
	.syntax divided
