	.syntax unified
sub_0809ED04:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r2, [r6, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	bge _0809ED2E
	b _0809F08A
_0809ED2E:
	ldr r2, [r6, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r6, #0x50]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r6, #0x4c]
	subs r1, r1, r0
	str r1, [r6, #0x4c]
	ldr r2, [r6, #0x50]
	adds r2, #1
	str r2, [r6, #0x50]
	ldr r1, [r6, #0x1c]
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r3
	mov r8, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _0809ED94
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r0, r0, #1
	movs r1, #1
	cmp r4, r0
	bge _0809ED92
	adds r1, r0, #0
_0809ED92:
	add r8, r1
_0809ED94:
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x16
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809EDD0
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x17
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EDE2
_0809EDD0:
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r1, r0, #1
	movs r0, #1
	cmp r0, r1
	bge _0809EDE0
	adds r0, r1, #0
_0809EDE0:
	mov r8, r0
_0809EDE2:
	cmp r4, #1
	bne _0809EE30
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_08073ABC
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
	movs r4, #1
	cmp r0, #1
	beq _0809EE10
	movs r4, #2
_0809EE10:
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r7, #0
	bl sub_08073198
	b _0809EE58
_0809EE30:
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	bl sub_0807392C
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #1
	adds r2, r7, #0
	bl sub_08073198
_0809EE58:
	ldr r0, [r6, #0x54]
	add r0, r8
	str r0, [r6, #0x54]
	ldr r1, [r6, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809EEAA
	ldr r0, [r6, #0x5c]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	b _0809EEA4
_0809EE90:
	ldr r0, [r6, #0x5c]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, #1
_0809EEA4:
	ldr r0, [r6, #0x50]
	cmp r4, r0
	blt _0809EE90
_0809EEAA:
	ldr r1, [r6, #0x1c]
	.syntax divided
