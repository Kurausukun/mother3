	.syntax unified
sub_0809CAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_0807C378
	b _0809CB12
_0809CAE2:
	ldr r0, [r6, #0x1c]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0809CB12:
	ldr r1, [r6, #0x1c]
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0809CAE2
	ldr r1, [r6, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CBC8
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0809CBCC
	adds r1, r1, r0
	adds r5, r1, #0
	adds r5, #0xc0
	movs r7, #0x1f
_0809CB74:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0809CBB4
	ldrb r4, [r5, #2]
	ldr r1, [r6, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bgt _0809CBB4
	ldrh r1, [r5]
	mov r0, r8
	movs r2, #1
	bl sub_0805C300
	ldr r2, [r6, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0809CBB4:
	adds r5, #4
	subs r7, #1
	cmp r7, #0
	bge _0809CB74
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CBC8: .4byte gCharStats
_0809CBCC: .4byte gLevelStatTable
	.syntax divided
