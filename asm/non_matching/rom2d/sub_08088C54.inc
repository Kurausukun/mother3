	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	adds r5, r1, #0
	mov r8, r2
	ldr r6, _08088D34
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r4, _08088D38
	ands r0, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	bl sub_080695A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08088D3C
	mov sb, r3
	ldr r1, [sp]
	ands r1, r3
	orrs r1, r0
	str r1, [sp]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	ldr r1, _08088D40
	mov sl, r1
	ldr r1, [sp]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r3, #0
	ldrsh r0, [r5, r3]
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	movs r3, #0
	ldrsh r0, [r5, r3]
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_080695A4
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	bl sub_0806BE14
	movs r1, #1
	mov r2, sp
	bl sub_0806C054
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08088D34: .4byte gUnknown_080EF880
_08088D38: .4byte 0x000003FF
_08088D3C: .4byte 0xFFFF0000
_08088D40: .4byte 0x0000FFFF
	.syntax divided
