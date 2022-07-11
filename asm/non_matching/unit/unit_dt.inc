    .syntax unified
    .global _._4Unit
    _._4Unit:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08074B94 @ =_vt.4Unit.10UnitObject
	str r0, [r4, #0x20]
	ldr r0, _08074B98 @ =_vt.4Unit
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl onNoStatus__4Unit
	adds r0, r4, #0
	bl clearAllStatuses__4Unit
	adds r0, r4, #0
	bl unit_230__4Unit
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08074B72
	bl __builtin_vec_delete
_08074B72:
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08074B80
	bl __builtin_vec_delete
_08074B80:
	ldr r0, _08074B9C @ =_vt.6Object
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074B94: .4byte _vt.4Unit.10UnitObject
_08074B98: .4byte _vt.4Unit
_08074B9C: .4byte _vt.6Object
    .syntax divided
