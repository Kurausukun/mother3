	.syntax unified
sub_080457D0:
	push {r4, r5, r6, lr}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #3
	bl get_progression_flag
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bne _0804583A
	ldr r0, _08045844
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	ldr r2, _08045848
	adds r1, r1, r2
	asrs r1, r1, #0x10
	lsls r5, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r5, r5, r2
	asrs r5, r5, #0x10
	movs r6, #1
	str r6, [sp]
	adds r2, r5, #0
	movs r3, #0x20
	bl sub_08046A28
	ldr r0, _0804584C
	ldr r1, _08045850
	adds r0, r0, r1
	ldr r0, [r0]
	subs r4, #0xe
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r6, [sp]
	movs r1, #0x9c
	lsls r1, r1, #2
	str r1, [sp, #4]
	movs r1, #0xb
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #6
	bl sub_08046BA8
_0804583A:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045844: .4byte gUnknown_080C6418
_08045848: .4byte 0xFFE00000
_0804584C: .4byte gSomeBlend
_08045850: .4byte 0x00002DF0
	.syntax divided
