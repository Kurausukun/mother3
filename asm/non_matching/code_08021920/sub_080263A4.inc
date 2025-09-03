	.syntax unified
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r2, [r4]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1e
	cmp r0, #4
	bne _080263BC
	movs r0, #1
	b _08026468
_080263BC:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080263CE
	ldrb r1, [r4]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #8
	orrs r1, r0
	b _080263D0
_080263CE:
	ldrb r1, [r4]
_080263D0:
	movs r2, #0
	ldr r0, [r4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08026400
	cmp r0, #1
	bgt _080263E6
	cmp r0, #0
	beq _080263F0
	b _08026412
_080263E6:
	cmp r0, #2
	beq _08026408
	cmp r0, #3
	beq _080263F8
	b _08026412
_080263F0:
	adds r0, r1, #0
	bl get_flag
	b _0802640E
_080263F8:
	adds r0, r1, #0
	bl sub_08002998
	b _0802640E
_08026400:
	adds r0, r1, #0
	bl get_progression_flag
	b _0802640E
_08026408:
	adds r0, r1, #0
	bl sub_080029D4
_0802640E:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08026412:
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0802643C
	cmp r0, #1
	bgt _08026426
	cmp r0, #0
	beq _08026430
	b _08026466
_08026426:
	cmp r0, #2
	beq _0802644A
	cmp r0, #3
	beq _08026456
	b _08026466
_08026430:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bne _08026462
	b _08026460
_0802643C:
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _08026468
_0802644A:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	ble _08026462
	b _08026460
_08026456:
	movs r3, #0
	lsls r0, r1, #4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bge _08026462
_08026460:
	movs r3, #1
_08026462:
	adds r0, r3, #0
	b _08026468
_08026466:
	movs r0, #0
_08026468:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
