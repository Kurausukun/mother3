	.syntax unified
sub_08099C50:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	b _08099D08
_08099C5C:
	adds r0, r7, #0
	bl GetPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #5
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #6
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #4]
	movs r1, #7
	movs r2, #0
	bl _call_via_r3
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r3, [r1, #4]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl _call_via_r3
	adds r7, #1
_08099D08:
	bl getPartyCount
	cmp r7, r0
	blt _08099C5C
	movs r0, #2
	bl sub_08072A18
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	bne _08099D24
	b _08099E2C
_08099D24:
	movs r0, #0xbd
	bl sub_08072E38
	ldr r2, _08099E34
	adds r1, r6, r2
	str r0, [r1]
	cmp r0, #0
	beq _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099E2C
	ldr r1, [r6, #0x1c]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08099E2C:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099E34: .4byte 0x00000F94
	.syntax divided
