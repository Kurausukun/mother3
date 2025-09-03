	.syntax unified
sub_0801952C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	movs r6, #0
	cmp r6, r8
	bhs _080195A2
	mov r0, r8
	muls r0, r1, r0
	mov sb, r0
_08019550:
	adds r0, r6, #0
	muls r0, r6, r0
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #4
	mov r1, sb
	subs r0, r1, r0
	bl sub_08090FB8
	adds r4, r0, #0
	ldrh r0, [r7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r5, r0, r4
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r2, [r7, #2]
	subs r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801960C
	ldrh r2, [r7, #2]
	adds r2, r6, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801960C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	blo _08019550
_080195A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
