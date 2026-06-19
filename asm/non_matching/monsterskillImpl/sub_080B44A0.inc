	.syntax unified
sub_080B44A0:
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	bl sub_08072E18__Fi
	str r0, [sp]
	movs r0, #1
	bl sub_08072E18__Fi
	str r0, [sp, #4]
	movs r0, #0
	bl sub_08072E18__Fi
	str r0, [sp, #8]
	movs r0, #2
	bl sub_08072E18__Fi
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x4c]
	lsls r1, r1, #2
	add r1, sp
	ldr r2, [r1]
	adds r1, r2, #0
	bl sub_08073198
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySoundBlocking
	bl sub_08073270
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAttack__6ActionP4Unit
	ldr r0, [r4, #0x4c]
	adds r0, #1
	str r0, [r4, #0x4c]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
