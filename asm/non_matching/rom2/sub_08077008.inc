	.syntax unified
sub_08077008:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08077054
	adds r0, #0xc
	movs r1, #0
	bl sub_08083CF4
	movs r4, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _08077054
	adds r5, r5, r1
_08077032:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08077032
_08077054:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
