	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	movs r0, #1
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	movs r0, #5
	bl sub_08003D48
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	movs r0, #0x46
	mov r8, r0
	mov r0, r8
	muls r0, r7, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	adds r1, r7, #0
	movs r3, #2
	bl sub_08027B84
	mov r0, r8
	muls r0, r6, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #1
	adds r1, r6, #0
	movs r3, #2
	bl sub_08027B84
	ldr r5, _08027AD4
	ldr r1, _08027AD8
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08027AB2
	mov r0, r8
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #5
	adds r1, r4, #0
	movs r3, #2
	bl sub_08027B84
_08027AB2:
	ldr r1, _08027ADC
	adds r0, r5, r1
	strh r7, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	adds r1, #2
	adds r0, r5, r1
	mov r1, sb
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027AD4: .4byte gGame
_08027AD8: .4byte 0x0000829B
_08027ADC: .4byte 0x0000847E
	.syntax divided
