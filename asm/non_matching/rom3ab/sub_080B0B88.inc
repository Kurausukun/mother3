	.syntax unified
sub_080B0B88:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	bl onSuccess__6ActionP4Unit
	bl sub_08072DFC__Fv
	adds r4, r0, #0
	adds r4, #1
	bl sub_08072DFC__Fv
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_08063960
	add r4, sp, #0x20
	adds r0, r4, #0
	mov r1, sp
	bl sub_080639FC
	mov r0, sp
	movs r1, #2
	bl _._15struct_08063998
	ldr r0, _080B0C74
	bl playSound
	ldr r1, [r6, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	.syntax divided
