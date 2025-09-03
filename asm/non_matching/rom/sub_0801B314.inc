	.syntax unified
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r0, #0
	ldr r0, _0801B338
	ldr r4, _0801B33C
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #1
	beq _0801B35E
	cmp r0, #1
	bgt _0801B340
	cmp r0, #0
	beq _0801B346
	b _0801B38A
	.align 2, 0
_0801B338: .4byte gSomeBlend
_0801B33C: .4byte 0x00003686
_0801B340:
	cmp r0, #2
	beq _0801B372
	b _0801B38A
_0801B346:
	cmp r1, #0x1f
	bls _0801B358
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	adds r3, r3, r0
_0801B358:
	cmp r2, #0x1f
	bhi _0801B376
	b _0801B386
_0801B35E:
	cmp r1, #0x1f
	bls _0801B386
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #4
	adds r3, r3, r4
	b _0801B386
_0801B372:
	cmp r2, #0x1f
	bls _0801B386
_0801B376:
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	adds r3, r3, r2
	b _0801B394
_0801B386:
	adds r0, r2, #0
	b _0801B394
_0801B38A:
	ldr r0, _0801B390
	b _0801B39E
	.align 2, 0
_0801B390: .4byte gUnknown_08D2D654
_0801B394:
	lsls r0, r0, #5
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r0, r3, #0
_0801B39E:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
