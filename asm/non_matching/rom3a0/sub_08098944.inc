	.syntax unified
sub_08098944:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08098974
	adds r0, r4, #0
	bl battle_110__6Battle
	b _080989C4
_08098974:
	ldr r3, _080989D4
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r1, #0x96
	lsls r1, r1, #1
	mov sb, r1
	mov r0, sp
	movs r6, #1
	strb r6, [r0]
	add r5, sp, #4
	movs r4, #0
	strb r4, [r5]
	movs r0, #0x80
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074394
	mov r0, sp
	strb r6, [r0]
	strb r4, [r5]
	movs r0, #0
	mov r1, r8
	mov r2, sb
	movs r3, #1
	bl sub_08074518
_080989C4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080989D4: .4byte 0x00000F98
	.syntax divided
