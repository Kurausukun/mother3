.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x46
	bl _call_via_r2
	cmp r4, r0
	bge _080AEC00
	ldr r1, _080AEBFC @ =0x00000149
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AEC00
_080AEBF6:
	movs r0, #0x99
	lsls r0, r0, #1
	b _080AEC7E
	.align 2, 0
_080AEBFC: .4byte 0x00000149
_080AEC00:
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AEC3A
	ldr r1, _080AEC5C @ =0x00000149
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bls _080AEBF6
_080AEC3A:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AEC64
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AEC60 @ =0x00000131
	cmp r0, #0x32
	bge _080AEC56
	subs r1, #1
_080AEC56:
	adds r0, r1, #0
	b _080AEC7E
	.align 2, 0
_080AEC5C: .4byte 0x00000149
_080AEC60: .4byte 0x00000131
_080AEC64:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, #0x21
	blt _080AEC7E
	adds r0, #3
	cmp r1, #0x42
	bge _080AEC7E
	subs r0, #2
_080AEC7E:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.syntax divided
