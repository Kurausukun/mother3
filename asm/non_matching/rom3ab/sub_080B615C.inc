	.syntax unified
sub_080B615C:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08082510
	ldr r0, _080B6210
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_08082690
	ldr r1, [r0, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	ldr r0, _080B6214
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6210: .4byte vt_09F754F8
_080B6214: .4byte vt_09F74108
	.syntax divided
