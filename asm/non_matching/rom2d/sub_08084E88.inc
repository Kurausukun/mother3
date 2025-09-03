	.syntax unified
sub_08084E88:
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #4
	bne _08084EF2
	adds r6, r4, #0
	adds r6, #0x2c
	movs r1, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _08084EA2
	movs r1, #1
_08084EA2:
	cmp r1, #0
	bne _08084EF2
	movs r0, #0xfd
	lsls r0, r0, #4
	adds r5, r4, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DB38
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, [r6, #8]
	adds r1, r1, r0
	mov r3, sp
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r4, #8
	rsbs r4, r4, #0
	mov r0, sp
	strh r2, [r0]
	strh r4, [r3, #2]
	movs r6, #0
	ldrsh r2, [r1, r6]
	movs r6, #0
	ldrsh r3, [r0, r6]
	movs r6, #2
	ldrsh r0, [r1, r6]
	add r1, sp, #4
	adds r2, r2, r3
	adds r0, r0, r4
	strh r2, [r1]
	strh r0, [r1, #2]
	adds r0, r5, #0
	bl sub_0808B1A8
	b _08084EFE
_08084EF2:
	movs r1, #0xfd
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #0
	bl sub_0806DB38
_08084EFE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
