	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080133B6
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080133C6
_080133B6:
	ldrh r0, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	cmp r0, r2
	bls _080133C2
	movs r0, #0
	strh r0, [r1, #0x10]
_080133C2:
	movs r0, #0
	b _080133D4
_080133C6:
	movs r2, #0
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	cmp r0, r1
	blo _080133D2
	movs r2, #1
_080133D2:
	adds r0, r2, #0
_080133D4:
	pop {r1}
	bx r1
	.syntax divided
