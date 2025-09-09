	.syntax unified
sub_08097CB4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08097CD8
	movs r0, #0
	b _08097CFE
_08097CD8:
	ldr r1, _08097D04
	adds r2, r4, #0
	adds r2, #0x80
	ldr r0, _08097D08
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D0C
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08097D10
	movs r3, #0x8a
	lsls r3, r3, #4
	adds r2, r4, r3
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08097D14
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
_08097CFE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097D04: .4byte gSave
_08097D08: .4byte 0x040000D4
_08097D0C: .4byte 0x80000410
_08097D10: .4byte gCharStats
_08097D14: .4byte 0x80000360
	.syntax divided
