	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08019DB8
	ldr r1, _08019DBC
	adds r2, r0, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019DC0
	movs r0, #0
	b _08019DC2
	.align 2, 0
_08019DB8: .4byte gGame
_08019DBC: .4byte 0x000067B8
_08019DC0:
	ldrh r0, [r2]
_08019DC2:
	bl get_obj_direct
	adds r7, r0, #0
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r2, r2, r0
	lsls r2, r2, #0xc
	ldr r4, _08019E34
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #6
	ldrsh r1, [r7, r3]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xb6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r3, _08019E38
	lsrs r6, r2, #0x10
	orrs r6, r0
	mov r0, sp
	ldrh r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r6, r4
	orrs r6, r0
	asrs r0, r6, #0x10
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ands r6, r3
	orrs r6, r0
	ldr r1, _08019E3C
	movs r0, #0x80
	subs r0, r0, r6
	ldrh r2, [r1, #0x14]
	strh r0, [r1, #0x14]
	asrs r2, r6, #0x10
	movs r0, #0x78
	subs r0, r0, r2
	ldrh r2, [r1, #0x1c]
	strh r0, [r1, #0x1c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019E34: .4byte 0xFFFF0000
_08019E38: .4byte 0x0000FFFF
_08019E3C: .4byte gSomeBlend
	.syntax divided
