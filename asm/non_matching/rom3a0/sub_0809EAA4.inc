	.syntax unified
sub_0809EAA4:
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r5, #0
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
	bgt _0809EAE8
	ldr r1, [r4, #0x1c]
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EAE8
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _0809EAE8
	movs r5, #1
_0809EAE8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
