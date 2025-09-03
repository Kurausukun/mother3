	.syntax unified
sub_080359DC:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035A82
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x18
	bl sub_0801A978
	adds r1, r5, #0
	adds r1, #0xbd
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r2, #3
	subs r2, r2, r1
	adds r4, r5, #0
	adds r4, #0xba
	strb r2, [r4]
	movs r1, #0xff
	ands r2, r1
	adds r3, r5, #0
	adds r3, #0xb9
	strb r2, [r3]
	adds r1, r5, #0
	adds r1, #0xb8
	strb r2, [r1]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bhi _08035A82
	lsls r0, r0, #2
	ldr r1, _08035A40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035A40: .4byte _08035A44
_08035A44:
	.4byte _08035A82
	.4byte _08035A58
	.4byte _08035A6E
	.4byte _08035A78
	.4byte _08035A7E
_08035A58:
	ldrb r0, [r3]
	cmp r0, #1
	bls _08035A62
	subs r0, #1
	strb r0, [r3]
_08035A62:
	ldrb r0, [r4]
	cmp r0, #1
	bls _08035A82
	subs r0, #1
	strb r0, [r4]
	b _08035A82
_08035A6E:
	ldrb r0, [r3]
	cmp r0, #1
	bls _08035A82
	subs r0, #1
	b _08035A80
_08035A78:
	movs r0, #1
	strb r0, [r4]
	b _08035A80
_08035A7E:
	movs r0, #1
_08035A80:
	strb r0, [r3]
_08035A82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
