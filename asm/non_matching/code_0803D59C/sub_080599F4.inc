	.syntax unified
sub_080599F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, _08059A60
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	ldrh r1, [r5, #8]
	movs r7, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_080585F8
	adds r6, r4, #4
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0xa]
	adds r0, r6, #0
	bl sub_08059B88
	bl sub_08001960
	bl sub_08058790
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_08002E60
	strh r0, [r4, #8]
	ldrh r2, [r4, #2]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x60
	bl sub_08002E60
	strh r0, [r4, #0xa]
	ldr r0, _08059A64
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r2, #1
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrh r0, [r4, #8]
	cmp r0, #0x8f
	bhi _08059A68
	movs r0, #0
	b _08059A80
	.align 2, 0
_08059A60: .4byte gSomeBlend
_08059A64: .4byte 0x00004814
_08059A68:
	ldrh r0, [r5, #8]
	mov r1, r8
	orrs r0, r1
	ldrh r1, [r5, #8]
	orrs r0, r7
	strh r0, [r5, #8]
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0xa]
	adds r0, r6, #0
	bl sub_08059B88
	movs r0, #1
_08059A80:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
