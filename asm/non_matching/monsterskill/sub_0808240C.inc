	.syntax unified
sub_0808240C:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldrh r1, [r0, #6]
	movs r3, #6
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08082446
	ldr r1, [r2, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08082450
_08082446:
	cmp r0, #0
	bgt _0808244E
	movs r0, #0
	b _08082454
_0808244E:
	adds r0, r1, #2
_08082450:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08082454:
	pop {r1}
	bx r1
	.syntax divided
