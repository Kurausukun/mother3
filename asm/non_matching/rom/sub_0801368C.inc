	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080136AA
	ldrh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	cmp r0, r2
	bls _080136A6
	movs r0, #0
	strh r0, [r1, #8]
_080136A6:
	movs r0, #0
	b _080136B8
_080136AA:
	movs r2, #0
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	cmp r0, r1
	blo _080136B6
	movs r2, #1
_080136B6:
	adds r0, r2, #0
_080136B8:
	pop {r1}
	bx r1
	.syntax divided
