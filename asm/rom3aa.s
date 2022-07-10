.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080A59BC
sub_080A59BC: @ 0x080A59BC
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A59C6
	adds r2, r1, #0
_080A59C6:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0

	thumb_func_start sub_080A59D0
sub_080A59D0: @ 0x080A59D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, r4
	bge _080A59F0
	adds r0, r4, #0
_080A59F0:
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl setHP__7Monsteri
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A5A00
sub_080A5A00: @ 0x080A5A00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5A18
	cmp r0, #1
	beq _080A5A2E
	b _080A5A44
_080A5A18:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A2E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A5A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A4C
sub_080A5A4C: @ 0x080A5A4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5A50:
	movs r5, #0
	movs r4, #0
	b _080A5A6E
_080A5A56:
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	movs r1, #2
	bl unitIsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5A6C
	movs r5, #1
_080A5A6C:
	adds r4, #1
_080A5A6E:
	bl sub_08072A88__Fv
	cmp r4, r0
	blt _080A5A56
	cmp r5, #1
	bne _080A5A8C
	ldr r0, _080A5A88 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5A50
	.align 2, 0
_080A5A88: .4byte 0x00000279
_080A5A8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5A94
sub_080A5A94: @ 0x080A5A94
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A5AAE
	cmp r2, #1
	bne _080A5ACA
_080A5AAE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A5ACC
_080A5ACA:
	movs r0, #0
_080A5ACC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5AD4
sub_080A5AD4: @ 0x080A5AD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_e8__4UnitP6Action
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5B08
	ldr r1, [r5, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A5B08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A5B10
sub_080A5B10: @ 0x080A5B10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BA6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BA6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5BA8
_080A5BA6:
	movs r0, #0
_080A5BA8:
	cmp r0, #0
	bne _080A5BB0
	movs r0, #0
	b _080A5C7C
_080A5BB0:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5BD8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5BD4 @ =0x00000277
	cmp r0, #0x32
	bge _080A5BD0
	subs r1, #1
_080A5BD0:
	adds r0, r1, #0
	b _080A5C10
	.align 2, 0
_080A5BD4: .4byte 0x00000277
_080A5BD8:
	ldr r1, _080A5C1C @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5BF8
	ldr r1, _080A5C20 @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C28
_080A5BF8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A5C24 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5C10
	adds r0, #2
	cmp r1, #0x42
	bge _080A5C10
	subs r0, #1
_080A5C10:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5C7A
	.align 2, 0
_080A5C1C: .4byte 0x00000276
_080A5C20: .4byte 0x00000277
_080A5C24: .4byte 0x0000027B
_080A5C28:
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	ldr r1, _080A5C84 @ =0x000001BB
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5C5C
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5C7A
_080A5C5C:
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A5C7A:
	movs r0, #1
_080A5C7C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5C84: .4byte 0x000001BB

	thumb_func_start sub_080A5C88
sub_080A5C88: @ 0x080A5C88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A5D3C @ =0x000001BD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5CAA
	movs r0, #0x90
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5CAA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D40
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D40
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A5D42
	.align 2, 0
_080A5D3C: .4byte 0x000001BD
_080A5D40:
	movs r0, #0
_080A5D42:
	cmp r0, #0
	bne _080A5D4A
	movs r0, #0
	b _080A5DC0
_080A5D4A:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5D7C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5D78 @ =0x00000277
	cmp r0, #0x32
	bge _080A5D6A
	subs r1, #1
_080A5D6A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5DBE
	.align 2, 0
_080A5D78: .4byte 0x00000277
_080A5D7C:
	ldr r1, _080A5DC8 @ =0x00000276
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5D9C
	ldr r1, _080A5DCC @ =0x00000277
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5DBE
_080A5D9C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A5DD0 @ =0x0000027B
	cmp r1, #0x21
	blt _080A5DB4
	adds r0, #2
	cmp r1, #0x42
	bge _080A5DB4
	subs r0, #1
_080A5DB4:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A5DBE:
	movs r0, #1
_080A5DC0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5DC8: .4byte 0x00000276
_080A5DCC: .4byte 0x00000277
_080A5DD0: .4byte 0x0000027B

	thumb_func_start sub_080A5DD4
sub_080A5DD4: @ 0x080A5DD4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5DEE
	cmp r0, #1
	beq _080A5DF8
	movs r0, #0
	b _080A5E0E
_080A5DEE:
	ldr r1, [r2, #0x1c]
	movs r4, #0x8a
	lsls r4, r4, #3
	adds r1, r1, r4
	b _080A5E00
_080A5DF8:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5E00:
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_080A5E0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5E14
sub_080A5E14: @ 0x080A5E14
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A5E94
_080A5E1C:
	adds r0, r6, #0
	bl sub_08072AA4__Fi
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5E90
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A5E92
_080A5E90:
	adds r7, #1
_080A5E92:
	adds r6, #1
_080A5E94:
	bl sub_08072A88__Fv
	cmp r6, r0
	blt _080A5E1C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A5EA4
sub_080A5EA4: @ 0x080A5EA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A5ED0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A5ED0
	movs r0, #0x90
	b _080A5F2C
_080A5ED0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A5F08
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F04 @ =0x00000277
	cmp r0, #0x37
	bge _080A5F2A
	b _080A5F28
	.align 2, 0
_080A5F04: .4byte 0x00000277
_080A5F08:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F38 @ =0x00000276
	cmp r0, #0x28
	blt _080A5F2A
	adds r1, #1
	cmp r0, #0x46
	blt _080A5F2A
	subs r1, #0xbd
	cmp r0, #0x55
	blt _080A5F2A
	adds r1, #2
	cmp r0, #0x5f
	bge _080A5F2A
_080A5F28:
	subs r1, #1
_080A5F2A:
	adds r0, r1, #0
_080A5F2C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F38: .4byte 0x00000276

	thumb_func_start sub_080A5F3C
sub_080A5F3C: @ 0x080A5F3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A5F68
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080A5F68
	movs r0, #0x90
	b _080A5F7A
_080A5F68:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A5F88 @ =0x00000277
	cmp r0, #0x3c
	bge _080A5F78
	subs r1, #1
_080A5F78:
	adds r0, r1, #0
_080A5F7A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F88: .4byte 0x00000277

	thumb_func_start sub_080A5F8C
sub_080A5F8C: @ 0x080A5F8C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A5FA4
	cmp r0, #1
	beq _080A5FAE
	movs r0, #0
	b _080A5FC2
_080A5FA4:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A5FB6
_080A5FAE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
_080A5FB6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A5FC2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A5FC8
sub_080A5FC8: @ 0x080A5FC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
_080A5FCC:
	movs r5, #0
	movs r4, #0
	b _080A5FEA
_080A5FD2:
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	movs r1, #2
	bl unitIsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A5FE8
	movs r5, #1
_080A5FE8:
	adds r4, #1
_080A5FEA:
	bl sub_08072A88__Fv
	cmp r4, r0
	blt _080A5FD2
	cmp r5, #1
	bne _080A6008
	ldr r0, _080A6004 @ =0x00000279
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A5FCC
	.align 2, 0
_080A6004: .4byte 0x00000279
_080A6008:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6010
sub_080A6010: @ 0x080A6010
	push {lr}
	ldr r2, _080A6024 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A6028 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6024: .4byte _vt.14DefaultMonster.10UnitObject
_080A6028: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A602C
sub_080A602C: @ 0x080A602C
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A6036
	adds r2, r1, #0
_080A6036:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0

	thumb_func_start sub_080A6040
sub_080A6040: @ 0x080A6040
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A6062
	movs r0, #0x9c
	lsls r0, r0, #2
	b _080A6064
_080A6062:
	ldr r0, _080A6070 @ =0x0000026F
_080A6064:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6070: .4byte 0x0000026F

	thumb_func_start sub_080A6074
sub_080A6074: @ 0x080A6074
	push {lr}
	ldr r2, _080A6088 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A608C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6088: .4byte _vt.14DefaultMonster.10UnitObject
_080A608C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A6090
sub_080A6090: @ 0x080A6090
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A609A
	adds r2, r1, #0
_080A609A:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0

	thumb_func_start sub_080A60A4
sub_080A60A4: @ 0x080A60A4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A60BE
	cmp r2, #1
	bne _080A60DA
_080A60BE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A60DC
_080A60DA:
	movs r0, #0
_080A60DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A60E4
sub_080A60E4: @ 0x080A60E4
	bx lr
	.align 2, 0

	thumb_func_start sub_080A60E8
sub_080A60E8: @ 0x080A60E8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6134
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_080A6134:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A613C
sub_080A613C: @ 0x080A613C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6188
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
_080A6188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6190
sub_080A6190: @ 0x080A6190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bgt _080A61DC
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080A61DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A61E4
sub_080A61E4: @ 0x080A61E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x50
	bl _call_via_r2
	cmp r4, r0
	bgt _080A6230
	ldr r1, [r5, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A6230:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6238
sub_080A6238: @ 0x080A6238
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A62F6
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A62F6
	lsls r0, r0, #2
	ldr r1, _080A6270 @ =_080A6274
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6270: .4byte _080A6274
_080A6274: @ jump table
	.4byte _080A6288 @ case 0
	.4byte _080A629E @ case 1
	.4byte _080A62B4 @ case 2
	.4byte _080A62CA @ case 3
	.4byte _080A62E0 @ case 4
_080A6288:
	ldr r1, [r4, #0x1c]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A629E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x92
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62B4:
	ldr r1, [r4, #0x1c]
	movs r0, #0x93
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62CA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x95
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
_080A62F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A62FC
sub_080A62FC: @ 0x080A62FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6350 @ =0x01A90000
	cmp r0, r1
	bne _080A6346
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6354 @ =0x00000265
	cmp r0, #0xf
	blt _080A633A
	adds r1, #3
	cmp r0, #0x23
	blt _080A633A
	adds r1, #3
	cmp r0, #0x50
	bge _080A633A
	subs r1, #2
_080A633A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6346:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6350: .4byte 0x01A90000
_080A6354: .4byte 0x00000265

	thumb_func_start sub_080A6358
sub_080A6358: @ 0x080A6358
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A63B0 @ =0x01A90000
	cmp r0, r1
	bne _080A63A8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A63B4 @ =0x00000265
	cmp r0, #0xf
	blt _080A639C
	adds r1, #2
	cmp r0, #0x1e
	blt _080A639C
	adds r1, #1
	cmp r0, #0x46
	blt _080A639C
	adds r1, #3
	cmp r0, #0x50
	bge _080A639C
	subs r1, #1
_080A639C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A63A8:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A63B0: .4byte 0x01A90000
_080A63B4: .4byte 0x00000265

	thumb_func_start sub_080A63B8
sub_080A63B8: @ 0x080A63B8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6410 @ =0x01A90000
	cmp r0, r1
	bne _080A6408
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6414 @ =0x00000265
	cmp r0, #0xf
	blt _080A63FC
	adds r1, #2
	cmp r0, #0x32
	blt _080A63FC
	adds r1, #3
	cmp r0, #0x41
	blt _080A63FC
	adds r1, #1
	cmp r0, #0x4b
	bge _080A63FC
	subs r1, #5
_080A63FC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6408:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6410: .4byte 0x01A90000
_080A6414: .4byte 0x00000265

	thumb_func_start sub_080A6418
sub_080A6418: @ 0x080A6418
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _080A6470 @ =0x01A90000
	cmp r0, r1
	bne _080A6468
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6474 @ =0x00000265
	cmp r0, #0x14
	blt _080A645C
	adds r1, #2
	cmp r0, #0x37
	blt _080A645C
	adds r1, #7
	cmp r0, #0x41
	blt _080A645C
	subs r1, #4
	cmp r0, #0x50
	bge _080A645C
	subs r1, #4
_080A645C:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6468:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6470: .4byte 0x01A90000
_080A6474: .4byte 0x00000265

	thumb_func_start sub_080A6478
sub_080A6478: @ 0x080A6478
	movs r0, #1
	bx lr

	thumb_func_start sub_080A647C
sub_080A647C: @ 0x080A647C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6512
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6512
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6514
_080A6512:
	movs r0, #0
_080A6514:
	cmp r0, #0
	beq _080A6582
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6582
	lsls r0, r0, #2
	ldr r1, _080A6530 @ =_080A6534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6530: .4byte _080A6534
_080A6534: @ jump table
	.4byte _080A6548 @ case 0
	.4byte _080A6552 @ case 1
	.4byte _080A655A @ case 2
	.4byte _080A6562 @ case 3
	.4byte _080A656A @ case 4
_080A6548:
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080A6572
_080A6552:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	b _080A6570
_080A655A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	b _080A6570
_080A6562:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8f
	lsls r0, r0, #3
	b _080A6570
_080A656A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #3
_080A6570:
	adds r1, r1, r0
_080A6572:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _080A6584
_080A6582:
	movs r0, #0
_080A6584:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A658C
sub_080A658C: @ 0x080A658C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A65B0
	ldr r0, _080A65AC @ =0x000001A9
	b _080A660E
	.align 2, 0
_080A65AC: .4byte 0x000001A9
_080A65B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A65E8 @ =0x00000269
	cmp r0, r5
	bne _080A65F0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A65EC @ =0x00000265
	cmp r1, #0x1e
	blt _080A660E
	adds r0, #6
	cmp r1, #0x41
	bge _080A660E
	subs r0, #3
	b _080A660E
	.align 2, 0
_080A65E8: .4byte 0x00000269
_080A65EC: .4byte 0x00000265
_080A65F0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A661C @ =0x00000265
	cmp r0, #0xf
	blt _080A660C
	adds r1, #3
	cmp r0, #0x23
	blt _080A660C
	adds r1, #3
	cmp r0, #0x50
	bge _080A660C
	adds r1, r5, #0
_080A660C:
	adds r0, r1, #0
_080A660E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A661C: .4byte 0x00000265

	thumb_func_start sub_080A6620
sub_080A6620: @ 0x080A6620
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6644
	ldr r0, _080A6640 @ =0x000001A9
	b _080A66AC
	.align 2, 0
_080A6640: .4byte 0x000001A9
_080A6644:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6680 @ =0x0000026A
	cmp r0, r5
	bne _080A6688
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6684 @ =0x00000265
	cmp r0, #0x14
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x28
	blt _080A66AA
	adds r1, #4
	cmp r0, #0x50
	bge _080A66AA
	subs r1, #3
	b _080A66AA
	.align 2, 0
_080A6680: .4byte 0x0000026A
_080A6684: .4byte 0x00000265
_080A6688:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A66B8 @ =0x00000265
	cmp r0, #0xf
	blt _080A66AA
	adds r1, #2
	cmp r0, #0x1e
	blt _080A66AA
	adds r1, #1
	cmp r0, #0x46
	blt _080A66AA
	adds r1, #3
	cmp r0, #0x50
	bge _080A66AA
	adds r1, r5, #0
_080A66AA:
	adds r0, r1, #0
_080A66AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A66B8: .4byte 0x00000265

	thumb_func_start sub_080A66BC
sub_080A66BC: @ 0x080A66BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A66E0
	ldr r0, _080A66DC @ =0x000001A9
	b _080A678C
	.align 2, 0
_080A66DC: .4byte 0x000001A9
_080A66E0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A671C @ =0x0000026A
	cmp r0, r5
	bne _080A6724
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6720 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	subs r1, #1
	cmp r0, #0x46
	bge _080A678A
	adds r1, #8
	b _080A678A
	.align 2, 0
_080A671C: .4byte 0x0000026A
_080A6720: .4byte 0x00000265
_080A6724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6760 @ =0x00000266
	cmp r0, r6
	bne _080A6768
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6764 @ =0x00000265
	cmp r0, #0x14
	blt _080A678A
	adds r1, #2
	cmp r0, #0x3c
	blt _080A678A
	adds r1, #4
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r5, #0
	b _080A678A
	.align 2, 0
_080A6760: .4byte 0x00000266
_080A6764: .4byte 0x00000265
_080A6768:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6798 @ =0x00000265
	cmp r0, #0xf
	blt _080A678A
	adds r1, #2
	cmp r0, #0x32
	blt _080A678A
	adds r1, r5, #0
	cmp r0, #0x41
	blt _080A678A
	ldr r1, _080A679C @ =0x0000026B
	cmp r0, #0x4b
	bge _080A678A
	adds r1, r6, #0
_080A678A:
	adds r0, r1, #0
_080A678C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6798: .4byte 0x00000265
_080A679C: .4byte 0x0000026B

	thumb_func_start sub_080A67A0
sub_080A67A0: @ 0x080A67A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A67C4
	ldr r0, _080A67C0 @ =0x000001A9
	b _080A6880
	.align 2, 0
_080A67C0: .4byte 0x000001A9
_080A67C4:
	ldr r1, [r4, #0x1c]
	movs r6, #0x85
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _080A6810 @ =0x0000026E
	cmp r0, r7
	beq _080A67FC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6814 @ =0x00000266
	cmp r0, r5
	bne _080A681C
_080A67FC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6818 @ =0x00000267
	cmp r0, #0x32
	bge _080A687E
	subs r1, #2
	b _080A687E
	.align 2, 0
_080A6810: .4byte 0x0000026E
_080A6814: .4byte 0x00000266
_080A6818: .4byte 0x00000267
_080A681C:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A6854 @ =0x0000026A
	cmp r0, r6
	bne _080A685C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6858 @ =0x00000265
	cmp r0, #0x19
	blt _080A687E
	adds r1, #2
	cmp r0, #0x41
	blt _080A687E
	adds r1, r5, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r7, #0
	b _080A687E
	.align 2, 0
_080A6854: .4byte 0x0000026A
_080A6858: .4byte 0x00000265
_080A685C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A688C @ =0x00000265
	cmp r0, #0x14
	blt _080A687E
	adds r1, #2
	cmp r0, #0x37
	blt _080A687E
	adds r1, r7, #0
	cmp r0, #0x41
	blt _080A687E
	adds r1, r6, #0
	cmp r0, #0x50
	bge _080A687E
	adds r1, r5, #0
_080A687E:
	adds r0, r1, #0
_080A6880:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A688C: .4byte 0x00000265

	thumb_func_start sub_080A6890
sub_080A6890: @ 0x080A6890
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _080A68D4 @ =0x0000026E
	cmp r0, r6
	beq _080A68D0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A68D8 @ =0x00000266
	cmp r0, r5
	bne _080A68E0
_080A68D0:
	ldr r0, _080A68DC @ =0x00000265
	b _080A68F8
	.align 2, 0
_080A68D4: .4byte 0x0000026E
_080A68D8: .4byte 0x00000266
_080A68DC: .4byte 0x00000265
_080A68E0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A6904 @ =0x00000265
	cmp r1, #0x3c
	blt _080A68F8
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A68F8
	adds r0, r6, #0
_080A68F8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A6904: .4byte 0x00000265

	thumb_func_start sub_080A6908
sub_080A6908: @ 0x080A6908
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6974
	lsls r0, r0, #2
	ldr r1, _080A6924 @ =_080A6928
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6924: .4byte _080A6928
_080A6928: @ jump table
	.4byte _080A693C @ case 0
	.4byte _080A6946 @ case 1
	.4byte _080A694E @ case 2
	.4byte _080A6956 @ case 3
	.4byte _080A695E @ case 4
_080A693C:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6966
_080A6946:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080A6964
_080A694E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	b _080A6964
_080A6956:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	b _080A6964
_080A695E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
_080A6964:
	adds r1, r1, r0
_080A6966:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A6976
_080A6974:
	movs r0, #0
_080A6976:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A697C
sub_080A697C: @ 0x080A697C
	push {lr}
	ldr r2, _080A6990 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A6994 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6990: .4byte _vt.14DefaultMonster.10UnitObject
_080A6994: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A6998
sub_080A6998: @ 0x080A6998
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080A69AC
	ldr r0, _080A69A8 @ =0x0000026D
	b _080A69DA
	.align 2, 0
_080A69A8: .4byte 0x0000026D
_080A69AC:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A69BA
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A69DA
_080A69BA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A69D8
	adds r1, #1
	cmp r0, #0x32
	blt _080A69D8
	adds r1, #2
	cmp r0, #0x4b
	bge _080A69D8
	subs r1, #1
_080A69D8:
	adds r0, r1, #0
_080A69DA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A69E8
sub_080A69E8: @ 0x080A69E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080A69FC
	ldr r0, _080A69F8 @ =0x0000026D
	b _080A6A1C
	.align 2, 0
_080A69F8: .4byte 0x0000026D
_080A69FC:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A6A0A
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A6A1C
_080A6A0A:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6A28 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6A1A
	subs r1, #0xf
_080A6A1A:
	adds r0, r1, #0
_080A6A1C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6A28: .4byte 0x000001B9

	thumb_func_start sub_080A6A2C
sub_080A6A2C: @ 0x080A6A2C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6A44
	cmp r0, #1
	beq _080A6A4E
	movs r0, #0
	b _080A6A62
_080A6A44:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6A56
_080A6A4E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6A56:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A6A62:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6A68
sub_080A6A68: @ 0x080A6A68
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6A82
	cmp r2, #1
	bne _080A6A9E
_080A6A82:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A6AA0
_080A6A9E:
	movs r0, #0
_080A6AA0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6AA8
sub_080A6AA8: @ 0x080A6AA8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6ABE
	cmp r0, #1
	beq _080A6AE8
	b _080A6B10
_080A6ABE:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6B10
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A6B10
_080A6AE8:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6B10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B18
sub_080A6B18: @ 0x080A6B18
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6B42
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6B42:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6B50
sub_080A6B50: @ 0x080A6B50
	push {lr}
	ldr r2, _080A6B64 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A6B68 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6B64: .4byte _vt.14DefaultMonster.10UnitObject
_080A6B68: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A6B6C
sub_080A6B6C: @ 0x080A6B6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080A6B8E
	adds r1, #1
	cmp r0, #0x32
	blt _080A6B8E
	adds r1, #2
	cmp r0, #0x4b
	bge _080A6B8E
	subs r1, #1
_080A6B8E:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A6B9C
sub_080A6B9C: @ 0x080A6B9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6BC0 @ =0x000001B9
	cmp r0, #0x37
	bge _080A6BB0
	subs r1, #0xf
_080A6BB0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6BC0: .4byte 0x000001B9

	thumb_func_start sub_080A6BC4
sub_080A6BC4: @ 0x080A6BC4
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6BDC
	cmp r0, #1
	beq _080A6BE6
	movs r0, #0
	b _080A6BFA
_080A6BDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6BEE
_080A6BE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
_080A6BEE:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080A6BFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C00
sub_080A6C00: @ 0x080A6C00
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A6C1A
	cmp r2, #1
	bne _080A6C36
_080A6C1A:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A6C38
_080A6C36:
	movs r0, #0
_080A6C38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A6C40
sub_080A6C40: @ 0x080A6C40
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A6C56
	cmp r0, #1
	beq _080A6C80
	b _080A6CA8
_080A6C56:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _080A6CA8
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080A6CA8
_080A6C80:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	movs r0, #2
	movs r1, #3
	bl randS32
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A6CA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CB0
sub_080A6CB0: @ 0x080A6CB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6CDA
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A6CDA:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6CE8
sub_080A6CE8: @ 0x080A6CE8
	push {lr}
	ldr r2, _080A6CFC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A6D00 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A6CFC: .4byte _vt.14DefaultMonster.10UnitObject
_080A6D00: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A6D04
sub_080A6D04: @ 0x080A6D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitP6Action
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A6D2A
	b _080A6E8C
_080A6D2A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080A6D44
	b _080A6E8C
_080A6D44:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6D64
	b _080A6E8C
_080A6D64:
	movs r0, #0x14
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r0, _080A6EC0 @ =0x0000064E
	bl playSound
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl hitPlayer
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl playSeq
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	add r0, sp, #0x28
	bl __3Msg
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
_080A6E8C:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A6F42
	adds r0, r6, #0
	movs r1, #1
	bl sub_08073FC4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6EC4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #3
	b _080A6F40
	.align 2, 0
_080A6EC0: .4byte 0x0000064E
_080A6EC4:
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x10
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x11
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6F04
	adds r0, r6, #0
	movs r1, #0x12
	bl sub_0807404C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F10
_080A6F04:
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #5
	b _080A6F40
_080A6F10:
	adds r0, r6, #0
	bl sub_08074020
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6F42
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A6F42
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #4
_080A6F40:
	str r0, [r1]
_080A6F42:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6F4C
sub_080A6F4C: @ 0x080A6F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A6FE2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A6FE2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A6FE4
_080A6FE2:
	movs r0, #0
_080A6FE4:
	cmp r0, #0
	bne _080A6FEC
	movs r0, #0
	b _080A705C
_080A6FEC:
	ldr r6, _080A7024 @ =0x0000019F
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A702C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x2d
	blt _080A7016
	ldr r0, _080A7028 @ =0x000001A3
	cmp r1, #0x50
	bge _080A7016
	subs r0, #1
_080A7016:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A705A
	.align 2, 0
_080A7024: .4byte 0x0000019F
_080A7028: .4byte 0x000001A3
_080A702C:
	movs r1, #0xd3
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A705A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080A705A:
	movs r0, #1
_080A705C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7064
sub_080A7064: @ 0x080A7064
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x12
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x21
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x13
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7108
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A710C
_080A7108:
	movs r0, #1
	b _080A710E
_080A710C:
	movs r0, #0
_080A710E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7114
sub_080A7114: @ 0x080A7114
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A71C8
_080A711C:
	adds r0, r6, #0
	bl getPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1b
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x31
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1c
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1d
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A71C4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A71C6
_080A71C4:
	adds r7, #1
_080A71C6:
	adds r6, #1
_080A71C8:
	bl getPartyCount
	cmp r6, r0
	blt _080A711C
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A71D8
sub_080A71D8: @ 0x080A71D8
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7228
_080A71E0:
	adds r0, r5, #0
	bl getPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7224
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7226
_080A7224:
	adds r6, #1
_080A7226:
	adds r5, #1
_080A7228:
	bl getPartyCount
	cmp r5, r0
	blt _080A71E0
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7238
sub_080A7238: @ 0x080A7238
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7288
_080A7240:
	adds r0, r5, #0
	bl getPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7284
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7286
_080A7284:
	adds r6, #1
_080A7286:
	adds r5, #1
_080A7288:
	bl getPartyCount
	cmp r5, r0
	blt _080A7240
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7298
sub_080A7298: @ 0x080A7298
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72C0
	movs r3, #0xac
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #6
	str r0, [r1]
_080A72C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A72E4
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
_080A72E4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7308
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
_080A7308:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A732C
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r1, r6, r3
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
_080A732C:
	movs r4, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	movs r3, #0
	adds r2, r6, r1
_080A733A:
	ldr r1, [r2]
	cmp r1, r0
	ble _080A7344
	adds r4, r3, #0
	adds r0, r1, #0
_080A7344:
	adds r2, #4
	adds r3, #1
	cmp r3, #6
	ble _080A733A
	movs r2, #0
	movs r1, #6
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r6, r3
_080A7356:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080A7356
	cmp r4, #6
	bhi _080A73E8
	lsls r0, r4, #2
	ldr r1, _080A7370 @ =_080A7374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7370: .4byte _080A7374
_080A7374: @ jump table
	.4byte _080A7390 @ case 0
	.4byte _080A73A0 @ case 1
	.4byte _080A73AC @ case 2
	.4byte _080A73BC @ case 3
	.4byte _080A73C6 @ case 4
	.4byte _080A73D0 @ case 5
	.4byte _080A73DC @ case 6
_080A7390:
	ldr r0, _080A739C @ =0x000001A5
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A739C: .4byte 0x000001A5
_080A73A0:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73AC:
	ldr r0, _080A73B8 @ =0x000001A9
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
	.align 2, 0
_080A73B8: .4byte 0x000001A9
_080A73BC:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73C6:
	movs r0, #0x90
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73D0:
	movs r0, #0xc7
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73DC:
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A73E8:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7440
	ldr r0, [r6, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7442
_080A7440:
	movs r0, #0
_080A7442:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7448
sub_080A7448: @ 0x080A7448
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A746A
	movs r0, #0xd3
	lsls r0, r0, #1
	b _080A74D4
_080A746A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A74B0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A74AC @ =0x0000019F
	cmp r0, #0xf
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x2d
	blt _080A74D2
	adds r1, #2
	cmp r0, #0x41
	bge _080A74D2
	subs r1, #1
	b _080A74D2
	.align 2, 0
_080A74AC: .4byte 0x0000019F
_080A74B0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A74E0 @ =0x0000019F
	cmp r0, #0xa
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x23
	blt _080A74D2
	adds r1, #1
	cmp r0, #0x32
	blt _080A74D2
	adds r1, #5
	cmp r0, #0x46
	bge _080A74D2
	subs r1, #4
_080A74D2:
	adds r0, r1, #0
_080A74D4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A74E0: .4byte 0x0000019F

	thumb_func_start sub_080A74E4
sub_080A74E4: @ 0x080A74E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A7518 @ =0x0000019F
	cmp r0, #0xf
	blt _080A750A
	adds r1, #1
	cmp r0, #0x32
	blt _080A750A
	adds r1, #1
	cmp r0, #0x46
	blt _080A750A
	adds r1, #2
	cmp r0, #0x5a
	bge _080A750A
	subs r1, #1
_080A750A:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A7518: .4byte 0x0000019F

	thumb_func_start sub_080A751C
sub_080A751C: @ 0x080A751C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A756C
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A756C:
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080A75D4
	cmp r0, #1
	beq _080A75EA
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A7600
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A7602
_080A75D4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A75EA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A7602
_080A7600:
	movs r0, #0
_080A7602:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7608
sub_080A7608: @ 0x080A7608
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A7622
	cmp r2, #1
	bne _080A763E
_080A7622:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7640
_080A763E:
	movs r0, #0
_080A7640:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7648
sub_080A7648: @ 0x080A7648
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A7694
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080A7694:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A769C
sub_080A769C: @ 0x080A769C
	push {lr}
	ldr r2, _080A76B0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A76B4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A76B0: .4byte _vt.14DefaultMonster.10UnitObject
_080A76B4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A76B8
sub_080A76B8: @ 0x080A76B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A774E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A774E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7750
_080A774E:
	movs r0, #0
_080A7750:
	cmp r0, #0
	bne _080A7758
	movs r0, #0
	b _080A7776
_080A7758:
	adds r0, r5, #0
	movs r1, #0xaa
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7774
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7774:
	movs r0, #1
_080A7776:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A777C
sub_080A777C: @ 0x080A777C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A77C4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A77C0 @ =0x00000241
	cmp r0, #0x3c
	blt _080A77BC
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x50
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x5a
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x5f
	bge _080A77BC
_080A77BA:
	movs r1, #0x4a
_080A77BC:
	adds r0, r1, #0
	b _080A7808
	.align 2, 0
_080A77C0: .4byte 0x00000241
_080A77C4:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A77EE
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080A77BC
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080A77BC
	movs r1, #0xaa
	cmp r0, #0x50
	bge _080A77BC
	b _080A77BA
_080A77EE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A7808
	movs r0, #0x4a
	cmp r1, #0x50
	bge _080A7808
	movs r0, #0x6d
_080A7808:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7814
sub_080A7814: @ 0x080A7814
	push {lr}
	ldr r2, _080A7828 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A782C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A7828: .4byte _vt.14DefaultMonster.10UnitObject
_080A782C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A7830
sub_080A7830: @ 0x080A7830
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A789C
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A789C
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A789C
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080A789C
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A789C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A78A4
sub_080A78A4: @ 0x080A78A4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitP6Action
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A78CA
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080A78CA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A78D0
sub_080A78D0: @ 0x080A78D0
	push {r4, lr}
	movs r4, #0
	b _080A791C
_080A78D6:
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #4
	beq _080A7912
	adds r0, r4, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080A791A
_080A7912:
	adds r0, r4, #0
	bl sub_08072EC4
	b _080A7926
_080A791A:
	adds r4, #1
_080A791C:
	bl sub_08072EA8
	cmp r4, r0
	blt _080A78D6
	movs r0, #0
_080A7926:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A792C
sub_080A792C: @ 0x080A792C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080A7978 @ =0x0000019D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A797C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	beq _080A797C
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7984
	.align 2, 0
_080A7978: .4byte 0x0000019D
_080A797C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl monster_2c8__7MonsterP6Action
_080A7984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A798C
sub_080A798C: @ 0x080A798C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A79B0 @ =0x0000019D
	cmp r0, #0x46
	bge _080A79A0
	movs r1, #0x6d
_080A79A0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A79B0: .4byte 0x0000019D

	thumb_func_start sub_080A79B4
sub_080A79B4: @ 0x080A79B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A79D0
	ldr r0, _080A79DC @ =0x00000129
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A79D0:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A79DC: .4byte 0x00000129

	thumb_func_start sub_080A79E0
sub_080A79E0: @ 0x080A79E0
	push {lr}
	ldr r2, _080A79F4 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A79F8 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A79F4: .4byte _vt.14DefaultMonster.10UnitObject
_080A79F8: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A79FC
sub_080A79FC: @ 0x080A79FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7A92
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7A92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7A94
_080A7A92:
	movs r0, #0
_080A7A94:
	cmp r0, #0
	bne _080A7A9C
	movs r0, #0
	b _080A7ABA
_080A7A9C:
	ldr r1, _080A7AC0 @ =0x00000243
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7AB8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7AB8:
	movs r0, #1
_080A7ABA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A7AC0: .4byte 0x00000243

	thumb_func_start sub_080A7AC4
sub_080A7AC4: @ 0x080A7AC4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080A7AF4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x46
	blt _080A7B08
	ldr r0, _080A7AF0 @ =0x00000243
	cmp r1, #0x55
	bge _080A7B08
	subs r0, #0x6f
	b _080A7B08
	.align 2, 0
_080A7AF0: .4byte 0x00000243
_080A7AF4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xea
	lsls r1, r1, #1
	cmp r0, #0x50
	bge _080A7B06
	subs r1, #0xd0
_080A7B06:
	adds r0, r1, #0
_080A7B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7B14
sub_080A7B14: @ 0x080A7B14
	push {lr}
	ldr r2, _080A7B28 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A7B2C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A7B28: .4byte _vt.14DefaultMonster.10UnitObject
_080A7B2C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A7B30
sub_080A7B30: @ 0x080A7B30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7BC6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BC6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7BC8
_080A7BC6:
	movs r0, #0
_080A7BC8:
	cmp r0, #0
	bne _080A7BD0
	movs r0, #0
	b _080A7BEE
_080A7BD0:
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7BEC
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A7BEC:
	movs r0, #1
_080A7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7BF4
sub_080A7BF4: @ 0x080A7BF4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A7C48
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080A7CEA
	ldr r0, _080A7C44 @ =0x0000022A
	cmp r1, #0x3c
	bge _080A7CEA
	movs r0, #0x6d
	b _080A7CEA
	.align 2, 0
_080A7C44: .4byte 0x0000022A
_080A7C48:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A7CA2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7C7C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x37
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x41
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7C7C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x2d
	blt _080A7CE8
	movs r1, #0x23
	cmp r0, #0x4b
	blt _080A7CE8
	movs r1, #0xc3
	cmp r0, #0x50
	bge _080A7CE8
	movs r1, #0x28
	b _080A7CE8
_080A7CA2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080A7CCA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A7CEA
	movs r0, #0x28
	cmp r1, #0x50
	bge _080A7CEA
	movs r0, #0x23
	b _080A7CEA
_080A7CCA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x82
	lsls r1, r1, #1
	cmp r0, #0x14
	blt _080A7CE8
	movs r1, #0x50
	cmp r0, #0x32
	blt _080A7CE8
	movs r1, #0x28
	cmp r0, #0x5a
	bge _080A7CE8
	movs r1, #0x23
_080A7CE8:
	adds r0, r1, #0
_080A7CEA:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7CF8
sub_080A7CF8: @ 0x080A7CF8
	push {lr}
	ldr r2, _080A7D0C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A7D10 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A7D0C: .4byte _vt.14DefaultMonster.10UnitObject
_080A7D10: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A7D14
sub_080A7D14: @ 0x080A7D14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl removeOneStatus__4Uniti
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r5, #0x16
	bne _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	cmp r0, #0
	bgt _080A7D5E
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	b _080A7D94
_080A7D5E:
	cmp r5, #0x19
	bne _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	cmp r0, #0
	bgt _080A7D98
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
_080A7D94:
	adds r1, r4, r2
	str r0, [r1]
_080A7D98:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A7DA0
sub_080A7DA0: @ 0x080A7DA0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080A7DBA
	cmp r2, #1
	bne _080A7DD6
_080A7DBA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A7DD8
_080A7DD6:
	movs r0, #0
_080A7DD8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A7DE0
sub_080A7DE0: @ 0x080A7DE0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A7E30
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	b _080A7EEA
_080A7E30:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bge _080A7EEA
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7EEA
	ldr r0, _080A7EF4 @ =0x00000237
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
	movs r0, #0x78
	bl setsleep
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	ldr r1, _080A7EF8 @ =0x000004EB
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
_080A7EEA:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7EF4: .4byte 0x00000237
_080A7EF8: .4byte 0x000004EB

	thumb_func_start sub_080A7EFC
sub_080A7EFC: @ 0x080A7EFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7F92
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7F92
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A7F94
_080A7F92:
	movs r0, #0
_080A7F94:
	cmp r0, #0
	bne _080A7F9C
	movs r0, #0
	b _080A80A2
_080A7F9C:
	ldr r6, _080A7FD0 @ =0x00000243
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7FD4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
	b _080A80A0
	.align 2, 0
_080A7FD0: .4byte 0x00000243
_080A7FD4:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A804C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A8020
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A801C @ =0x00000242
	cmp r0, #0x41
	bge _080A8018
	subs r1, #0x55
_080A8018:
	adds r0, r1, #0
	b _080A8038
	.align 2, 0
_080A801C: .4byte 0x00000242
_080A8020:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A8044 @ =0x000001ED
	cmp r1, #0x3c
	blt _080A8038
	adds r0, r6, #0
	cmp r1, #0x5a
	bge _080A8038
	ldr r0, _080A8048 @ =0x00000242
_080A8038:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A80A0
	.align 2, 0
_080A8044: .4byte 0x000001ED
_080A8048: .4byte 0x00000242
_080A804C:
	ldr r1, _080A80A8 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A806C
	ldr r1, _080A80AC @ =0x00000242
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A80A0
_080A806C:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080A80A0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A80B0 @ =0x000001F1
	cmp r0, #0x19
	blt _080A8094
	adds r1, #1
	cmp r0, #0x32
	blt _080A8094
	subs r1, #2
	cmp r0, #0x4b
	bge _080A8094
	adds r1, #3
_080A8094:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A80A0:
	movs r0, #1
_080A80A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A80A8: .4byte 0x000001ED
_080A80AC: .4byte 0x00000242
_080A80B0: .4byte 0x000001F1

	thumb_func_start sub_080A80B4
sub_080A80B4: @ 0x080A80B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #6
	bgt _080A80E6
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A80E2
	subs r1, #1
_080A80E2:
	adds r0, r1, #0
	b _080A81FA
_080A80E6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A8112
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A8112
	movs r0, #0xb5
	b _080A81FA
_080A8112:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #0
	bne _080A814E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A81FA
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A81FA
	movs r0, #0x65
	b _080A81FA
_080A814E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #1
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #2
	bne _080A81A4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A819A
	ldr r1, _080A81A0 @ =0x00000223
_080A819A:
	adds r0, r1, #0
	b _080A81FA
	.align 2, 0
_080A81A0: .4byte 0x00000223
_080A81A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #3
	beq _080A81F8
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #6
	bl sub_0807067C
	cmp r0, #4
	bne _080A81F8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A81FA
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A81FA
	movs r0, #0xac
	b _080A81FA
_080A81F8:
	ldr r0, _080A8208 @ =0x000001F5
_080A81FA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A8208: .4byte 0x000001F5

	thumb_func_start sub_080A820C
sub_080A820C: @ 0x080A820C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x28
	bgt _080A823E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf7
	lsls r1, r1, #1
	cmp r0, #0x32
	bge _080A823A
	subs r1, #1
_080A823A:
	adds r0, r1, #0
	b _080A830A
_080A823E:
	ldr r1, [r4, #0x1c]
	movs r6, #0x84
	lsls r6, r6, #3
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A825A
_080A8256:
	movs r0, #0xb5
	b _080A830A
_080A825A:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A827E
	ldr r1, [r4, #0x1c]
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	beq _080A8256
_080A827E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080A82BA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x2d
	blt _080A830A
	movs r0, #0x88
	cmp r1, #0x50
	bge _080A830A
	movs r0, #0x65
	b _080A830A
_080A82BA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #1
	bne _080A82F0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x65
	cmp r0, #0x46
	bge _080A823A
	ldr r1, _080A82EC @ =0x00000223
	b _080A823A
	.align 2, 0
_080A82EC: .4byte 0x00000223
_080A82F0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	cmp r1, #0x23
	blt _080A830A
	subs r0, #0xd5
	cmp r1, #0x37
	bge _080A830A
	movs r0, #0xac
_080A830A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8318
sub_080A8318: @ 0x080A8318
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080A834A
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080A834A
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080A83D6
_080A834A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A836C @ =0x00000191
	cmp r0, r5
	bne _080A8374
	ldr r0, _080A8370 @ =0x000001EF
	b _080A83D6
	.align 2, 0
_080A836C: .4byte 0x00000191
_080A8370: .4byte 0x000001EF
_080A8374:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A83B8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A83B0 @ =0x000001ED
	cmp r1, #0x28
	blt _080A83D6
	adds r0, r5, #0
	cmp r1, #0x50
	bge _080A83D6
	ldr r0, _080A83B4 @ =0x00000242
	b _080A83D6
	.align 2, 0
_080A83B0: .4byte 0x000001ED
_080A83B4: .4byte 0x00000242
_080A83B8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A83E4 @ =0x000001ED
	cmp r0, #0x1e
	blt _080A83D4
	adds r1, #0x55
	cmp r0, #0x3c
	blt _080A83D4
	adds r1, #1
	cmp r0, #0x50
	bge _080A83D4
	adds r1, r5, #0
_080A83D4:
	adds r0, r1, #0
_080A83D6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A83E4: .4byte 0x000001ED

	thumb_func_start sub_080A83E8
sub_080A83E8: @ 0x080A83E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080A841E
	cmp r0, #1
	bgt _080A8402
	cmp r0, #0
	beq _080A8408
	b _080A844A
_080A8402:
	cmp r0, #2
	beq _080A8434
	b _080A844A
_080A8408:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A841E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A8434:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A84A4
_080A844A:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A84A2
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A84A4
_080A84A2:
	movs r0, #0
_080A84A4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A84AC
sub_080A84AC: @ 0x080A84AC
	push {lr}
	ldr r2, _080A84C0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A84C4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A84C0: .4byte _vt.14DefaultMonster.10UnitObject
_080A84C4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A855E
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A855E
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A8560
_080A855E:
	movs r0, #0
_080A8560:
	cmp r0, #0
	bne _080A8568
	movs r0, #0
	b _080A8652
_080A8568:
	movs r6, #0xc9
	lsls r6, r6, #1
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A858E
	ldr r7, _080A85A8 @ =0x00000193
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A85AC
_080A858E:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x21
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x42
	bge _080A85EE
	b _080A85EC
	.align 2, 0
_080A85A8: .4byte 0x00000193
_080A85AC:
	adds r0, r5, #0
	movs r1, #0x90
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8600
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bgt _080A85D4
	ldr r0, _080A85D0 @ =0x00000195
	b _080A85EE
	.align 2, 0
_080A85D0: .4byte 0x00000195
_080A85D4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	adds r0, r6, #0
	cmp r1, #0x19
	blt _080A85EE
	movs r0, #0xcb
	lsls r0, r0, #1
	cmp r1, #0x32
	bge _080A85EE
_080A85EC:
	ldr r0, _080A85FC @ =0x00000193
_080A85EE:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A8650
	.align 2, 0
_080A85FC: .4byte 0x00000193
_080A8600:
	ldr r1, _080A8658 @ =0x00000197
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A8632
	ldr r1, _080A865C @ =0x00000195
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8650
_080A8632:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080A8650:
	movs r0, #1
_080A8652:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A8658: .4byte 0x00000197
_080A865C: .4byte 0x00000195

	thumb_func_start sub_080A8660
sub_080A8660: @ 0x080A8660
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	b _080A86E0
_080A8668:
	adds r0, r6, #0
	bl getPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A86DC
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A86DE
_080A86DC:
	adds r7, #1
_080A86DE:
	adds r6, #1
_080A86E0:
	bl getPartyCount
	cmp r6, r0
	blt _080A8668
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080A8724
_080A870C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8720 @ =0x00000193
	cmp r0, #0x28
	bge _080A87E8
	subs r1, #1
	b _080A87E8
	.align 2, 0
_080A8720: .4byte 0x00000193
_080A8724:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080A8740
	movs r0, #0x90
	b _080A87EA
_080A8740:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8768
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x1d
	bgt _080A8768
	movs r0, #0x90
	b _080A87EA
_080A8768:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #4
	ble _080A870C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #2
	cmp r0, r1
	bgt _080A87BE
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080A87EA
	adds r0, #4
	cmp r1, #0x46
	bge _080A87EA
	subs r0, #3
	b _080A87EA
_080A87BE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xc9
	lsls r1, r1, #1
	cmp r0, #0xf
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x28
	blt _080A87E8
	adds r1, #3
	cmp r0, #0x37
	blt _080A87E8
	adds r1, #1
	cmp r0, #0x55
	blt _080A87E8
	subs r1, #2
	cmp r0, #0x5f
	bge _080A87E8
	adds r1, #3
_080A87E8:
	adds r0, r1, #0
_080A87EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A87F8
sub_080A87F8: @ 0x080A87F8
	push {lr}
	ldr r2, _080A880C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A8810 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A880C: .4byte _vt.14DefaultMonster.10UnitObject
_080A8810: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A8814
sub_080A8814: @ 0x080A8814
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080A882E
	cmp r2, #1
	bne _080A884A
_080A882E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A884C
_080A884A:
	movs r0, #0
_080A884C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8854
sub_080A8854: @ 0x080A8854
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A88EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A88EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A88EC
_080A88EA:
	movs r0, #0
_080A88EC:
	cmp r0, #0
	bne _080A88F4
	movs r0, #0
	b _080A89C2
_080A88F4:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A891A
	ldr r1, [r4, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A898C
_080A891A:
	ldr r1, _080A8940 @ =0x000001FF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8944
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A898C
	.align 2, 0
_080A8940: .4byte 0x000001FF
_080A8944:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A896A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080A898C
_080A896A:
	ldr r1, _080A8994 @ =0x00000201
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A8998
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
_080A898C:
	movs r2, #0
	bl _call_via_r3
	b _080A89C0
	.align 2, 0
_080A8994: .4byte 0x00000201
_080A8998:
	movs r1, #0x85
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A89C0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080A89C0:
	movs r0, #1
_080A89C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A89C8
sub_080A89C8: @ 0x080A89C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A89F6
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A89F2
	movs r0, #0xf7
	b _080A8A32
_080A89F2:
	movs r0, #0xfa
	b _080A8A32
_080A89F6:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8A20
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A1C
	movs r0, #0xf8
	b _080A8A32
_080A8A1C:
	movs r0, #0xfa
	b _080A8A32
_080A8A20:
	movs r0, #5
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8A30
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8A32
_080A8A30:
	ldr r0, _080A8A40 @ =0x00000205
_080A8A32:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8A40: .4byte 0x00000205

	thumb_func_start sub_080A8A44
sub_080A8A44: @ 0x080A8A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8A72
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A6E
	movs r0, #0xf7
	b _080A8AB0
_080A8A6E:
	movs r0, #0xfa
	b _080A8AB0
_080A8A72:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8A9C
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8A98
	movs r0, #0xf8
	b _080A8AB0
_080A8A98:
	movs r0, #0xfa
	b _080A8AB0
_080A8A9C:
	movs r0, #3
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8AAC
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8AB0
_080A8AAC:
	movs r0, #0x81
	lsls r0, r0, #2
_080A8AB0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8ABC
sub_080A8ABC: @ 0x080A8ABC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8AEA
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8AE6
	movs r0, #0xf7
	b _080A8B26
_080A8AE6:
	movs r0, #0xfa
	b _080A8B26
_080A8AEA:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8B14
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B10
	movs r0, #0xf8
	b _080A8B26
_080A8B10:
	movs r0, #0xfa
	b _080A8B26
_080A8B14:
	movs r0, #4
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8B24
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8B26
_080A8B24:
	ldr r0, _080A8B34 @ =0x00000203
_080A8B26:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8B34: .4byte 0x00000203

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A8B66
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B62
	movs r0, #0xf7
	b _080A8BA2
_080A8B62:
	movs r0, #0xfa
	b _080A8BA2
_080A8B66:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A8B90
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	beq _080A8B8C
	movs r0, #0xf8
	b _080A8BA2
_080A8B8C:
	movs r0, #0xfa
	b _080A8BA2
_080A8B90:
	movs r0, #2
	bl sub_08072AC4
	cmp r0, #0
	bne _080A8BA0
	movs r0, #0x85
	lsls r0, r0, #1
	b _080A8BA2
_080A8BA0:
	ldr r0, _080A8BB0 @ =0x00000202
_080A8BA2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BB0: .4byte 0x00000202

	thumb_func_start sub_080A8BB4
sub_080A8BB4: @ 0x080A8BB4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8BF0 @ =0x00000113
	cmp r0, #0xf
	blt _080A8BE2
	movs r1, #0xe3
	cmp r0, #0x14
	blt _080A8BE2
	movs r1, #0xff
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080A8BE2
	adds r1, #1
	cmp r0, #0x3c
	blt _080A8BE2
	adds r1, #2
	cmp r0, #0x50
	bge _080A8BE2
	subs r1, #1
_080A8BE2:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8BF0: .4byte 0x00000113

	thumb_func_start sub_080A8BF4
sub_080A8BF4: @ 0x080A8BF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8C96
	lsls r0, r0, #2
	ldr r1, _080A8C10 @ =_080A8C14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8C10: .4byte _080A8C14
_080A8C14: @ jump table
	.4byte _080A8C28 @ case 0
	.4byte _080A8C3E @ case 1
	.4byte _080A8C54 @ case 2
	.4byte _080A8C6A @ case 3
	.4byte _080A8C80 @ case 4
_080A8C28:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C3E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C80:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A8CF0
_080A8C96:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A8CEE
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A8CF0
_080A8CEE:
	movs r0, #0
_080A8CF0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A8CF8
sub_080A8CF8: @ 0x080A8CF8
	push {lr}
	ldr r2, _080A8D0C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A8D10 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A8D0C: .4byte _vt.14DefaultMonster.10UnitObject
_080A8D10: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A8D14
sub_080A8D14: @ 0x080A8D14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A8D44
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8D40 @ =0x00000113
	cmp r0, #0x37
	blt _080A8D60
	adds r1, #0xd
	cmp r0, #0x4b
	blt _080A8D60
	subs r1, #0x13
	cmp r0, #0x55
	bge _080A8D60
	movs r1, #0x8c
	b _080A8D60
	.align 2, 0
_080A8D40: .4byte 0x00000113
_080A8D44:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8D70 @ =0x00000113
	cmp r0, #0x19
	blt _080A8D60
	ldr r1, _080A8D74 @ =0x0000024B
	cmp r0, #0x41
	blt _080A8D60
	movs r1, #0x8c
	cmp r0, #0x5a
	bge _080A8D60
	adds r1, #0x94
_080A8D60:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8D70: .4byte 0x00000113
_080A8D74: .4byte 0x0000024B

	thumb_func_start sub_080A8D78
sub_080A8D78: @ 0x080A8D78
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x76
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A8D94
sub_080A8D94: @ 0x080A8D94
	push {lr}
	ldr r2, _080A8DA8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A8DAC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A8DA8: .4byte _vt.14DefaultMonster.10UnitObject
_080A8DAC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A8DB0
sub_080A8DB0: @ 0x080A8DB0
	push {lr}
	cmp r1, #0
	bne _080A8DFC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A8DFC
	lsls r0, r0, #2
	ldr r1, _080A8DCC @ =_080A8DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8DCC: .4byte _080A8DD0
_080A8DD0: @ jump table
	.4byte _080A8DFC @ case 0
	.4byte _080A8DE4 @ case 1
	.4byte _080A8DEC @ case 2
	.4byte _080A8DF2 @ case 3
	.4byte _080A8DFC @ case 4
_080A8DE4:
	ldr r0, _080A8DE8 @ =0x00000203
	b _080A8E00
	.align 2, 0
_080A8DE8: .4byte 0x00000203
_080A8DEC:
	movs r0, #0x81
	lsls r0, r0, #2
	b _080A8E00
_080A8DF2:
	ldr r0, _080A8DF8 @ =0x00000205
	b _080A8E00
	.align 2, 0
_080A8DF8: .4byte 0x00000205
_080A8DFC:
	movs r0, #0xf3
	lsls r0, r0, #1
_080A8E00:
	pop {r1}
	bx r1

	thumb_func_start sub_080A8E04
sub_080A8E04: @ 0x080A8E04
	push {lr}
	movs r2, #1
	cmp r2, r1
	bge _080A8E0E
	adds r2, r1, #0
_080A8E0E:
	adds r1, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0

	thumb_func_start sub_080A8E18
sub_080A8E18: @ 0x080A8E18
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xac
	lsls r0, r0, #1
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, r1
	bne _080A8E32
	cmp r2, #1
	beq _080A8E32
	b _080A8FD4
_080A8E32:
	str r1, [r3]
	cmp r1, #4
	bls _080A8E3A
	b _080A8FB0
_080A8E3A:
	lsls r0, r1, #2
	ldr r1, _080A8E44 @ =_080A8E48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A8E44: .4byte _080A8E48
_080A8E48: @ jump table
	.4byte _080A8E5C @ case 0
	.4byte _080A8EB0 @ case 1
	.4byte _080A8EDA @ case 2
	.4byte _080A8F1C @ case 3
	.4byte _080A8F5E @ case 4
_080A8E5C:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
	b _080A8FB0
_080A8EB0:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0x78
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	b _080A8F02
_080A8EDA:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0x78
_080A8F02:
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	b _080A8FB0
_080A8F1C:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0x78
	bl _call_via_r3
	b _080A8FB0
_080A8F5E:
	ldr r3, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #1
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #2
	bl _call_via_r3
	ldr r3, [r5, #0x1c]
	adds r3, r3, r4
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, r5, r0
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r2, [r1]
	ldr r3, [r3, #4]
	movs r1, #3
	bl _call_via_r3
_080A8FB0:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, [r5, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080A8FD6
_080A8FD4:
	movs r0, #0
_080A8FD6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A8FDC
sub_080A8FDC: @ 0x080A8FDC
	push {lr}
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _080A8FFE
	cmp r0, #2
	bgt _080A8FF4
	cmp r0, #1
	beq _080A8FFA
	b _080A9006
_080A8FF4:
	cmp r0, #3
	beq _080A9002
	b _080A9006
_080A8FFA:
	movs r0, #1
	b _080A9008
_080A8FFE:
	movs r0, #2
	b _080A9008
_080A9002:
	movs r0, #3
	b _080A9008
_080A9006:
	movs r0, #0
_080A9008:
	pop {r1}
	bx r1

	thumb_func_start sub_080A900C
sub_080A900C: @ 0x080A900C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_98__4UnitP6Action
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9032
	b _080A9194
_080A9032:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080A904C
	b _080A9194
_080A904C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A906C
	b _080A9194
_080A906C:
	movs r0, #0x14
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r0, _080A9230 @ =0x0000064E
	bl playSound
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl playSeq
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl hitPlayer
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl playSeq
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	add r0, sp, #0x28
	bl __3Msg
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
_080A9194:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A9226
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #2
	bhi _080A9226
	ldr r1, [r7, #0x1c]
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _080A9226
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080A9226
	ldr r1, [r6, #0x1c]
	movs r2, #0x8d
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9226
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080A9226:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9230: .4byte 0x0000064E

	thumb_func_start sub_080A9234
sub_080A9234: @ 0x080A9234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitP6Action
	ldr r1, _080A9264 @ =0x000001FB
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9268
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #1
	b _080A92B0
	.align 2, 0
_080A9264: .4byte 0x000001FB
_080A9268:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A928E
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #2
	b _080A92B0
_080A928E:
	ldr r1, _080A92B8 @ =0x000001FD
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A92BC
	ldr r1, [r7, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #3
_080A92B0:
	movs r2, #0
	bl _call_via_r3
	b _080A9350
	.align 2, 0
_080A92B8: .4byte 0x000001FD
_080A92BC:
	ldr r1, _080A9358 @ =0x0000018B
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9350
	ldr r0, _080A935C @ =0x0000028A
	bl playSound
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	movs r0, #0x78
	bl setsleep
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	movs r1, #0x9d
	lsls r1, r1, #3
	str r4, [sp]
	add r0, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #0
	bl setHP__7Monsteri
_080A9350:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9358: .4byte 0x0000018B
_080A935C: .4byte 0x0000028A

	thumb_func_start sub_080A9360
sub_080A9360: @ 0x080A9360
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9382
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A9382:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A93A4
	ldr r0, _080A93A0 @ =0x0000018D
	b _080A93E0
	.align 2, 0
_080A93A0: .4byte 0x0000018D
_080A93A4:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080A93BE
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A93E0
_080A93BE:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	ble _080A93DC
	ldr r0, _080A93D8 @ =0x0000018B
	b _080A93E0
	.align 2, 0
_080A93D8: .4byte 0x0000018B
_080A93DC:
	movs r0, #0xc6
	lsls r0, r0, #1
_080A93E0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A93EC
sub_080A93EC: @ 0x080A93EC
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9408
sub_080A9408: @ 0x080A9408
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9424
sub_080A9424: @ 0x080A9424
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A945C
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080A945C
_080A9452:
	ldr r0, _080A9458 @ =0x00000231
	b _080A9506
	.align 2, 0
_080A9458: .4byte 0x00000231
_080A945C:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x22
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9486
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	ble _080A9452
_080A9486:
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x15
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A94B0
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	ble _080A9452
_080A94B0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080A94EC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9506
	movs r0, #0x64
	cmp r1, #0x50
	bge _080A9506
	ldr r0, _080A94E8 @ =0x000001F7
	b _080A9506
	.align 2, 0
_080A94E8: .4byte 0x000001F7
_080A94EC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080A9506
	movs r0, #0x63
	cmp r1, #0x46
	bge _080A9506
	ldr r0, _080A9514 @ =0x000001F9
_080A9506:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9514: .4byte 0x000001F9

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9540 @ =0x000001FB
	cmp r1, #0x21
	blt _080A9534
	adds r0, #2
	cmp r1, #0x42
	bge _080A9534
	subs r0, #1
_080A9534:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9540: .4byte 0x000001FB

	thumb_func_start sub_080A9544
sub_080A9544: @ 0x080A9544
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A95E6
	lsls r0, r0, #2
	ldr r1, _080A9560 @ =_080A9564
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A9560: .4byte _080A9564
_080A9564: @ jump table
	.4byte _080A9578 @ case 0
	.4byte _080A958E @ case 1
	.4byte _080A95A4 @ case 2
	.4byte _080A95BA @ case 3
	.4byte _080A95D0 @ case 4
_080A9578:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A958E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95A4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95BA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95D0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A9640
_080A95E6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A963E
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080A9640
_080A963E:
	movs r0, #0
_080A9640:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9648
sub_080A9648: @ 0x080A9648
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xac
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #4
	beq _080A96B2
	ldr r1, [r4, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080A96B2
	ldr r0, [r5]
	cmp r0, #0
	beq _080A969A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _080A96B8 @ =0x00000189
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A969A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_080A96B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A96B8: .4byte 0x00000189

	thumb_func_start sub_080A96BC
sub_080A96BC: @ 0x080A96BC
	push {lr}
	ldr r2, _080A96D0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A96D4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A96D0: .4byte _vt.14DefaultMonster.10UnitObject
_080A96D4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A96D8
sub_080A96D8: @ 0x080A96D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A9708
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9700 @ =0x00000113
	cmp r1, #0xf
	blt _080A971A
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A971A
	ldr r0, _080A9704 @ =0x000001D9
	b _080A971A
	.align 2, 0
_080A9700: .4byte 0x00000113
_080A9704: .4byte 0x000001D9
_080A9708:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9728 @ =0x000001D9
	cmp r0, #0x19
	bge _080A9718
	subs r1, #0xc6
_080A9718:
	adds r0, r1, #0
_080A971A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9728: .4byte 0x000001D9

	thumb_func_start sub_080A972C
sub_080A972C: @ 0x080A972C
	push {lr}
	ldr r2, _080A9740 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9744 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9740: .4byte _vt.14DefaultMonster.10UnitObject
_080A9744: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9748
sub_080A9748: @ 0x080A9748
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A977C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9778 @ =0x000001C5
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #1
	b _080A97B8
	.align 2, 0
_080A9778: .4byte 0x000001C5
_080A977C:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A97A8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A97A0 @ =0x00000113
	cmp r1, #0xf
	blt _080A97BA
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A97BA
	ldr r0, _080A97A4 @ =0x000001D9
	b _080A97BA
	.align 2, 0
_080A97A0: .4byte 0x00000113
_080A97A4: .4byte 0x000001D9
_080A97A8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A97C8 @ =0x000001D9
	cmp r0, #0x23
	bge _080A97B8
	subs r1, #0xc6
_080A97B8:
	adds r0, r1, #0
_080A97BA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A97C8: .4byte 0x000001D9

	thumb_func_start sub_080A97CC
sub_080A97CC: @ 0x080A97CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A982E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A982E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9834
sub_080A9834: @ 0x080A9834
	push {lr}
	ldr r2, _080A9848 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A984C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9848: .4byte _vt.14DefaultMonster.10UnitObject
_080A984C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9850
sub_080A9850: @ 0x080A9850
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A9864
	movs r1, #0xc
_080A9864:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9874
sub_080A9874: @ 0x080A9874
	push {lr}
	ldr r2, _080A9888 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A988C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9888: .4byte _vt.14DefaultMonster.10UnitObject
_080A988C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9890
sub_080A9890: @ 0x080A9890
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A98C0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xe3
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080A98D0
	subs r1, #2
	b _080A98D0
_080A98C0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x30
	cmp r0, #0x4b
	bge _080A98D0
	movs r1, #0xc
_080A98D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A98E0
sub_080A98E0: @ 0x080A98E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A9942
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9942:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9948
sub_080A9948: @ 0x080A9948
	push {lr}
	ldr r2, _080A995C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9960 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A995C: .4byte _vt.14DefaultMonster.10UnitObject
_080A9960: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9964
sub_080A9964: @ 0x080A9964
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A9982
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A9982
	movs r0, #0x1e
_080A9982:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9990
sub_080A9990: @ 0x080A9990
	push {lr}
	ldr r2, _080A99A4 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A99A8 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A99A4: .4byte _vt.14DefaultMonster.10UnitObject
_080A99A8: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A99AC
sub_080A99AC: @ 0x080A99AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A99E4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xdf
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	adds r0, #3
	cmp r1, #0x55
	bge _080A99FE
	subs r0, #1
	b _080A99FE
_080A99E4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xec
	lsls r0, r0, #1
	cmp r1, #0x23
	blt _080A99FE
	movs r0, #0x41
	cmp r1, #0x55
	bge _080A99FE
	movs r0, #0x1e
_080A99FE:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080A9A0C
sub_080A9A0C: @ 0x080A9A0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080A9A6E
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9A6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9A74
sub_080A9A74: @ 0x080A9A74
	push {lr}
	ldr r2, _080A9A88 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9A8C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9A88: .4byte _vt.14DefaultMonster.10UnitObject
_080A9A8C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9A90
sub_080A9A90: @ 0x080A9A90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9AB4
	ldr r0, _080A9AB0 @ =0x00000151
	b _080A9B08
	.align 2, 0
_080A9AB0: .4byte 0x00000151
_080A9AB4:
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9AE8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9B08
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9B08
	adds r0, #0x67
	b _080A9B08
_080A9AE8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x32
	blt _080A9B06
	adds r1, #3
	cmp r0, #0x50
	blt _080A9B06
	subs r1, #2
	cmp r0, #0x55
	bge _080A9B06
	movs r1, #0xea
_080A9B06:
	adds r0, r1, #0
_080A9B08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9B14
sub_080A9B14: @ 0x080A9B14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x3c
	bl _call_via_r2
	cmp r4, r0
	bge _080A9B76
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080A9B76:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A9B7C
sub_080A9B7C: @ 0x080A9B7C
	push {lr}
	ldr r2, _080A9B90 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9B94 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9B90: .4byte _vt.14DefaultMonster.10UnitObject
_080A9B94: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9B98
sub_080A9B98: @ 0x080A9B98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080A9BBC
	ldr r0, _080A9BB8 @ =0x00000151
	b _080A9C28
	.align 2, 0
_080A9BB8: .4byte 0x00000151
_080A9BBC:
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080A9C08
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	cmp r1, #0x41
	blt _080A9C28
	movs r0, #0xea
	cmp r1, #0x5f
	bge _080A9C28
	adds r0, #0x67
	b _080A9C28
_080A9C08:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa7
	lsls r1, r1, #1
	cmp r0, #0x41
	blt _080A9C26
	adds r1, #3
	cmp r0, #0x5f
	blt _080A9C26
	subs r1, #2
	cmp r0, #0x64
	bge _080A9C26
	movs r1, #0xea
_080A9C26:
	adds r0, r1, #0
_080A9C28:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {lr}
	ldr r2, _080A9C48 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9C4C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9C48: .4byte _vt.14DefaultMonster.10UnitObject
_080A9C4C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9CE6
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9CE6
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9CE8
_080A9CE6:
	movs r0, #0
_080A9CE8:
	cmp r0, #0
	bne _080A9CF0
	movs r0, #0
	b _080A9D54
_080A9CF0:
	ldr r6, _080A9D10 @ =0x00000213
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D14
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080A9D52
	.align 2, 0
_080A9D10: .4byte 0x00000213
_080A9D14:
	ldr r1, _080A9D5C @ =0x00000216
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9D34
	ldr r1, _080A9D60 @ =0x00000217
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9D52
_080A9D34:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x85
	lsls r1, r1, #2
	cmp r0, #0x41
	bge _080A9D46
	adds r1, r6, #0
_080A9D46:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080A9D52:
	movs r0, #1
_080A9D54:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D5C: .4byte 0x00000216
_080A9D60: .4byte 0x00000217

	thumb_func_start sub_080A9D64
sub_080A9D64: @ 0x080A9D64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9D94 @ =0x00000213
	cmp r0, #0x2d
	blt _080A9D84
	adds r1, #3
	cmp r0, #0x37
	blt _080A9D84
	subs r1, #2
	cmp r0, #0x41
	bge _080A9D84
	adds r1, #3
_080A9D84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9D94: .4byte 0x00000213

	thumb_func_start sub_080A9D98
sub_080A9D98: @ 0x080A9D98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080A9DCC @ =0x00000215
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	bl get__13BattleManager
	ldr r1, [r0, #0x1c]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DCC: .4byte 0x00000215

	thumb_func_start sub_080A9DD0
sub_080A9DD0: @ 0x080A9DD0
	push {lr}
	ldr r2, _080A9DE4 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9DE8 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9DE4: .4byte _vt.14DefaultMonster.10UnitObject
_080A9DE8: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9DEC
sub_080A9DEC: @ 0x080A9DEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9E14 @ =0x00000219
	cmp r1, #0x21
	blt _080A9E08
	adds r0, #8
	cmp r1, #0x42
	bge _080A9E08
	subs r0, #7
_080A9E08:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9E14: .4byte 0x00000219

	thumb_func_start sub_080A9E18
sub_080A9E18: @ 0x080A9E18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A9E38
sub_080A9E38: @ 0x080A9E38
	push {lr}
	ldr r2, _080A9E4C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9E50 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9E4C: .4byte _vt.14DefaultMonster.10UnitObject
_080A9E50: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9E54
sub_080A9E54: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080A9EA8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x2d
	blt _080A9EC0
	ldr r0, _080A9EA4 @ =0x0000020D
	cmp r1, #0x46
	bge _080A9EC0
	movs r0, #0xfe
	b _080A9EC0
	.align 2, 0
_080A9EA4: .4byte 0x0000020D
_080A9EA8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x6d
	cmp r1, #0x37
	blt _080A9EC0
	movs r0, #0xfe
	cmp r1, #0x41
	bge _080A9EC0
	movs r0, #0x89
_080A9EC0:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9ECC
sub_080A9ECC: @ 0x080A9ECC
	push {lr}
	ldr r2, _080A9EE0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080A9EE4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080A9EE0: .4byte _vt.14DefaultMonster.10UnitObject
_080A9EE4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080A9EE8
sub_080A9EE8: @ 0x080A9EE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl removeOneStatus__4Uniti
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r4, #0x16
	bne _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	cmp r0, #0
	bgt _080A9F34
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
_080A9F34:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A9F3C
sub_080A9F3C: @ 0x080A9F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A9FD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A9FD2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A9FD4
_080A9FD2:
	movs r0, #0
_080A9FD4:
	cmp r0, #0
	bne _080A9FDC
	movs r0, #0
	b _080AA070
_080A9FDC:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA018
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA014 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA006
	adds r0, #1
	cmp r1, #0x50
	bge _080AA006
	adds r0, #0x24
_080AA006:
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AA06E
	.align 2, 0
_080AA014: .4byte 0x000001ED
_080AA018:
	ldr r1, _080AA078 @ =0x000001ED
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA03A
	movs r1, #0xf7
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA06E
_080AA03A:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _080AA06E
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA07C @ =0x000001F1
	cmp r0, #0x19
	blt _080AA062
	adds r1, #1
	cmp r0, #0x32
	blt _080AA062
	subs r1, #2
	cmp r0, #0x4b
	bge _080AA062
	adds r1, #3
_080AA062:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AA06E:
	movs r0, #1
_080AA070:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA078: .4byte 0x000001ED
_080AA07C: .4byte 0x000001F1

	thumb_func_start sub_080AA080
sub_080AA080: @ 0x080AA080
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA09C
sub_080AA09C: @ 0x080AA09C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA0C0
	ldr r0, _080AA0BC @ =0x000001F5
	b _080AA10C
	.align 2, 0
_080AA0BC: .4byte 0x000001F5
_080AA0C0:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA0E4 @ =0x00000191
	cmp r0, r5
	bne _080AA0EC
	ldr r0, _080AA0E8 @ =0x000001EF
	b _080AA10C
	.align 2, 0
_080AA0E4: .4byte 0x00000191
_080AA0E8: .4byte 0x000001EF
_080AA0EC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA118 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA10A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA10A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA10A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA10A:
	adds r0, r1, #0
_080AA10C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA118: .4byte 0x000001ED

	thumb_func_start sub_080AA11C
sub_080AA11C: @ 0x080AA11C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA140
	ldr r0, _080AA13C @ =0x00000191
	b _080AA18C
	.align 2, 0
_080AA13C: .4byte 0x00000191
_080AA140:
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AA164 @ =0x00000191
	cmp r0, r5
	bne _080AA16C
	ldr r0, _080AA168 @ =0x000001EF
	b _080AA18C
	.align 2, 0
_080AA164: .4byte 0x00000191
_080AA168: .4byte 0x000001EF
_080AA16C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA198 @ =0x000001ED
	cmp r0, #0x14
	blt _080AA18A
	adds r1, #0x25
	cmp r0, #0x1e
	blt _080AA18A
	adds r1, r5, #0
	cmp r0, #0x37
	bge _080AA18A
	movs r1, #0xf7
	lsls r1, r1, #1
_080AA18A:
	adds r0, r1, #0
_080AA18C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA198: .4byte 0x000001ED

	thumb_func_start sub_080AA19C
sub_080AA19C: @ 0x080AA19C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	blt _080AA1CE
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5]
	adds r1, #3
	cmp r0, r1
	bne _080AA1CE
	movs r0, #0xfa
	lsls r0, r0, #1
	b _080AA1E6
_080AA1CE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA1F4 @ =0x000001ED
	cmp r1, #0x2d
	blt _080AA1E6
	adds r0, #1
	cmp r1, #0x50
	bge _080AA1E6
	adds r0, #0x24
_080AA1E6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1F4: .4byte 0x000001ED

	thumb_func_start sub_080AA1F8
sub_080AA1F8: @ 0x080AA1F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AA232
	cmp r0, #1
	bgt _080AA212
	cmp r0, #0
	beq _080AA21C
	b _080AA274
_080AA212:
	cmp r0, #2
	beq _080AA248
	cmp r0, #3
	beq _080AA25E
	b _080AA274
_080AA21C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA232:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA248:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA25E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA2CE
_080AA274:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA2CC
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA2CE
_080AA2CC:
	movs r0, #0
_080AA2CE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA2D4
sub_080AA2D4: @ 0x080AA2D4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080AA2EE
	cmp r2, #1
	bne _080AA30A
_080AA2EE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AA30C
_080AA30A:
	movs r0, #0
_080AA30C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA314
sub_080AA314: @ 0x080AA314
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	bne _080AA368
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0xa
	bl _call_via_r2
	cmp r4, r0
	bge _080AA368
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _080AA3B6
_080AA368:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AA3BE
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #2
_080AA3B6:
	movs r2, #0
	bl _call_via_r3
	b _080AA412
_080AA3BE:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AA412
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080AA412
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AA412:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AA418
sub_080AA418: @ 0x080AA418
	push {lr}
	ldr r2, _080AA42C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA430 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA42C: .4byte _vt.14DefaultMonster.10UnitObject
_080AA430: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA434
sub_080AA434: @ 0x080AA434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AA45C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA458 @ =0x00000113
	cmp r1, #0x19
	blt _080AA474
	adds r0, #0x53
	cmp r1, #0x3c
	bge _080AA474
	b _080AA472
	.align 2, 0
_080AA458: .4byte 0x00000113
_080AA45C:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA480 @ =0x00000113
	cmp r1, #0x23
	blt _080AA474
	movs r0, #0xa9
	cmp r1, #0x55
	bge _080AA474
_080AA472:
	ldr r0, _080AA484 @ =0x00000165
_080AA474:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA480: .4byte 0x00000113
_080AA484: .4byte 0x00000165

	thumb_func_start sub_080AA488
sub_080AA488: @ 0x080AA488
	push {lr}
	ldr r2, _080AA49C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA4A0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA49C: .4byte _vt.14DefaultMonster.10UnitObject
_080AA4A0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA4A4
sub_080AA4A4: @ 0x080AA4A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AA4D0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA4CC @ =0x000001D9
	cmp r1, #0x19
	blt _080AA4E4
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AA4E4
	movs r0, #0xed
	lsls r0, r0, #1
	b _080AA4E4
	.align 2, 0
_080AA4CC: .4byte 0x000001D9
_080AA4D0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xed
	lsls r1, r1, #1
	cmp r0, #0x23
	bge _080AA4E2
	subs r1, #1
_080AA4E2:
	adds r0, r1, #0
_080AA4E4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA4F0
sub_080AA4F0: @ 0x080AA4F0
	push {lr}
	ldr r2, _080AA504 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA508 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA504: .4byte _vt.14DefaultMonster.10UnitObject
_080AA508: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA50C
sub_080AA50C: @ 0x080AA50C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #0
	bgt _080AA54A
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
_080AA54A:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl __modsi3
	cmp r0, #1
	bgt _080AA588
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA584 @ =0x0000025B
	cmp r1, #0x21
	blt _080AA5AC
	adds r0, #2
	cmp r1, #0x42
	bge _080AA5AC
	subs r0, #1
	b _080AA5AC
	.align 2, 0
_080AA584: .4byte 0x0000025B
_080AA588:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AA5B8 @ =0x0000025E
	cmp r0, #0x14
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x28
	blt _080AA5AA
	adds r1, #1
	cmp r0, #0x3c
	blt _080AA5AA
	adds r1, #2
	cmp r0, #0x50
	bge _080AA5AA
	subs r1, #1
_080AA5AA:
	adds r0, r1, #0
_080AA5AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA5B8: .4byte 0x0000025E

	thumb_func_start sub_080AA5BC
sub_080AA5BC: @ 0x080AA5BC
	push {lr}
	ldr r2, _080AA5D0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA5D4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA5D0: .4byte _vt.14DefaultMonster.10UnitObject
_080AA5D4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA5D8
sub_080AA5D8: @ 0x080AA5D8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AA5F2
	cmp r2, #1
	bne _080AA60E
_080AA5F2:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AA610
_080AA60E:
	movs r0, #0
_080AA610:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AA618
sub_080AA618: @ 0x080AA618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r7, r1, #0
	bl unit_98__4UnitP6Action
	ldr r1, [r6, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AA63E
	b _080AA7A0
_080AA63E:
	ldr r1, [r7, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AA658
	b _080AA7A0
_080AA658:
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AA678
	b _080AA7A0
_080AA678:
	movs r0, #0x14
	bl setsleep
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r0, _080AA814 @ =0x0000064E
	bl playSound
	movs r0, #0x47
	adds r1, r6, #0
	adds r2, r6, #0
	bl playSeq
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl hitPlayer
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl playSeq
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	add r0, sp, #0x28
	bl __3Msg
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
_080AA7A0:
	ldr r1, [r6, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA80C
	ldr r1, [r7, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bne _080AA80C
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #2
	ble _080AA80C
	ldr r1, [r6, #0x1c]
	movs r2, #0x89
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AA80C
	movs r0, #0x43
	adds r1, r6, #0
	bl sub_080741AC
	bl sub_08074234
_080AA80C:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA814: .4byte 0x0000064E

	thumb_func_start sub_080AA818
sub_080AA818: @ 0x080AA818
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AA828 @ =0x000001EB
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080AA828: .4byte 0x000001EB

	thumb_func_start sub_080AA82C
sub_080AA82C: @ 0x080AA82C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080AA8B4
	ldr r1, [r5, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xf6
	lsls r4, r4, #1
	cmp r0, r4
	bne _080AA892
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x28
	bge _080AA8C6
	b _080AA8C4
_080AA892:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AA8B0 @ =0x000001E9
	cmp r1, #0x28
	blt _080AA8C8
	adds r0, r4, #0
	cmp r1, #0x5a
	bge _080AA8C8
	movs r0, #0xf5
	lsls r0, r0, #1
	b _080AA8C8
	.align 2, 0
_080AA8B0: .4byte 0x000001E9
_080AA8B4:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf5
	lsls r1, r1, #1
	cmp r0, #0x41
	bge _080AA8C6
_080AA8C4:
	subs r1, #1
_080AA8C6:
	adds r0, r1, #0
_080AA8C8:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA8D4
sub_080AA8D4: @ 0x080AA8D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AA940
	cmp r0, #1
	beq _080AA956
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AA96C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AA96E
_080AA940:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA96E
_080AA956:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AA96E
_080AA96C:
	movs r0, #0
_080AA96E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AA974
sub_080AA974: @ 0x080AA974
	push {lr}
	ldr r2, _080AA988 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA98C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA988: .4byte _vt.14DefaultMonster.10UnitObject
_080AA98C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA990
sub_080AA990: @ 0x080AA990
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x39
	bl sub_08072E38
	cmp r0, #0
	beq _080AA9B8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x2d
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	adds r0, #0xc7
	b _080AA9D0
_080AA9B8:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1d
	cmp r1, #0x32
	blt _080AA9D0
	movs r0, #0x42
	cmp r1, #0x55
	bge _080AA9D0
	ldr r0, _080AA9DC @ =0x000001D5
_080AA9D0:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AA9DC: .4byte 0x000001D5

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {lr}
	ldr r2, _080AA9F4 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AA9F8 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AA9F4: .4byte _vt.14DefaultMonster.10UnitObject
_080AA9F8: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AA9FC
sub_080AA9FC: @ 0x080AA9FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AAA22
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #4
	cmp r1, #0x32
	blt _080AAA34
	movs r0, #0xc3
	cmp r1, #0x55
	bge _080AAA34
	movs r0, #0x5d
	b _080AAA34
_080AAA22:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x5d
	cmp r0, #0x46
	bge _080AAA32
	movs r1, #4
_080AAA32:
	adds r0, r1, #0
_080AAA34:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAA40
sub_080AAA40: @ 0x080AAA40
	push {lr}
	ldr r2, _080AAA54 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AAA58 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AAA54: .4byte _vt.14DefaultMonster.10UnitObject
_080AAA58: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AAA5C
sub_080AAA5C: @ 0x080AAA5C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	blt _080AAAAC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1a
	cmp r0, #0x23
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x50
	blt _080AAACA
	movs r1, #0x34
	cmp r0, #0x55
	bge _080AAACA
	b _080AAAC8
_080AAAAC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1a
	cmp r0, #0x1e
	blt _080AAACA
	movs r1, #0x6d
	cmp r0, #0x46
	blt _080AAACA
	movs r1, #0xe9
	lsls r1, r1, #1
	cmp r0, #0x4b
	bge _080AAACA
_080AAAC8:
	movs r1, #0x85
_080AAACA:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAAD8
sub_080AAAD8: @ 0x080AAAD8
	push {lr}
	ldr r2, _080AAAEC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AAAF0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AAAEC: .4byte _vt.14DefaultMonster.10UnitObject
_080AAAF0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AAAF4
sub_080AAAF4: @ 0x080AAAF4
	push {r4, lr}
	movs r4, #0
	b _080AAB28
_080AAAFA:
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAB26
	adds r0, r4, #0
	bl sub_08072AA4__Fi
	b _080AAB32
_080AAB26:
	adds r4, #1
_080AAB28:
	bl sub_08072A88__Fv
	cmp r4, r0
	blt _080AAAFA
	movs r0, #0
_080AAB32:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080AAB84 @ =0x000001CD
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAB88
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	cmp r3, #0
	beq _080AAB88
	ldr r1, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	movs r0, #1
	b _080AAB90
	.align 2, 0
_080AAB84: .4byte 0x000001CD
_080AAB88:
	adds r0, r4, #0
	adds r1, r5, #0
	bl monster_2c8__7MonsterP6Action
_080AAB90:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAB98
sub_080AAB98: @ 0x080AAB98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8d
	bne _080AAC0E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AABEC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #1
	cmp r1, #0x2d
	blt _080AAC6E
	adds r0, #2
	cmp r1, #0x50
	bge _080AAC6E
	subs r0, #1
	b _080AAC6E
_080AABEC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #0x50
	cmp r0, #0x50
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC0E:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AAC48
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x28
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x46
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	movs r1, #0xbf
	lsls r1, r1, #1
	b _080AAC6C
_080AAC48:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xbe
	lsls r1, r1, #1
	cmp r0, #0x1e
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x32
	blt _080AAC6C
	adds r1, #1
	cmp r0, #0x50
	blt _080AAC6C
	movs r1, #0x8d
	cmp r0, #0x5f
	bge _080AAC6C
	ldr r1, _080AAC7C @ =0x000001CD
_080AAC6C:
	adds r0, r1, #0
_080AAC6E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAC7C: .4byte 0x000001CD

	thumb_func_start sub_080AAC80
sub_080AAC80: @ 0x080AAC80
	push {lr}
	ldr r2, _080AAC94 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AAC98 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AAC94: .4byte _vt.14DefaultMonster.10UnitObject
_080AAC98: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AAC9C
sub_080AAC9C: @ 0x080AAC9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD32
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAD32
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAD34
_080AAD32:
	movs r0, #0
_080AAD34:
	cmp r0, #0
	bne _080AAD3C
	movs r0, #0
	b _080AAD5E
_080AAD3C:
	adds r0, r5, #0
	movs r1, #0x91
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAD50
	movs r0, #1
	b _080AAD5E
_080AAD50:
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AAD5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AAD64
sub_080AAD64: @ 0x080AAD64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x19
	cmp r0, #0xa
	blt _080AAD84
	movs r1, #0x1e
	cmp r0, #0x23
	blt _080AAD84
	movs r1, #0x91
	cmp r0, #0x32
	bge _080AAD84
	movs r1, #0x5c
_080AAD84:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAD94
sub_080AAD94: @ 0x080AAD94
	push {lr}
	ldr r2, _080AADA8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AADAC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AADA8: .4byte _vt.14DefaultMonster.10UnitObject
_080AADAC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AADB0
sub_080AADB0: @ 0x080AADB0
	push {lr}
	adds r2, r0, #0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #2
	beq _080AADCA
	movs r0, #0x3c
	cmp r0, r1
	bge _080AADC8
	adds r0, r1, #0
_080AADC8:
	adds r1, r0, #0
_080AADCA:
	adds r0, r2, #0
	bl setHP__7Monsteri
	pop {r0}
	bx r0

	thumb_func_start sub_080AADD4
sub_080AADD4: @ 0x080AADD4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl monster_300__7Monsteri
	ldr r1, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r6, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	movs r2, #1
	bl sub_0805CD30
	cmp r5, #0
	bne _080AAE36
	ldr r1, [r6, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	b _080AAE4C
_080AAE36:
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
_080AAE4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AAE54
sub_080AAE54: @ 0x080AAE54
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AAE6E
	cmp r2, #1
	bne _080AAE8A
_080AAE6E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AAE8C
_080AAE8A:
	movs r0, #0
_080AAE8C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAE94
sub_080AAE94: @ 0x080AAE94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AAF2A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF2A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AAF2C
_080AAF2A:
	movs r0, #0
_080AAF2C:
	cmp r0, #0
	bne _080AAF34
	movs r0, #0
	b _080AAF8C
_080AAF34:
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF60
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080AAF8A
_080AAF60:
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AAF8A
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080AAF8A:
	movs r0, #1
_080AAF8C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAF94
sub_080AAF94: @ 0x080AAF94
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AAFA4
sub_080AAFA4: @ 0x080AAFA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AAFC6
	movs r0, #0xb9
	lsls r0, r0, #1
	b _080AAFC8
_080AAFC6:
	ldr r0, _080AAFD4 @ =0x00000171
_080AAFC8:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAFD4: .4byte 0x00000171

	thumb_func_start sub_080AAFD8
sub_080AAFD8: @ 0x080AAFD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AB00C
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB008 @ =0x00000173
	cmp r0, #0x32
	bge _080AB004
	subs r1, #4
_080AB004:
	adds r0, r1, #0
	b _080AB02C
	.align 2, 0
_080AB008: .4byte 0x00000173
_080AB00C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	ble _080AB02A
	movs r0, #0xb8
	lsls r0, r0, #1
	b _080AB02C
_080AB02A:
	ldr r0, _080AB038 @ =0x0000021F
_080AB02C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB038: .4byte 0x0000021F

	thumb_func_start sub_080AB03C
sub_080AB03C: @ 0x080AB03C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AB072
	cmp r0, #1
	bgt _080AB056
	cmp r0, #0
	beq _080AB05C
	b _080AB09E
_080AB056:
	cmp r0, #2
	beq _080AB088
	b _080AB09E
_080AB05C:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB072:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB088:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB0F8
_080AB09E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB0F6
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB0F8
_080AB0F6:
	movs r0, #0
_080AB0F8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB100
sub_080AB100: @ 0x080AB100
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x3c
	bgt _080AB15E
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB15E
	ldr r0, _080AB164 @ =0x0000021E
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
_080AB15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB164: .4byte 0x0000021E

	thumb_func_start sub_080AB168
sub_080AB168: @ 0x080AB168
	push {lr}
	ldr r2, _080AB17C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AB180 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB17C: .4byte _vt.14DefaultMonster.10UnitObject
_080AB180: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AB184
sub_080AB184: @ 0x080AB184
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	cmp r1, #0xf
	blt _080AB1A2
	adds r0, #2
	cmp r1, #0x1e
	bge _080AB1A2
	subs r0, #1
_080AB1A2:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB1B0
sub_080AB1B0: @ 0x080AB1B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB1E0 @ =0x00000167
	cmp r0, #0x19
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x41
	blt _080AB1D0
	adds r1, #1
	cmp r0, #0x5f
	bge _080AB1D0
	adds r1, #2
_080AB1D0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB1E0: .4byte 0x00000167

	thumb_func_start sub_080AB1E4
sub_080AB1E4: @ 0x080AB1E4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB250
	cmp r0, #1
	beq _080AB266
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB27C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB27E
_080AB250:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB27E
_080AB266:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB27E
_080AB27C:
	movs r0, #0
_080AB27E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB284
sub_080AB284: @ 0x080AB284
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB29E
	cmp r2, #1
	bne _080AB2BA
_080AB29E:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AB2BC
_080AB2BA:
	movs r0, #0
_080AB2BC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x41
	bl _call_via_r2
	cmp r4, r0
	bge _080AB326
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB326
	movs r0, #0xb5
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AB326:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AB32C
sub_080AB32C: @ 0x080AB32C
	push {lr}
	ldr r2, _080AB340 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AB344 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB340: .4byte _vt.14DefaultMonster.10UnitObject
_080AB344: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AB348
sub_080AB348: @ 0x080AB348
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AB36C
	ldr r0, _080AB368 @ =0x0000011F
	b _080AB39C
	.align 2, 0
_080AB368: .4byte 0x0000011F
_080AB36C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AB39A
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x1e
	blt _080AB39C
	movs r0, #0x3a
	cmp r1, #0x55
	bge _080AB39C
_080AB39A:
	movs r0, #0x59
_080AB39C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB3A8
sub_080AB3A8: @ 0x080AB3A8
	push {lr}
	ldr r2, _080AB3BC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AB3C0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB3BC: .4byte _vt.14DefaultMonster.10UnitObject
_080AB3C0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AB3C4
sub_080AB3C4: @ 0x080AB3C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x83
	bl sub_08072E38
	adds r2, r0, #0
	cmp r2, #0
	beq _080AB3F2
	ldr r1, [r2, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x45
	bgt _080AB3F2
	movs r0, #0x91
	lsls r0, r0, #1
	b _080AB40A
_080AB3F2:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AB418 @ =0x00000127
	cmp r1, #0x37
	blt _080AB40A
	adds r0, #0x72
	cmp r1, #0x41
	bge _080AB40A
	movs r0, #0xca
_080AB40A:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB418: .4byte 0x00000127

	thumb_func_start sub_080AB41C
sub_080AB41C: @ 0x080AB41C
	push {lr}
	ldr r2, _080AB430 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AB434 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB430: .4byte _vt.14DefaultMonster.10UnitObject
_080AB434: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AB438
sub_080AB438: @ 0x080AB438
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AB452
	cmp r2, #1
	bne _080AB46E
_080AB452:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AB470
_080AB46E:
	movs r0, #0
_080AB470:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB478
sub_080AB478: @ 0x080AB478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	bl unit_98__4UnitP6Action
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AB49E
	b _080AB600
_080AB49E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _080AB4B8
	b _080AB600
_080AB4B8:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB4D8
	b _080AB600
_080AB4D8:
	movs r0, #0x14
	bl setsleep
	ldr r1, [r7, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x18
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x34
	movs r5, #0
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	ldr r0, _080AB64C @ =0x0000064E
	bl playSound
	movs r0, #0x47
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	ldr r1, [r6, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0x14
	movs r2, #1
	bl hitPlayer
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0x49
	adds r1, r4, #0
	bl playSeq
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x10
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r0, sp, #0x1c
	bl __3Msg
	add r0, sp, #0x28
	bl __3Msg
	add r4, sp, #0x28
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x9f
	lsls r1, r1, #2
	add r2, sp, #0x10
	add r3, sp, #0x1c
	bl ROMStrFmt__FiRC3MsgN21
	add r1, sp, #0x38
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC5Colorb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x1c
	movs r1, #2
	bl _._3Msg
	add r0, sp, #0x10
	movs r1, #2
	bl _._3Msg
_080AB600:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB642
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r6, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB642
	ldr r1, [r7, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
_080AB642:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB64C: .4byte 0x0000064E

	thumb_func_start sub_080AB650
sub_080AB650: @ 0x080AB650
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfc
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB660
sub_080AB660: @ 0x080AB660
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x4e
	bne _080AB694
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x2c
	cmp r0, #0x3c
	bge _080AB690
	movs r1, #0x73
_080AB690:
	adds r0, r1, #0
	b _080AB6AC
_080AB694:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x73
	cmp r1, #0x23
	blt _080AB6AC
	movs r0, #0x4e
	cmp r1, #0x3c
	bge _080AB6AC
	movs r0, #0x2c
_080AB6AC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AB724
	cmp r0, #1
	beq _080AB73A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AB750
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AB752
_080AB724:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB752
_080AB73A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AB752
_080AB750:
	movs r0, #0
_080AB752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0x45
	bgt _080AB7A0
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB7A0
	movs r0, #0xfb
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AB7A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AB7A8
sub_080AB7A8: @ 0x080AB7A8
	push {lr}
	ldr r2, _080AB7BC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AB7C0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AB7BC: .4byte _vt.14DefaultMonster.10UnitObject
_080AB7C0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AB7C4
sub_080AB7C4: @ 0x080AB7C4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	bl removeOneStatus__4Uniti
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB7DE
	movs r0, #0
	b _080AB81E
_080AB7DE:
	cmp r5, #0x16
	bne _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB81C
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
_080AB81C:
	movs r0, #1
_080AB81E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB824
sub_080AB824: @ 0x080AB824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AB8BA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8BA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AB8BC
_080AB8BA:
	movs r0, #0
_080AB8BC:
	cmp r0, #0
	bne _080AB8C4
	movs r0, #0
	b _080AB91E
_080AB8C4:
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB8F4
	ldr r1, [r4, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #1
	str r0, [r1]
_080AB8F4:
	adds r0, r5, #0
	movs r1, #0xae
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AB91C
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08074234
_080AB91C:
	movs r0, #1
_080AB91E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AB924
sub_080AB924: @ 0x080AB924
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AB964
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AB960 @ =0x00000177
	cmp r0, #0x28
	bge _080AB95A
	subs r1, #1
_080AB95A:
	adds r0, r1, #0
	b _080AB97E
	.align 2, 0
_080AB960: .4byte 0x00000177
_080AB964:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, #0x1e
	blt _080AB97E
	adds r0, #2
	cmp r1, #0x50
	bge _080AB97E
	subs r0, #1
_080AB97E:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AB98C
sub_080AB98C: @ 0x080AB98C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #3
	cmp r0, r1
	bne _080AB9BC
	movs r0, #0xae
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
_080AB9BC:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #3
	bl sub_0807067C
	cmp r0, #0
	bne _080ABA00
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AB9FC @ =0x00000179
	cmp r1, #0x14
	blt _080AB9F4
	adds r0, #2
	cmp r1, #0x28
	bge _080AB9F4
	subs r0, #1
_080AB9F4:
	adds r1, r4, #0
	bl sub_080741AC
	b _080ABA14
	.align 2, 0
_080AB9FC: .4byte 0x00000179
_080ABA00:
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080ABA14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABA1C
sub_080ABA1C: @ 0x080ABA1C
	push {lr}
	ldr r2, _080ABA30 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ABA34 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABA30: .4byte _vt.14DefaultMonster.10UnitObject
_080ABA34: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ABA38
sub_080ABA38: @ 0x080ABA38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ABAA4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r4, #0x1c]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	ldr r1, [r5, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ABAA4
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABAA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABAAC
sub_080ABAAC: @ 0x080ABAAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_88__4UnitP6Action
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABAD2
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
_080ABAD2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABAD8
sub_080ABAD8: @ 0x080ABAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x9d
	cmp r0, #0x46
	bge _080ABAEC
	movs r1, #0x1f
_080ABAEC:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABAFC
sub_080ABAFC: @ 0x080ABAFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080ABB18
	movs r0, #0x77
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ABB18:
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABB24
sub_080ABB24: @ 0x080ABB24
	push {lr}
	ldr r2, _080ABB38 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ABB3C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABB38: .4byte _vt.14DefaultMonster.10UnitObject
_080ABB3C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ABB40
sub_080ABB40: @ 0x080ABB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080ABB78
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #2
	cmp r0, #0x14
	blt _080ABB70
	movs r1, #0x2b
	cmp r0, #0x23
	blt _080ABB70
	movs r1, #0x8c
	lsls r1, r1, #2
	cmp r0, #0x28
	blt _080ABB70
	ldr r1, _080ABB74 @ =0x0000012B
	cmp r0, #0x41
	bge _080ABB70
	subs r1, #1
_080ABB70:
	adds r0, r1, #0
	b _080ABB92
	.align 2, 0
_080ABB74: .4byte 0x0000012B
_080ABB78:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080ABBA0 @ =0x00000113
	cmp r1, #0x3c
	blt _080ABB92
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r1, #0x50
	bge _080ABB92
	movs r0, #0x2b
_080ABB92:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080ABBA0: .4byte 0x00000113

	thumb_func_start sub_080ABBA4
sub_080ABBA4: @ 0x080ABBA4
	push {lr}
	ldr r2, _080ABBB8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ABBBC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABBB8: .4byte _vt.14DefaultMonster.10UnitObject
_080ABBBC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ABBC0
sub_080ABBC0: @ 0x080ABBC0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	blt _080ABBDA
	cmp r2, #1
	bne _080ABBF6
_080ABBDA:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ABBF8
_080ABBF6:
	movs r0, #0
_080ABBF8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABC00
sub_080ABC00: @ 0x080ABC00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ABC96
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABC96
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ABC98
_080ABC96:
	movs r0, #0
_080ABC98:
	cmp r0, #0
	bne _080ABCA0
	movs r0, #0
	b _080ABCCA
_080ABCA0:
	ldr r1, _080ABCD0 @ =0x000001E7
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ABCC8
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080ABCC8:
	movs r0, #1
_080ABCCA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABCD0: .4byte 0x000001E7

	thumb_func_start sub_080ABCD4
sub_080ABCD4: @ 0x080ABCD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xcf
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABCFE
	movs r0, #0xf4
	lsls r0, r0, #1
	b _080ABD18
_080ABCFE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	cmp r1, #0x19
	blt _080ABD18
	adds r0, r5, #0
	cmp r1, #0x3c
	bge _080ABD18
	ldr r0, _080ABD24 @ =0x000001E5
_080ABD18:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABD24: .4byte 0x000001E5

	thumb_func_start sub_080ABD28
sub_080ABD28: @ 0x080ABD28
	push {lr}
	adds r1, r0, #0
	ldr r0, _080ABD38 @ =0x000001E7
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080ABD38: .4byte 0x000001E7

	thumb_func_start sub_080ABD3C
sub_080ABD3C: @ 0x080ABD3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xf3
	lsls r5, r5, #1
	cmp r0, r5
	bne _080ABD84
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080ABD80 @ =0x000001E3
	cmp r0, #0x14
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x2d
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x41
	bge _080ABDA6
	subs r1, #4
	b _080ABDA6
	.align 2, 0
_080ABD80: .4byte 0x000001E3
_080ABD84:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080ABDB4 @ =0x000001E3
	cmp r0, #0xa
	blt _080ABDA6
	adds r1, #1
	cmp r0, #0x23
	blt _080ABDA6
	subs r1, #3
	cmp r0, #0x37
	blt _080ABDA6
	adds r1, r5, #0
	cmp r0, #0x5a
	bge _080ABDA6
	ldr r1, _080ABDB8 @ =0x000001E5
_080ABDA6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ABDB4: .4byte 0x000001E3
_080ABDB8: .4byte 0x000001E5

	thumb_func_start sub_080ABDBC
sub_080ABDBC: @ 0x080ABDBC
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080ABDE6
	cmp r0, #1
	bgt _080ABDD6
	cmp r0, #0
	beq _080ABDDC
	b _080ABE04
_080ABDD6:
	cmp r0, #2
	beq _080ABDEE
	b _080ABE04
_080ABDDC:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080ABDF6
_080ABDE6:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080ABDF4
_080ABDEE:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
_080ABDF4:
	adds r1, r1, r0
_080ABDF6:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ABE06
_080ABE04:
	movs r0, #0
_080ABE06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ABE0C
sub_080ABE0C: @ 0x080ABE0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0807066C
	cmp r4, r0
	bge _080ABE64
	ldr r1, [r5, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080ABE64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ABE6C
sub_080ABE6C: @ 0x080ABE6C
	push {lr}
	ldr r2, _080ABE80 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ABE84 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ABE80: .4byte _vt.14DefaultMonster.10UnitObject
_080ABE84: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl setHP__7Monsteri
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r6, r0
	ble _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x14
	bl _call_via_r2
	cmp r4, r0
	bgt _080ABF10
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	b _080ABF72
_080ABF10:
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r6, r0
	ble _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bgt _080ABF76
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
_080ABF72:
	adds r1, r5, r2
	str r0, [r1]
_080ABF76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ABF7C
sub_080ABF7C: @ 0x080ABF7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC012
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC012
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AC014
_080AC012:
	movs r0, #0
_080AC014:
	cmp r0, #0
	bne _080AC01C
	movs r0, #0
	b _080AC03A
_080AC01C:
	ldr r1, _080AC040 @ =0x000001DF
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC038
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC038:
	movs r0, #1
_080AC03A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC040: .4byte 0x000001DF

	thumb_func_start sub_080AC044
sub_080AC044: @ 0x080AC044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC070
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC070:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC098
	movs r0, #0xf1
	lsls r0, r0, #1
	b _080AC1A4
_080AC098:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AC0B8
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AC0B8
	ldr r0, _080AC0B4 @ =0x000001DF
	b _080AC1A4
	.align 2, 0
_080AC0B4: .4byte 0x000001DF
_080AC0B8:
	ldr r1, [r4, #0x1c]
	movs r5, #0x84
	lsls r5, r5, #3
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #2
	bgt _080AC120
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC102
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xee
	lsls r1, r1, #1
	cmp r0, #0x2d
	bge _080AC1A2
	subs r1, #1
	b _080AC1A2
_080AC102:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC11C @ =0x000001DB
	cmp r1, #0x28
	blt _080AC1A4
	adds r0, #3
	cmp r1, #0x5a
	bge _080AC1A4
	subs r0, #2
	b _080AC1A4
	.align 2, 0
_080AC11C: .4byte 0x000001DB
_080AC120:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #3
	bgt _080AC13E
	movs r0, #0xf0
	lsls r0, r0, #1
	b _080AC1A4
_080AC13E:
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r1, [r1]
	adds r1, #1
	cmp r0, r1
	bne _080AC180
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC17C @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x23
	blt _080AC1A2
	adds r1, #5
	cmp r0, #0x4b
	bge _080AC1A2
	subs r1, #4
	b _080AC1A2
	.align 2, 0
_080AC17C: .4byte 0x000001DB
_080AC180:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC1B0 @ =0x000001DB
	cmp r0, #0xa
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x1e
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x46
	blt _080AC1A2
	adds r1, #1
	cmp r0, #0x5a
	bge _080AC1A2
	adds r1, #3
_080AC1A2:
	adds r0, r1, #0
_080AC1A4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC1B0: .4byte 0x000001DB

	thumb_func_start sub_080AC1B4
sub_080AC1B4: @ 0x080AC1B4
	push {lr}
	ldr r2, _080AC1C8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC1CC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC1C8: .4byte _vt.14DefaultMonster.10UnitObject
_080AC1CC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC1D0
sub_080AC1D0: @ 0x080AC1D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AC200
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x4d
	cmp r0, #0x3c
	bge _080AC1FC
	movs r1, #0x1d
_080AC1FC:
	adds r0, r1, #0
	b _080AC202
_080AC200:
	movs r0, #0xc0
_080AC202:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC210
sub_080AC210: @ 0x080AC210
	push {lr}
	ldr r2, _080AC224 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC228 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC224: .4byte _vt.14DefaultMonster.10UnitObject
_080AC228: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC22C
sub_080AC22C: @ 0x080AC22C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080AC252
	cmp r5, #3
	bne _080AC252
	movs r0, #0x82
	b _080AC25A
_080AC252:
	adds r0, r4, #0
	adds r1, r5, #0
	bl getElementWeakness__C4UnitUi
_080AC25A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC260
sub_080AC260: @ 0x080AC260
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC290
	movs r0, #0
	movs r1, #0x63
	bl randS32
	movs r1, #0
	cmp r0, #0x45
	bgt _080AC28C
	movs r1, #0x9a
_080AC28C:
	adds r0, r1, #0
	b _080AC29A
_080AC290:
	adds r0, r4, #0
	bl monster_2e8__7Monster
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080AC29A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC2A0
sub_080AC2A0: @ 0x080AC2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC2D0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #7
	cmp r0, #0x41
	bge _080AC2CC
	movs r1, #0xd7
_080AC2CC:
	adds r0, r1, #0
	b _080AC2EA
_080AC2D0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC2F8 @ =0x00000101
	cmp r1, #0x28
	blt _080AC2EA
	movs r0, #0x99
	lsls r0, r0, #2
	cmp r1, #0x4b
	bge _080AC2EA
	subs r0, #1
_080AC2EA:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC2F8: .4byte 0x00000101

	thumb_func_start sub_080AC2FC
sub_080AC2FC: @ 0x080AC2FC
	push {r4, r5, lr}
	adds r5, r1, #0
	cmp r5, r0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _080AC358
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x46
	bl _call_via_r2
	cmp r4, r0
	bge _080AC358
	movs r0, #1
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080AC358:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC360
sub_080AC360: @ 0x080AC360
	push {lr}
	ldr r2, _080AC374 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC378 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC374: .4byte _vt.14DefaultMonster.10UnitObject
_080AC378: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC37C
sub_080AC37C: @ 0x080AC37C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC396
	cmp r2, #1
	bne _080AC3B2
_080AC396:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AC3B4
_080AC3B2:
	movs r0, #0
_080AC3B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC3BC
sub_080AC3BC: @ 0x080AC3BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AC3DE
	movs r0, #0x81
	lsls r0, r0, #1
	b _080AC3F6
_080AC3DE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC404 @ =0x0000015B
	cmp r1, #0x19
	blt _080AC3F6
	adds r0, #1
	cmp r1, #0x55
	bge _080AC3F6
	adds r0, #3
_080AC3F6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC404: .4byte 0x0000015B

	thumb_func_start sub_080AC408
sub_080AC408: @ 0x080AC408
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9b
	bl sub_08072E38
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x9c
	bl sub_08072E38
	cmp r0, #0
	beq _080AC424
	adds r4, #1
_080AC424:
	cmp r4, #1
	ble _080AC438
	ldr r0, _080AC434 @ =0x0000015D
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
	.align 2, 0
_080AC434: .4byte 0x0000015D
_080AC438:
	cmp r4, #0
	ble _080AC448
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
_080AC448:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AC4A0
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC4A2
_080AC4A0:
	movs r0, #0
_080AC4A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC4A8
sub_080AC4A8: @ 0x080AC4A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080AC514
	cmp r0, #1
	beq _080AC52A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AC540
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AC542
_080AC514:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AC542
_080AC52A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AC542
_080AC540:
	movs r0, #0
_080AC542:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC548
sub_080AC548: @ 0x080AC548
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AC56C
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AC56C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC574
sub_080AC574: @ 0x080AC574
	push {lr}
	ldr r2, _080AC588 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC58C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC588: .4byte _vt.14DefaultMonster.10UnitObject
_080AC58C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC590
sub_080AC590: @ 0x080AC590
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AC626
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC626
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AC628
_080AC626:
	movs r0, #0
_080AC628:
	cmp r0, #0
	bne _080AC630
	movs r0, #0
	b _080AC66C
_080AC630:
	ldr r1, _080AC674 @ =0x0000011D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC64C
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC64C:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AC66A
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AC66A:
	movs r0, #1
_080AC66C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AC674: .4byte 0x0000011D

	thumb_func_start sub_080AC678
sub_080AC678: @ 0x080AC678
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC68A
	movs r0, #0
	b _080AC6DE
_080AC68A:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC69A
	movs r0, #3
	b _080AC6D8
_080AC69A:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC6BA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xb2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AC6D6
	subs r1, #0x51
	b _080AC6D6
_080AC6BA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC6E4 @ =0x00000105
	cmp r0, #0x2d
	blt _080AC6D6
	adds r1, #0x18
	cmp r0, #0x4b
	blt _080AC6D6
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC6D6
	adds r1, #0x47
_080AC6D6:
	adds r0, r1, #0
_080AC6D8:
	adds r1, r4, #0
	bl sub_080741AC
_080AC6DE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC6E4: .4byte 0x00000105

	thumb_func_start sub_080AC6E8
sub_080AC6E8: @ 0x080AC6E8
	push {lr}
	ldr r2, _080AC6FC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC700 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC6FC: .4byte _vt.14DefaultMonster.10UnitObject
_080AC700: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC704
sub_080AC704: @ 0x080AC704
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC716
	movs r0, #0
	b _080AC72E
_080AC716:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x60
	cmp r0, #0x19
	bge _080AC726
	adds r1, #0xb3
_080AC726:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
_080AC72E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC734
sub_080AC734: @ 0x080AC734
	push {lr}
	ldr r2, _080AC748 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC74C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC748: .4byte _vt.14DefaultMonster.10UnitObject
_080AC74C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC750
sub_080AC750: @ 0x080AC750
	push {r4, lr}
	adds r4, r0, #0
	bl onRoundEnd__7Monster
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AC77A
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AC79A
_080AC77A:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AC79A
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AC79A
	movs r0, #0xb7
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AC79A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC7A0
sub_080AC7A0: @ 0x080AC7A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x32
	blt _080AC7BC
	movs r0, #0x2f
	cmp r1, #0x3c
	bge _080AC7BC
	movs r0, #0x8c
_080AC7BC:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC7C8
sub_080AC7C8: @ 0x080AC7C8
	push {lr}
	ldr r2, _080AC7DC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC7E0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC7DC: .4byte _vt.14DefaultMonster.10UnitObject
_080AC7E0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC7E4
sub_080AC7E4: @ 0x080AC7E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072EA8
	cmp r0, #2
	bgt _080AC810
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #2
	cmp r0, #0x23
	blt _080AC80C
	movs r1, #0x35
	cmp r0, #0x28
	blt _080AC80C
	movs r1, #0xc4
	cmp r0, #0x32
	bge _080AC80C
	movs r1, #0x7b
_080AC80C:
	adds r0, r1, #0
	b _080AC828
_080AC810:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x41
	blt _080AC828
	movs r0, #0x7b
	cmp r1, #0x55
	bge _080AC828
	movs r0, #0x35
_080AC828:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080AC834
sub_080AC834: @ 0x080AC834
	push {lr}
	ldr r2, _080AC848 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC84C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC848: .4byte _vt.14DefaultMonster.10UnitObject
_080AC84C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC850
sub_080AC850: @ 0x080AC850
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	blt _080AC8A0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #8
	cmp r0, #0xf
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x50
	bge _080AC8BC
	b _080AC8BA
_080AC8A0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #8
	cmp r0, #0x14
	blt _080AC8BC
	movs r1, #0x12
	cmp r0, #0x32
	blt _080AC8BC
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC8BC
_080AC8BA:
	movs r1, #0x46
_080AC8BC:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC8CC
sub_080AC8CC: @ 0x080AC8CC
	push {lr}
	ldr r2, _080AC8E0 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AC8E4 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AC8E0: .4byte _vt.14DefaultMonster.10UnitObject
_080AC8E4: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AC8E8
sub_080AC8E8: @ 0x080AC8E8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AC902
	cmp r2, #1
	bne _080AC91E
_080AC902:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AC920
_080AC91E:
	movs r0, #0
_080AC920:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AC928
sub_080AC928: @ 0x080AC928
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072EA8
	cmp r0, #1
	bgt _080AC94C
	ldr r1, [r4, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AC94C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC954
sub_080AC954: @ 0x080AC954
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AC978
	ldr r0, _080AC974 @ =0x0000014D
	b _080AC996
	.align 2, 0
_080AC974: .4byte 0x0000014D
_080AC978:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC9A4 @ =0x0000014B
	cmp r0, #0x28
	blt _080AC994
	adds r1, #1
	cmp r0, #0x41
	blt _080AC994
	adds r1, #1
	cmp r0, #0x55
	bge _080AC994
	movs r1, #0xbe
_080AC994:
	adds r0, r1, #0
_080AC996:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9A4: .4byte 0x0000014B

	thumb_func_start sub_080AC9A8
sub_080AC9A8: @ 0x080AC9A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC9D0 @ =0x0000014B
	cmp r1, #0x37
	blt _080AC9C4
	movs r0, #0xbe
	cmp r1, #0x55
	bge _080AC9C4
	adds r0, #0x8e
_080AC9C4:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9D0: .4byte 0x0000014B

	thumb_func_start sub_080AC9D4
sub_080AC9D4: @ 0x080AC9D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ACA40
	cmp r0, #1
	beq _080ACA56
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACA6C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ACA6E
_080ACA40:
	ldr r1, [r6, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACA6E
_080ACA56:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACA6E
_080ACA6C:
	movs r0, #0
_080ACA6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACA74
sub_080ACA74: @ 0x080ACA74
	push {lr}
	ldr r2, _080ACA88 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ACA8C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACA88: .4byte _vt.14DefaultMonster.10UnitObject
_080ACA8C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ACA90
sub_080ACA90: @ 0x080ACA90
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	bl sub_08072EE4
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xf2
	cmp r0, #0x1e
	bge _080ACAC0
	movs r1, #0xd8
	b _080ACAC0
_080ACAB0:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xd7
	cmp r0, #0x46
	bge _080ACAC0
	movs r1, #2
_080ACAC0:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACAD0
sub_080ACAD0: @ 0x080ACAD0
	push {lr}
	ldr r2, _080ACAE4 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ACAE8 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte _vt.14DefaultMonster.10UnitObject
_080ACAE8: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ACAEC
sub_080ACAEC: @ 0x080ACAEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, _080ACB54 @ =0x000002BB
	cmp r0, r1
	bgt _080ACB4E
	ldr r1, [r4, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ACB4E
	movs r0, #0xab
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080ACB4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB54: .4byte 0x000002BB

	thumb_func_start sub_080ACB58
sub_080ACB58: @ 0x080ACB58
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080ACB7C
	ldr r0, _080ACB78 @ =0x00000157
	b _080ACBC6
	.align 2, 0
_080ACB78: .4byte 0x00000157
_080ACB7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080ACB9A
	movs r0, #0xad
	lsls r0, r0, #1
	b _080ACBC6
_080ACB9A:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xac
	lsls r1, r1, #1
	cmp r0, #0x10
	blt _080ACBC4
	adds r1, #1
	cmp r0, #0x20
	blt _080ACBC4
	subs r1, #2
	cmp r0, #0x30
	blt _080ACBC4
	adds r1, #3
	cmp r0, #0x40
	blt _080ACBC4
	subs r1, #0x22
	cmp r0, #0x50
	bge _080ACBC4
	subs r1, #1
_080ACBC4:
	adds r0, r1, #0
_080ACBC6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACBD4
sub_080ACBD4: @ 0x080ACBD4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa9
	lsls r1, r1, #1
	cmp r0, #0x19
	blt _080ACBF6
	adds r1, #1
	cmp r0, #0x41
	blt _080ACBF6
	adds r1, #2
	cmp r0, #0x4b
	bge _080ACBF6
	subs r1, #1
_080ACBF6:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACC04
sub_080ACC04: @ 0x080ACC04
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ACC70
	cmp r0, #1
	beq _080ACC86
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACC9C
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ACC9E
_080ACC70:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACC9E
_080ACC86:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ACC9E
_080ACC9C:
	movs r0, #0
_080ACC9E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACCA4
sub_080ACCA4: @ 0x080ACCA4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080ACCBE
	cmp r2, #1
	bne _080ACCDA
_080ACCBE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ACCDC
_080ACCDA:
	movs r0, #0
_080ACCDC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ACCE4
sub_080ACCE4: @ 0x080ACCE4
	push {lr}
	ldr r2, _080ACCF8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ACCFC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACCF8: .4byte _vt.14DefaultMonster.10UnitObject
_080ACCFC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ACD00
sub_080ACD00: @ 0x080ACD00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl unit_a0__4UnitP6Action
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ACD7E
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACD7E
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080ACD7E
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080ACD7E
	movs r0, #0xa7
	adds r1, r5, #0
	bl sub_080741AC
	bl sub_08074234
_080ACD7E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACD84
sub_080ACD84: @ 0x080ACD84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACE1A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE1A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ACE1C
_080ACE1A:
	movs r0, #0
_080ACE1C:
	cmp r0, #0
	bne _080ACE24
	movs r0, #0
	b _080ACE5E
_080ACE24:
	adds r0, r5, #0
	movs r1, #0x85
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE40
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACE40:
	adds r0, r5, #0
	movs r1, #0xa7
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACE5C
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACE5C:
	movs r0, #1
_080ACE5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACE64
sub_080ACE64: @ 0x080ACE64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080ACEDC
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACEC2
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x18
	cmp r0, #0x14
	blt _080ACF12
	movs r1, #0x1f
	cmp r0, #0x3c
	blt _080ACF12
	movs r1, #0xd6
	cmp r0, #0x46
	bge _080ACF12
	movs r1, #0x85
	b _080ACF12
_080ACEC2:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x14
	blt _080ACF14
	movs r0, #0xd6
	cmp r1, #0x3c
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACEDC:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ACF02
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x18
	cmp r1, #0x28
	blt _080ACF14
	movs r0, #0x85
	cmp r1, #0x5a
	bge _080ACF14
	movs r0, #0x1f
	b _080ACF14
_080ACF02:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x1f
	cmp r0, #0x32
	bge _080ACF12
	movs r1, #0x18
_080ACF12:
	adds r0, r1, #0
_080ACF14:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080ACF20
sub_080ACF20: @ 0x080ACF20
	push {lr}
	ldr r2, _080ACF34 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ACF38 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ACF34: .4byte _vt.14DefaultMonster.10UnitObject
_080ACF38: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ACF3C
sub_080ACF3C: @ 0x080ACF3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ACFD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACFD2
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ACFD4
_080ACFD2:
	movs r0, #0
_080ACFD4:
	cmp r0, #0
	bne _080ACFDC
	movs r0, #0
	b _080ACFFA
_080ACFDC:
	ldr r1, _080AD000 @ =0x00000103
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ACFF8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ACFF8:
	movs r0, #1
_080ACFFA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD000: .4byte 0x00000103

	thumb_func_start sub_080AD004
sub_080AD004: @ 0x080AD004
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x1e
	bl _call_via_r2
	cmp r4, r0
	bge _080AD050
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AD04C
	ldr r0, _080AD048 @ =0x00000103
	b _080AD068
	.align 2, 0
_080AD048: .4byte 0x00000103
_080AD04C:
	movs r0, #0xfd
	b _080AD068
_080AD050:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #2
	cmp r1, #0x4b
	blt _080AD068
	movs r0, #0xe6
	cmp r1, #0x5a
	bge _080AD068
	movs r0, #0x3f
_080AD068:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD074
sub_080AD074: @ 0x080AD074
	push {lr}
	ldr r2, _080AD088 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD08C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD088: .4byte _vt.14DefaultMonster.10UnitObject
_080AD08C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD090
sub_080AD090: @ 0x080AD090
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r0, r7, #0
	movs r1, #0x3b
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD0FC
	movs r6, #0
	b _080AD0AC
_080AD0AA:
	adds r6, #1
_080AD0AC:
	bl sub_08072DFC__Fv
	cmp r6, r0
	bge _080AD0DC
	adds r0, r6, #0
	bl sub_08072E18__Fi
	cmp r0, r4
	beq _080AD0AA
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	adds r0, r6, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_080AD0DC:
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #0
	cmp r0, #0
	ble _080AD0F8
	movs r1, #1
_080AD0F8:
	adds r0, r1, #0
	b _080AD104
_080AD0FC:
	adds r0, r4, #0
	adds r1, r7, #0
	bl monster_2c8__7MonsterP6Action
_080AD104:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD10C
sub_080AD10C: @ 0x080AD10C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	mov r8, r0
	b _080AD154
_080AD120:
	adds r0, r5, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	add r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bne _080AD152
	adds r7, #1
_080AD152:
	adds r5, #1
_080AD154:
	bl sub_08072DFC__Fv
	cmp r5, r0
	blt _080AD120
	cmp r7, #1
	ble _080AD170
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x31
	bgt _080AD170
	movs r0, #0x3b
	b _080AD188
_080AD170:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0xa
	cmp r1, #0x28
	blt _080AD188
	movs r0, #0xe6
	cmp r1, #0x5f
	bge _080AD188
	movs r0, #0x1d
_080AD188:
	adds r1, r6, #0
	bl sub_080741AC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD198
sub_080AD198: @ 0x080AD198
	push {lr}
	ldr r2, _080AD1AC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD1B0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD1AC: .4byte _vt.14DefaultMonster.10UnitObject
_080AD1B0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD1B4
sub_080AD1B4: @ 0x080AD1B4
	push {r4, lr}
	adds r4, r0, #0
	bl onRoundEnd__7Monster
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AD1DE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x13
	bgt _080AD1DE
	movs r0, #0x45
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	b _080AD1FE
_080AD1DE:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080AD1FE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #9
	bgt _080AD1FE
	movs r0, #0x45
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
_080AD1FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD204
sub_080AD204: @ 0x080AD204
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD29A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD29A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD29C
_080AD29A:
	movs r0, #0
_080AD29C:
	cmp r0, #0
	bne _080AD2A4
	movs r0, #0
	b _080AD2C2
_080AD2A4:
	adds r0, r5, #0
	movs r1, #0x81
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD2C0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AD2C0:
	movs r0, #1
_080AD2C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD2C8
sub_080AD2C8: @ 0x080AD2C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AD2F4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080AD2F4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x81
	cmp r0, #0x32
	bge _080AD2F0
	movs r1, #0x67
_080AD2F0:
	adds r0, r1, #0
	b _080AD2F6
_080AD2F4:
	movs r0, #0x67
_080AD2F6:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD304
sub_080AD304: @ 0x080AD304
	push {lr}
	ldr r2, _080AD318 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD31C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD318: .4byte _vt.14DefaultMonster.10UnitObject
_080AD31C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD320
sub_080AD320: @ 0x080AD320
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xbe
	bne _080AD354
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xca
	cmp r0, #0x32
	bge _080AD350
	movs r1, #0x44
_080AD350:
	adds r0, r1, #0
	b _080AD356
_080AD354:
	movs r0, #0xbe
_080AD356:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD364
sub_080AD364: @ 0x080AD364
	push {lr}
	ldr r2, _080AD378 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD37C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD378: .4byte _vt.14DefaultMonster.10UnitObject
_080AD37C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD380
sub_080AD380: @ 0x080AD380
	push {lr}
	adds r2, r0, #0
	cmp r1, #3
	bne _080AD398
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #1
	bne _080AD398
	movs r0, #0x64
	b _080AD39E
_080AD398:
	adds r0, r2, #0
	bl getElementWeakness__C4UnitUi
_080AD39E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD3A4
sub_080AD3A4: @ 0x080AD3A4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080AD3BE
	cmp r2, #1
	bne _080AD3DA
_080AD3BE:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AD3DC
_080AD3DA:
	movs r0, #0
_080AD3DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD3E4
sub_080AD3E4: @ 0x080AD3E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD47A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD47A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD47C
_080AD47A:
	movs r0, #0
_080AD47C:
	cmp r0, #0
	bne _080AD484
	movs r0, #0
	b _080AD4E0
_080AD484:
	ldr r1, _080AD4B0 @ =0x00000141
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD4B4
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	b _080AD4DE
	.align 2, 0
_080AD4B0: .4byte 0x00000141
_080AD4B4:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD4DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_080AD4DE:
	movs r0, #1
_080AD4E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD4E8
sub_080AD4E8: @ 0x080AD4E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AD518 @ =0x00000175
	cmp r0, #0x1e
	blt _080AD508
	subs r1, #0x35
	cmp r0, #0x41
	blt _080AD508
	adds r1, #1
	cmp r0, #0x46
	bge _080AD508
	adds r1, #1
_080AD508:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD518: .4byte 0x00000175

	thumb_func_start sub_080AD51C
sub_080AD51C: @ 0x080AD51C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080AD544 @ =0x00000143
	cmp r0, r5
	bne _080AD548
	movs r0, #0xa2
	lsls r0, r0, #1
	b _080AD55C
	.align 2, 0
_080AD544: .4byte 0x00000143
_080AD548:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xa2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AD55A
	adds r1, r5, #0
_080AD55A:
	adds r0, r1, #0
_080AD55C:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD568
sub_080AD568: @ 0x080AD568
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	blt _080AD5BC
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AD5B8 @ =0x00000175
	cmp r1, #0x32
	blt _080AD5BE
	subs r0, #0x33
	cmp r1, #0x55
	bge _080AD5BE
	subs r0, #2
	b _080AD5BE
	.align 2, 0
_080AD5B8: .4byte 0x00000175
_080AD5BC:
	ldr r0, _080AD5CC @ =0x00000141
_080AD5BE:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD5CC: .4byte 0x00000141

	thumb_func_start sub_080AD5D0
sub_080AD5D0: @ 0x080AD5D0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AD606
	cmp r0, #1
	bgt _080AD5EA
	cmp r0, #0
	beq _080AD5F0
	b _080AD632
_080AD5EA:
	cmp r0, #2
	beq _080AD61C
	b _080AD632
_080AD5F0:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD606:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD61C:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD68C
_080AD632:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AD68A
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AD68C
_080AD68A:
	movs r0, #0
_080AD68C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD694
sub_080AD694: @ 0x080AD694
	push {lr}
	ldr r2, _080AD6A8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD6AC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD6A8: .4byte _vt.14DefaultMonster.10UnitObject
_080AD6AC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD6B0
sub_080AD6B0: @ 0x080AD6B0
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	beq _080AD6C8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, r1
	beq _080AD6EA
_080AD6C8:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	ldr r1, [r3, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080AD6EC
_080AD6EA:
	movs r0, #0
_080AD6EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080AD6F0
sub_080AD6F0: @ 0x080AD6F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AD786
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD786
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AD788
_080AD786:
	movs r0, #0
_080AD788:
	cmp r0, #0
	bne _080AD790
	movs r0, #0
	b _080AD7BA
_080AD790:
	ldr r1, _080AD7C0 @ =0x00000147
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AD7B8
	ldr r1, [r4, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #1
	bl _call_via_r3
_080AD7B8:
	movs r0, #1
_080AD7BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AD7C0: .4byte 0x00000147

	thumb_func_start sub_080AD7C4
sub_080AD7C4: @ 0x080AD7C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AD7E8
	ldr r0, _080AD7E4 @ =0x00000149
	b _080AD824
	.align 2, 0
_080AD7E4: .4byte 0x00000149
_080AD7E8:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _080AD806
	movs r0, #0xa5
	lsls r0, r0, #1
	b _080AD824
_080AD806:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AD830 @ =0x00000145
	cmp r0, #0x23
	blt _080AD822
	adds r1, #1
	cmp r0, #0x41
	blt _080AD822
	adds r1, #1
	cmp r0, #0x50
	bge _080AD822
	adds r1, #1
_080AD822:
	adds r0, r1, #0
_080AD824:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD830: .4byte 0x00000145

	thumb_func_start sub_080AD834
sub_080AD834: @ 0x080AD834
	push {lr}
	adds r1, r0, #0
	ldr r0, _080AD844 @ =0x00000147
	bl sub_080741AC
	pop {r1}
	bx r1
	.align 2, 0
_080AD844: .4byte 0x00000147

	thumb_func_start sub_080AD848
sub_080AD848: @ 0x080AD848
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AD870 @ =0x00000145
	cmp r1, #0x2d
	blt _080AD864
	adds r0, #3
	cmp r1, #0x50
	bge _080AD864
	subs r0, #2
_080AD864:
	adds r1, r4, #0
	bl sub_080741AC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AD870: .4byte 0x00000145

	thumb_func_start sub_080AD874
sub_080AD874: @ 0x080AD874
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _080AD8AA
	cmp r0, #1
	bgt _080AD88E
	cmp r0, #0
	beq _080AD894
	b _080AD8D6
_080AD88E:
	cmp r0, #2
	beq _080AD8C0
	b _080AD8D6
_080AD894:
	ldr r1, [r6, #0x1c]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8AA:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8C0:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080AD930
_080AD8D6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080AD92E
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080AD930
_080AD92E:
	movs r0, #0
_080AD930:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AD938
sub_080AD938: @ 0x080AD938
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x28
	bl _call_via_r2
	cmp r4, r0
	bge _080AD990
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080AD990
	ldr r1, [r5, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080AD990:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD998
sub_080AD998: @ 0x080AD998
	push {lr}
	ldr r2, _080AD9AC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AD9B0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AD9AC: .4byte _vt.14DefaultMonster.10UnitObject
_080AD9B0: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AD9B4
sub_080AD9B4: @ 0x080AD9B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADA4A
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA4A
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ADA4C
_080ADA4A:
	movs r0, #0
_080ADA4C:
	cmp r0, #0
	bne _080ADA54
	movs r0, #0
	b _080ADA8E
_080ADA54:
	ldr r1, _080ADA94 @ =0x0000013D
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA70
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADA70:
	ldr r1, _080ADA98 @ =0x0000013F
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADA8C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADA8C:
	movs r0, #1
_080ADA8E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ADA94: .4byte 0x0000013D
_080ADA98: .4byte 0x0000013F

	thumb_func_start sub_080ADA9C
sub_080ADA9C: @ 0x080ADA9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080ADAC6
	movs r0, #0x9d
	lsls r0, r0, #1
	b _080ADB3E
_080ADAC6:
	ldr r1, _080ADB18 @ =gUnknown_080F8E82
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADAE2
	mov r1, sp
	ldr r0, _080ADB1C @ =0x00000139
	strh r0, [r1, #8]
_080ADAE2:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADAF6
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADAF6:
	mov r5, sp
	mov r6, sp
	adds r6, #2
	add r7, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r1, sp, #8
	mov r8, r1
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x19
	bge _080ADB20
	ldrh r0, [r5]
	b _080ADB3E
	.align 2, 0
_080ADB18: .4byte gUnknown_080F8E82
_080ADB1C: .4byte 0x00000139
_080ADB20:
	cmp r0, #0x46
	bge _080ADB28
	ldrh r0, [r6]
	b _080ADB3E
_080ADB28:
	cmp r0, #0x5a
	bge _080ADB30
	ldrh r0, [r7]
	b _080ADB3E
_080ADB30:
	cmp r0, #0x5f
	bge _080ADB3A
	mov r2, sb
	ldrh r0, [r2]
	b _080ADB3E
_080ADB3A:
	mov r1, r8
	ldrh r0, [r1]
_080ADB3E:
	adds r1, r4, #0
	bl sub_080741AC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ADB54
sub_080ADB54: @ 0x080ADB54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r1, _080ADBB4 @ =gUnknown_080F8E78
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #2
	ble _080ADB7E
	mov r1, sp
	movs r0, #0x9e
	lsls r0, r0, #1
	strh r0, [r1, #8]
_080ADB7E:
	movs r0, #0xa6
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	ble _080ADB92
	mov r1, sp
	movs r0, #0x9f
	lsls r0, r0, #1
	strh r0, [r1, #6]
_080ADB92:
	mov r4, sp
	mov r5, sp
	adds r5, #2
	add r6, sp, #4
	movs r0, #6
	add r0, sp
	mov sb, r0
	add r7, sp, #8
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x1e
	bge _080ADBB8
	ldrh r0, [r4]
	b _080ADBD4
	.align 2, 0
_080ADBB4: .4byte gUnknown_080F8E78
_080ADBB8:
	cmp r0, #0x37
	bge _080ADBC0
	ldrh r0, [r5]
	b _080ADBD4
_080ADBC0:
	cmp r0, #0x55
	bge _080ADBC8
	ldrh r0, [r6]
	b _080ADBD4
_080ADBC8:
	cmp r0, #0x5a
	bge _080ADBD2
	mov r1, sb
	ldrh r0, [r1]
	b _080ADBD4
_080ADBD2:
	ldrh r0, [r7]
_080ADBD4:
	mov r1, r8
	bl sub_080741AC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080ADBE8
sub_080ADBE8: @ 0x080ADBE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080ADC54
	cmp r0, #1
	beq _080ADC6A
	ldr r1, [r6, #0x1c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080ADC80
	ldr r0, [r6, #0x1c]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0
	bl randS32
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080741AC
	b _080ADC82
_080ADC54:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ADC82
_080ADC6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080ADC82
_080ADC80:
	movs r0, #0
_080ADC82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080ADC88
sub_080ADC88: @ 0x080ADC88
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _080ADCA2
	cmp r2, #1
	bne _080ADCBE
_080ADCA2:
	str r4, [r1]
	ldr r1, [r3, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r0, #1
	b _080ADCC0
_080ADCBE:
	movs r0, #0
_080ADCC0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080ADCC8
sub_080ADCC8: @ 0x080ADCC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080ADD14
	ldr r1, [r5, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_080ADD14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADD1C
sub_080ADD1C: @ 0x080ADD1C
	push {lr}
	ldr r2, _080ADD30 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080ADD34 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080ADD30: .4byte _vt.14DefaultMonster.10UnitObject
_080ADD34: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080ADD38
sub_080ADD38: @ 0x080ADD38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080ADDCE
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADDCE
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080ADDD0
_080ADDCE:
	movs r0, #0
_080ADDD0:
	cmp r0, #0
	bne _080ADDD8
	movs r0, #0
	b _080ADE2E
_080ADDD8:
	adds r0, r5, #0
	movs r1, #0x8c
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADDF4
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADDF4:
	ldr r1, _080ADE34 @ =0x00000107
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADE10
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADE10:
	adds r0, r5, #0
	movs r1, #0xf0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080ADE2C
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080ADE2C:
	movs r0, #1
_080ADE2E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080ADE34: .4byte 0x00000107

	thumb_func_start sub_080ADE38
sub_080ADE38: @ 0x080ADE38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
	add r1, sp, #0xc
	strh r0, [r1]
	mov r4, sp
	adds r6, r1, #0
	movs r0, #8
	bl __builtin_vec_new
	adds r5, r0, #0
	ldr r3, [sp, #8]
	adds r2, r5, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADE76
	adds r1, r0, #0
_080ADE68:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADE68
_080ADE76:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080ADE80
	bl __builtin_vec_delete
_080ADE80:
	movs r0, #4
	str r0, [r4]
	str r5, [r4, #8]
	ldr r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r5
	ldrh r1, [r6]
	strh r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080ADF04
	movs r0, #0x8c
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADEF2
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADEC0
	adds r0, r1, #0
_080ADEC0:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADEE4
	adds r1, r0, #0
_080ADED6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADED6
_080ADEE4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADEEE
	bl __builtin_vec_delete
_080ADEEE:
	str r4, [r5]
	str r6, [r5, #8]
_080ADEF2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADF04:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ADF74
	ldr r3, _080AE018 @ =0x00000107
	adds r0, r3, #0
	add r1, sp, #0x10
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADF62
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADF30
	adds r0, r1, #0
_080ADF30:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADF54
	adds r1, r0, #0
_080ADF46:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADF46
_080ADF54:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADF5E
	bl __builtin_vec_delete
_080ADF5E:
	str r4, [r5]
	str r6, [r5, #8]
_080ADF62:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADF74:
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080ADFE4
	movs r0, #0xf0
	mov r1, sp
	adds r1, #0x12
	strh r0, [r1]
	mov r5, sp
	mov r8, r1
	ldr r0, [sp, #4]
	adds r4, r0, #1
	ldr r0, [sp]
	cmp r0, r4
	bge _080ADFD2
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _080ADFA0
	adds r0, r1, #0
_080ADFA0:
	adds r4, r0, #0
	lsls r0, r4, #1
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r2, r6, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _080ADFC4
	adds r1, r0, #0
_080ADFB6:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080ADFB6
_080ADFC4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080ADFCE
	bl __builtin_vec_delete
_080ADFCE:
	str r4, [r5]
	str r6, [r5, #8]
_080ADFD2:
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, #1
	str r2, [r5, #4]
_080ADFE4:
	ldr r1, [sp, #4]
	subs r1, #1
	movs r0, #0
	bl randS32
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r7, #0
	bl sub_080741AC
	adds r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080AE008
	bl __builtin_vec_delete
_080AE008:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AE018: .4byte 0x00000107

	thumb_func_start sub_080AE01C
sub_080AE01C: @ 0x080AE01C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2d
	adds r1, r4, #0
	bl sub_080741AC
	bl sub_08074234
	adds r0, r4, #0
	bl sub_08080F54__7Monster
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE038
sub_080AE038: @ 0x080AE038
	push {lr}
	ldr r2, _080AE04C @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AE050 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AE04C: .4byte _vt.14DefaultMonster.10UnitObject
_080AE050: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AE054
sub_080AE054: @ 0x080AE054
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE0EA
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE0EA
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AE0EC
_080AE0EA:
	movs r0, #0
_080AE0EC:
	cmp r0, #0
	bne _080AE0F4
	movs r0, #0
	b _080AE112
_080AE0F4:
	adds r0, r5, #0
	movs r1, #0xe3
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE110
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080AE110:
	movs r0, #1
_080AE112:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE118
sub_080AE118: @ 0x080AE118
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x32
	bl _call_via_r2
	cmp r4, r0
	bge _080AE190
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE176
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #9
	cmp r0, #0x14
	blt _080AE1C6
	movs r1, #0x11
	cmp r0, #0x37
	blt _080AE1C6
	movs r1, #0x99
	cmp r0, #0x3c
	bge _080AE1C6
	movs r1, #0xe3
	b _080AE1C6
_080AE176:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x14
	blt _080AE1C8
	movs r0, #0x99
	cmp r1, #0x37
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE190:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	bgt _080AE1B6
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #9
	cmp r1, #0x23
	blt _080AE1C8
	movs r0, #0xe3
	cmp r1, #0x55
	bge _080AE1C8
	movs r0, #0x11
	b _080AE1C8
_080AE1B6:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x11
	cmp r0, #0x23
	bge _080AE1C6
	movs r1, #9
_080AE1C6:
	adds r0, r1, #0
_080AE1C8:
	adds r1, r5, #0
	bl sub_080741AC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE1D4
sub_080AE1D4: @ 0x080AE1D4
	push {lr}
	ldr r2, _080AE1E8 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AE1EC @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AE1E8: .4byte _vt.14DefaultMonster.10UnitObject
_080AE1EC: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AE1F0
sub_080AE1F0: @ 0x080AE1F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	ldr r1, [r4, #0x1c]
	movs r0, #0x81
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	ldr r1, [r4, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE286
	adds r0, r4, #0
	adds r1, r5, #0
	bl unit_70__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE286
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080AE288
_080AE286:
	movs r0, #0
_080AE288:
	cmp r0, #0
	bne _080AE290
	movs r0, #0
	b _080AE2E0
_080AE290:
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE2B8
	ldr r1, [r4, #0x1c]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080AE2B8:
	ldr r1, _080AE2E8 @ =0x00000207
	adds r0, r5, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE2DE
	ldr r1, [r4, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080AE2DE:
	movs r0, #1
_080AE2E0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AE2E8: .4byte 0x00000207

	thumb_func_start sub_080AE2EC
sub_080AE2EC: @ 0x080AE2EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE30A
	b _080AE424
_080AE30A:
	movs r6, #0
	b _080AE400
_080AE30E:
	adds r0, r6, #0
	bl sub_08072AA4__Fi
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE3EA
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE3FE
_080AE3EA:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	b _080AE41C
_080AE3FE:
	adds r6, #1
_080AE400:
	bl sub_08072A88__Fv
	cmp r6, r0
	blt _080AE30E
	b _080AE47C
_080AE40A:
	ldr r1, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
_080AE41C:
	bl _call_via_r2
	movs r0, #1
	b _080AE484
_080AE424:
	ldr r1, _080AE438 @ =0x00000207
	adds r0, r7, #0
	bl sub_080741E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE47C
	movs r6, #0
	b _080AE474
	.align 2, 0
_080AE438: .4byte 0x00000207
_080AE43C:
	adds r0, r6, #0
	bl sub_08072AA4__Fi
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080AE40A
	adds r6, #1
_080AE474:
	bl sub_08072A88__Fv
	cmp r6, r0
	blt _080AE43C
_080AE47C:
	mov r0, r8
	adds r1, r7, #0
	bl monster_2c8__7MonsterP6Action
_080AE484:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE490
sub_080AE490: @ 0x080AE490
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	b _080AE57C
_080AE498:
	adds r0, r6, #0
	bl sub_08072AA4__Fi
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #2
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #5
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #7
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080AE574
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080AE57A
_080AE574:
	movs r0, #0x82
	lsls r0, r0, #2
	b _080AE606
_080AE57A:
	adds r6, #1
_080AE57C:
	bl sub_08072A88__Fv
	cmp r6, r0
	blt _080AE498
	movs r6, #0
	b _080AE5C2
_080AE588:
	adds r0, r6, #0
	bl sub_08072AA4__Fi
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r5, r0
	blt _080AE5FC
	adds r6, #1
_080AE5C2:
	bl sub_08072A88__Fv
	cmp r6, r0
	blt _080AE588
	ldr r1, [r7, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	ble _080AE5EC
	ldr r0, _080AE5E8 @ =0x00000209
	b _080AE606
	.align 2, 0
_080AE5E8: .4byte 0x00000209
_080AE5EC:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x28
	bge _080AE604
	movs r0, #0x7f
	b _080AE606
_080AE5FC:
	ldr r0, _080AE600 @ =0x00000207
	b _080AE606
	.align 2, 0
_080AE600: .4byte 0x00000207
_080AE604:
	movs r0, #0xe1
_080AE606:
	adds r1, r7, #0
	bl sub_080741AC
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE614
sub_080AE614: @ 0x080AE614
	push {lr}
	ldr r2, _080AE628 @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AE62C @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AE628: .4byte _vt.14DefaultMonster.10UnitObject
_080AE62C: .4byte _vt.14DefaultMonster

	thumb_func_start sub_080AE630
sub_080AE630: @ 0x080AE630
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _080AE686
_080AE638:
	adds r0, r5, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08072EC4
	ldr r2, [r0, #0x1c]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r4, r0
	bge _080AE684
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x1d
	ble _080AE6B4
_080AE684:
	adds r5, #1
_080AE686:
	bl sub_08072EA8
	cmp r5, r0
	blt _080AE638
	bl sub_08072EA8
	cmp r0, #2
	bgt _080AE6A2
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	cmp r0, #0x46
	bge _080AE6A6
_080AE6A2:
	movs r0, #2
	b _080AE6BA
_080AE6A6:
	cmp r0, #0x55
	bge _080AE6B8
	ldr r0, _080AE6B0 @ =0x0000020E
	b _080AE6BA
	.align 2, 0
_080AE6B0: .4byte 0x0000020E
_080AE6B4:
	movs r0, #0x9f
	b _080AE6BA
_080AE6B8:
	movs r0, #0x22
_080AE6BA:
	adds r1, r6, #0
	bl sub_080741AC
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080AE6C8
sub_080AE6C8: @ 0x080AE6C8
	push {lr}
	ldr r2, _080AE6DC @ =_vt.14DefaultMonster.10UnitObject
	str r2, [r0, #0x20]
	ldr r2, _080AE6E0 @ =_vt.14DefaultMonster
	str r2, [r0, #0x1c]
	bl _._7Monster
	pop {r0}
	bx r0
	.align 2, 0
_080AE6DC: .4byte _vt.14DefaultMonster.10UnitObject
_080AE6E0: .4byte _vt.14DefaultMonster
