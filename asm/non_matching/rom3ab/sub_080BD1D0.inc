	.syntax unified
sub_080BD1D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r0, r1, #0
	bl dynaCastMonster
	adds r6, r0, #0
	cmp r6, #0
	beq _080BD288
	movs r5, #0
	movs r7, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xde
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080BD216
	cmp r0, #1
	bgt _080BD20A
	cmp r0, #0
	beq _080BD210
	b _080BD220
_080BD20A:
	cmp r0, #2
	beq _080BD21C
	b _080BD220
_080BD210:
	movs r5, #0xc
	movs r7, #0xd
	b _080BD220
_080BD216:
	movs r5, #7
	movs r7, #8
	b _080BD220
_080BD21C:
	movs r5, #2
	movs r7, #3
_080BD220:
	ldr r1, [r6, #0x1c]
	movs r4, #0xd4
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	muls r0, r5, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r5, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	muls r0, r7, r0
	movs r1, #0x64
	bl sub_0807066C
	adds r1, r0, #0
	adds r0, r5, #0
	bl randS32
	movs r1, #1
	cmp r1, r0
	bge _080BD266
	adds r1, r0, #0
_080BD266:
	adds r0, r6, #0
	movs r2, #1
	bl hitPlayer
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r3, [r1, #4]
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
_080BD288:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
