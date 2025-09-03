	.syntax unified
sub_0807C188:
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	movs r0, #0xc2
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r3, r0
	bge _0807C1B8
	adds r1, r0, #0
	movs r2, #0xc4
	lsls r2, r2, #1
	add r2, ip
_0807C1A6:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0807C1B0
	adds r0, r3, #0
	b _0807C1C0
_0807C1B0:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _0807C1A6
_0807C1B8:
	movs r0, #0xc2
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
_0807C1C0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
