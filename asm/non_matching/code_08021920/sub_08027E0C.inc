	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, _08027E44
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800289C
	cmp r5, r4
	beq _08027E4C
	cmp r0, r4
	beq _08027E4C
	str r0, [r6]
	lsls r0, r7, #1
	adds r0, r0, r5
	ldrh r1, [r0, #2]
	ldr r0, _08027E48
	ands r0, r1
	b _08027E50
	.align 2, 0
_08027E44: .4byte gScriptLogic
_08027E48: .4byte 0x00003FFF
_08027E4C:
	movs r0, #0
	str r0, [r6]
_08027E50:
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
