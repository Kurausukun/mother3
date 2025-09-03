	.syntax unified
sub_08029350:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _080293B4
	lsls r0, r0, #2
	ldr r1, _08029368
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029368: .4byte _0802936C
_0802936C:
	.4byte _080293AC
	.4byte _0802938C
	.4byte _0802938C
	.4byte _0802938C
	.4byte _080293A0
	.4byte _08029398
	.4byte _08029398
	.4byte _08029398
_0802938C:
	bl sub_0801A5EC
	subs r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #2]
	b _080293B2
_08029398:
	movs r0, #0x10
	strh r0, [r4]
	ldrh r0, [r5, #2]
	b _080293B2
_080293A0:
	ldrh r0, [r5]
	strh r0, [r4]
	bl sub_0801A604
	subs r0, #8
	b _080293B2
_080293AC:
	ldrh r0, [r5]
	strh r0, [r4]
	movs r0, #0x20
_080293B2:
	strh r0, [r4, #2]
_080293B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
