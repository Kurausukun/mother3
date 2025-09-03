	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov sl, r6
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	mov sb, r4
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	mov r8, r5
	cmp r4, r5
	bne _080188B0
	ldr r0, _080188AC
	ldrh r1, [r0, #0x2e]
	strh r4, [r0, #0x2e]
	b _080188FE
	.align 2, 0
_080188AC: .4byte gSomeBlend
_080188B0:
	adds r1, r6, #1
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _080188DC
	ldr r1, _080188E0
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl Divide
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080188E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r6, #0
	b _080188EC
	.align 2, 0
_080188DC: .4byte gGame
_080188E0: .4byte 0x00009D10
_080188E4:
	mov r0, r8
	mov r1, sb
	adds r2, r7, #0
	mov r3, sl
_080188EC:
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0801890C
	lsls r1, r2, #4
	orrs r2, r1
	ldrh r1, [r0, #0x2e]
	strh r2, [r0, #0x2e]
_080188FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801890C: .4byte gSomeBlend
	.syntax divided
