	.syntax unified
sub_0809BC68:
	push {r4, lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809BCB2
	movs r4, #0
	b _0809BCA6
_0809BC8A:
	adds r0, r4, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_0809BCA6:
	bl sub_08072DFC__Fv
	cmp r4, r0
	blt _0809BC8A
	movs r0, #1
	b _0809BCB4
_0809BCB2:
	movs r0, #0
_0809BCB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
