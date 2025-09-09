	.syntax unified
sub_08099F18:
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
	bne _08099F42
	adds r0, r4, #0
	bl battle_110__6Battle
	b _08099F6C
_08099F42:
	movs r4, #0xc8
	lsls r4, r4, #1
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0807459C__FUsiii
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sp
	movs r0, #1
	strb r0, [r2]
	add r2, sp, #4
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08074518
_08099F6C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
