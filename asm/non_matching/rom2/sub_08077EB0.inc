	.syntax unified
sub_08077EB0:
	push {lr}
	ldr r2, [r0, #8]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _08077F2C
	lsls r0, r0, #2
	ldr r1, _08077ED4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077ED4: .4byte _08077ED8
_08077ED8:
	.4byte _08077F2C
	.4byte _08077F2C
	.4byte _08077F2C
	.4byte _08077F2C
	.4byte _08077F2C
	.4byte _08077F14
	.4byte _08077F18
	.4byte _08077F1C
	.4byte _08077F20
	.4byte _08077F20
	.4byte _08077F20
	.4byte _08077F20
	.4byte _08077F2C
	.4byte _08077F24
	.4byte _08077F28
_08077F14:
	movs r0, #4
	b _08077F2E
_08077F18:
	movs r0, #3
	b _08077F2E
_08077F1C:
	movs r0, #1
	b _08077F2E
_08077F20:
	movs r0, #2
	b _08077F2E
_08077F24:
	movs r0, #5
	b _08077F2E
_08077F28:
	movs r0, #0x1b
	b _08077F2E
_08077F2C:
	movs r0, #0
_08077F2E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
