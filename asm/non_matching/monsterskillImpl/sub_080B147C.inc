	.syntax unified
sub_080B147C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl onSuccess__6ActionP4Unit
	adds r0, r5, #0
	bl dynaCastMonster
	adds r7, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x82
	adds r1, r6, #0
	bl sub_08073198
	movs r0, #0x14
	bl setsleep
	ldr r0, _080B15A8
	bl playSound
	movs r0, #5
	bl setsleep
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B14D8:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #4
	bl setsleep
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #4
	bl setsleep
	subs r4, #1
	cmp r4, #0
	bge _080B14D8
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B1514:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #3
	bl setsleep
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #3
	bl setsleep
	subs r4, #1
	cmp r4, #0
	bge _080B1514
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r4, #2
_080B1550:
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #2
	bl setsleep
	ldr r1, [r7, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #2
	bl setsleep
	subs r4, #1
	cmp r4, #0
	bge _080B1550
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	bl sub_08073270
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B15A8: .4byte 0x00000614
	.syntax divided
