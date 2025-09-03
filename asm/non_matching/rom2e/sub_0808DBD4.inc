	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x20]
	adds r2, r7, #0
	adds r2, #0x29
	str r2, [sp, #0x2c]
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [sp, #0x28]
_0808DBF8:
	movs r6, #0
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x24]
	movs r0, #0xb8
	mov r2, sl
	muls r2, r0, r2
	mov r8, r2
	mov r0, r8
	adds r0, #0xa8
	adds r0, r0, r7
	mov sb, r0
_0808DC10:
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0808DC56
	movs r0, #0x5c
	adds r4, r6, #0
	muls r4, r0, r4
	mov r2, r8
	adds r0, r2, r7
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	add r4, sb
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r4, r4, r0
	mov r0, sp
	bl sub_080803C8
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	b _0808DC88
_0808DC56:
	movs r0, #0x5c
	adds r4, r6, #0
	muls r4, r0, r4
	mov r1, r8
	adds r0, r1, r7
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r5, [r0, #0x1c]
	adds r5, #0x80
	add r4, sb
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r4, r4, r0
	mov r0, sp
	bl __3Msg
	ldr r2, [r5, #4]
	adds r0, r4, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0808DC88:
	adds r6, #1
	cmp r6, #1
	ble _0808DC10
	ldr r0, [sp, #0x24]
	mov sl, r0
	cmp r0, #2
	ble _0808DBF8
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [sp, #0x2c]
	ldrb r2, [r1]
	ldr r1, [sp, #0x28]
	ldrb r4, [r1]
	movs r1, #0x6c
	adds r3, r2, #0
	muls r3, r1, r3
	adds r3, #3
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	subs r1, #3
	add r2, sp, #0xc
	strh r3, [r2]
	ldr r2, [sp, #0x20]
	strh r1, [r2, #2]
	ldr r1, [sp, #0x20]
	bl sub_0808B1A8
	movs r0, #0xdb
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	ldr r0, [sp, #0x2c]
	ldrb r2, [r0]
	adds r0, r7, #0
	bl sub_0808DF14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08073F88
	mov r8, r0
	ldr r1, [r0, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808DE18
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080867D4
	mov r0, r8
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080867F8
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #0
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x10
	movs r6, #0x24
	movs r0, #0x86
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	ldr r1, _0808DE14
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #1
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x14
	movs r0, #0x92
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	b _0808DECC
	.align 2, 0
_0808DE14: .4byte 0x00000464
_0808DE18:
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	bl sub_080867D4
	movs r2, #0x81
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	movs r5, #0xec
	lsls r5, r5, #1
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #0
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x18
	movs r6, #0xc
	movs r0, #0x86
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
	ldr r1, _0808DF10
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806E948
	mov r0, r8
	ldr r2, [r0, #0x1c]
	adds r2, r2, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r3, [r2, #4]
	add r1, r8
	movs r2, #1
	bl _call_via_r3
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x1c
	movs r0, #0x92
	strh r6, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	bl sub_08071194
_0808DECC:
	movs r1, #0x98
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	mov r0, r8
	cmp r0, #0
	beq _0808DF00
	ldr r1, [r0, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808DF00:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DF10: .4byte 0x00000464
	.syntax divided
