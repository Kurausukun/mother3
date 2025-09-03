	.syntax unified
sub_08002254:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #0
	bne _08002264
	b _0800239C
_08002264:
	cmp r0, #2
	beq _0800226C
_08002268:
	movs r0, #0xc
	b _0800239E
_0800226C:
	subs r0, r1, #1
	cmp r0, #0x3e
	bls _08002274
	b _0800239C
_08002274:
	lsls r0, r0, #2
	ldr r1, _08002280
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002280: .4byte _08002284
_08002284:
	.4byte _08002398
	.4byte _08002388
	.4byte _08002398
	.4byte _08002398
	.4byte _08002398
	.4byte _08002394
	.4byte _0800239C
	.4byte _08002380
	.4byte _08002268
	.4byte _08002398
	.4byte _0800239C
	.4byte _08002384
	.4byte _08002268
	.4byte _08002268
	.4byte _08002398
	.4byte _0800239C
	.4byte _0800239C
	.4byte _08002398
	.4byte _08002398
	.4byte _0800238C
	.4byte _0800239C
	.4byte _08002398
	.4byte _08002268
	.4byte _08002268
	.4byte _08002268
	.4byte _08002398
	.4byte _08002268
	.4byte _08002268
	.4byte _08002394
	.4byte _08002398
	.4byte _08002394
	.4byte _08002268
	.4byte _08002268
	.4byte _08002398
	.4byte _08002388
	.4byte _08002268
	.4byte _08002398
	.4byte _08002390
	.4byte _08002394
	.4byte _08002388
	.4byte _08002398
	.4byte _08002268
	.4byte _0800239C
	.4byte _08002268
	.4byte _0800239C
	.4byte _08002398
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _0800239C
	.4byte _08002388
	.4byte _08002388
	.4byte _08002388
	.4byte _0800239C
	.4byte _08002388
_08002380:
	movs r0, #4
	b _0800239E
_08002384:
	movs r0, #5
	b _0800239E
_08002388:
	movs r0, #6
	b _0800239E
_0800238C:
	movs r0, #7
	b _0800239E
_08002390:
	movs r0, #8
	b _0800239E
_08002394:
	movs r0, #9
	b _0800239E
_08002398:
	movs r0, #0xb
	b _0800239E
_0800239C:
	movs r0, #0xa
_0800239E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
