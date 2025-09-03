    .syntax unified
sub_0807362C:
	push {r4, r5, r6, lr}
	ldr r4, _08073674 @ =0xFFFFEF74
	add sp, r4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	bl sub_0808434C
	mov r0, sp
	adds r1, r5, #0
	bl sub_0808477C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080847E4
	mov r0, sp
	adds r1, r6, #0
	bl sub_08084820
	mov r0, sp
	bl sub_08084D68
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_0808470C
	adds r0, r4, #0
	ldr r3, _08073678 @ =0x0000108C
	add sp, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08073674: .4byte 0xFFFFEF74
_08073678: .4byte 0x0000108C
    .syntax divided
