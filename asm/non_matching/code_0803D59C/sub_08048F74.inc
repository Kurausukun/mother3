	.syntax unified
sub_08048F74:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r5, #0
	ldr r4, _08048FA8
	ldr r2, _08048FAC
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #7
	bne _08048FB4
	ldr r0, _08048FB0
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049C70
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080490D0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049C70
	b _08048FE6
	.align 2, 0
_08048FA8: .4byte gSomeBlend
_08048FAC: .4byte 0x00004260
_08048FB0: .4byte 0x00004ED0
_08048FB4:
	ldr r2, _08048FCC
	adds r0, r4, r2
	ldrb r0, [r0]
	lsrs r0, r0, #5
	cmp r0, #1
	beq _08048FE6
	cmp r0, #1
	bgt _08048FD0
	cmp r0, #0
	beq _08048FD6
	b _08048FE6
	.align 2, 0
_08048FCC: .4byte 0x0000C5AC
_08048FD0:
	cmp r0, #2
	beq _08048FE0
	b _08048FE6
_08048FD6:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08048FEC
	b _08048FE6
_08048FE0:
	adds r0, r6, #0
	bl sub_08049160
_08048FE6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
