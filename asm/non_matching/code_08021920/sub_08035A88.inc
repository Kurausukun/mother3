	.syntax unified
sub_08035A88:
	push {r4, lr}
	adds r0, #0x88
	ldr r2, _08035AD0
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #4
	bhi _08035ACA
	ldr r0, _08035AD4
	ldr r1, _08035AD8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08035ABE
	ldr r0, _08035ADC
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035ACA
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035AE4
_08035ABE:
	ldr r0, _08035AD4
	ldr r2, _08035AE0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bls _08035AE4
_08035ACA:
	movs r0, #1
	b _08035AE6
	.align 2, 0
_08035AD0: .4byte 0xFFFFFDD9
_08035AD4: .4byte gGame
_08035AD8: .4byte 0x00008494
_08035ADC: .4byte 0x000003E3
_08035AE0: .4byte 0x00008299
_08035AE4:
	movs r0, #0
_08035AE6:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
