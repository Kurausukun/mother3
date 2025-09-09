	.syntax unified
sub_080B15C0:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	bl onSuccess__6ActionP4Unit
	ldr r0, [r4, #0x1c]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	movs r1, #0x73
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
