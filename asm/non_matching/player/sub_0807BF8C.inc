	.syntax unified
	push {r4, r5, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov r1, sp
	strh r2, [r1]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r3, #0
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0807BFBE
	adds r5, r2, #0
	ldr r2, [r1, #8]
	adds r4, r0, #0
_0807BFAC:
	ldrh r0, [r2]
	cmp r0, r5
	bne _0807BFB6
	adds r0, r3, #0
	b _0807BFC0
_0807BFB6:
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blt _0807BFAC
_0807BFBE:
	ldr r0, [r1, #4]
_0807BFC0:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
