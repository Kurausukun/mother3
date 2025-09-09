	.syntax unified
sub_08097D70:
	push {r4, lr}
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
	bne _08097D9A
	adds r0, r4, #0
	bl battle_110__6Battle
	b _08097DD6
_08097D9A:
	bl sub_08074614
	cmp r0, #0
	beq _08097DBA
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r2, [r2, #4]
	bl _call_via_r2
_08097DBA:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x96
	lsls r2, r2, #2
	mov r3, sp
	movs r0, #1
	strb r0, [r3]
	add r3, sp, #4
	movs r0, #0
	strb r0, [r3]
	movs r0, #0
	movs r3, #1
	bl sub_08074494
_08097DD6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
