	.syntax unified
sub_08035C0C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bhi _08035C50
	lsls r0, r0, #2
	ldr r1, _08035C24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035C24: .4byte _08035C28
_08035C28:
	.4byte _08035C48
	.4byte _08035C48
	.4byte _08035C50
	.4byte _08035C50
	.4byte _08035C50
	.4byte _08035C50
	.4byte _08035C50
	.4byte _08035C48
_08035C48:
	ldr r0, _08035C4C
	b _08035C52
	.align 2, 0
_08035C4C: .4byte gUnknown_080C2102
_08035C50:
	ldr r0, _08035C60
_08035C52:
	adds r0, r3, r0
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08035C60: .4byte gUnknown_080C20F2
	.syntax divided
