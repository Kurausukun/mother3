	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	mov r1, sp
	bl sub_08036BEC
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	bl sub_0801A978
	str r0, [r4, #0x18]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
