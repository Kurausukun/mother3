	.syntax unified
sub_08033CA0:
	push {r4, r5, lr}
	movs r0, #5
	bl musicPlayerStop_sfx
	ldr r0, _08033CF4
	ldr r1, _08033CF8
	adds r0, r0, r1
	movs r1, #0xa
	strh r1, [r0]
	movs r4, #0
	movs r0, #7
	rsbs r0, r0, #0
	adds r5, r0, #0
_08033CBA:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033CD4
	adds r1, #0xc8
	ldrb r0, [r1]
	ands r0, r5
	strb r0, [r1]
_08033CD4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033CBA
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	movs r3, #1
	bl sub_08035384
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033CF4: .4byte gGame
_08033CF8: .4byte 0x000082A4
	.syntax divided
