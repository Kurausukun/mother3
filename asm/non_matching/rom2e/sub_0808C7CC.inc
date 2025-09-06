	.syntax unified
sub_0808C7CC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r5, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r1, #0
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _0808C7EA
	movs r1, #1
_0808C7EA:
	adds r0, r6, #0
	bl sub_0806DB38
	adds r4, r5, #0
	adds r4, #0x4c
	movs r2, #0
	ldrsb r2, [r4, r2]
	add r1, sp, #0x58
	movs r3, #3
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	subs r0, #3
	strh r3, [r1]
	strh r0, [r1, #2]
	adds r0, r6, #0
	bl sub_0808B1A8
	movs r1, #0
	mov sl, r1
	str r4, [sp, #0x68]
	adds r2, r5, #0
	adds r2, #0x4d
	str r2, [sp, #0x6c]
	adds r3, r5, #0
	adds r3, #0x4e
	str r3, [sp, #0x70]
	mov r0, sp
	adds r0, #0x64
	str r0, [sp, #0x74]
	add r1, sp, #0x5c
	mov sb, r1
	add r2, sp, #0x60
	mov r8, r2
_0808C82E:
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0808C916
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	movs r0, #0xc4
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r5, r0
	add r4, sp, #0x4c
	adds r0, r4, #0
	mov r1, sp
	bl sub_08082DEC
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r6, r7, #0
	adds r6, #0x5c
	adds r0, r6, #0
	movs r1, #1
	bl sub_0808E930
	mov r0, sp
	bl sub_08083074
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0808E958
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	mov r0, sp
	bl sub_08083074
	cmp r4, r0
	blt _0808C8F2
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r7, #0
	bl sub_0806E9C4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0808EA7C
	b _0808C90C
_0808C8F2:
	movs r0, #0xa0
	mov r2, r8
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	adds r0, r7, #0
	mov r1, r8
	bl sub_0806E9C4
	adds r0, r6, #0
	movs r1, #1
	bl sub_0808EA7C
_0808C90C:
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	b _0808C944
_0808C916:
	movs r0, #0xc4
	mov r4, sl
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r5, r4
	mov r0, sp
	bl __3Msg
	adds r0, r4, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808E930
_0808C944:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #2
	bgt _0808C950
	b _0808C82E
_0808C950:
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r5, r2
	movs r1, #0
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _0808C960
	movs r1, #1
_0808C960:
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r3, [sp, #0x70]
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r2, #0x49
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #3
	add r1, sp, #0x64
	strh r2, [r1]
	ldr r1, [sp, #0x74]
	strh r0, [r1, #2]
	adds r0, r4, #0
	ldr r1, [sp, #0x74]
	bl sub_0808B1A8
	ldr r2, _0808CAB0
	adds r4, r5, r2
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	subs r2, #1
	adds r0, r5, #0
	movs r3, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r4, r5, r1
	ldr r2, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldr r3, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r2, #3
	adds r0, r5, #0
	movs r3, #0
	bl sub_0808CB18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_0806DB38
	ldr r0, _0808CAB4
	adds r4, r5, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806D7DC__11Unk0806D64C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r6, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_0806E948
	ldr r3, _0808CAB8
	adds r7, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_0806E948
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _0808CABC
	ldr r3, [sp, #0x68]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [sp, #0x6c]
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [sp, #0x70]
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08082B78
	add r4, sp, #0x4c
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl action_fixme__6Actioni
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl action_fixme__6Actioni
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071150
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	movs r1, #2
	bl  sub_08082BA8
	b _0808CAE8
	.align 2, 0
_0808CAB0: .4byte 0x00000564
_0808CAB4: .4byte 0x0000069C
_0808CAB8: .4byte 0x00000764
_0808CABC:
	mov r0, sp
	bl __3Msg
	adds r0, r6, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	mov r0, sp
	bl __3Msg
	adds r0, r7, #0
	mov r1, sp
	bl sub_08071150
	mov r0, sp
	movs r1, #2
	bl _._3Msg
_0808CAE8:
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r4, r5, r3
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0806DB38
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
