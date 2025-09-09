	.syntax unified
sub_0809D910:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080803F4
	ldr r0, _0809D944
	str r0, [r4, #0x1c]
	ldr r0, _0809D948
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0809D94C
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	beq _0809D93A
	str r1, [r2]
	ldr r1, _0809D950
	movs r0, #0
	str r0, [r1]
_0809D93A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809D944: .4byte vt_09F49BE8
_0809D948: .4byte gSave
_0809D94C: .4byte gUnknown_02002214
_0809D950: .4byte gUnknown_02002210
	.syntax divided
