	.syntax unified
sub_0804F294:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	bl sub_08054FE0
	adds r5, r0, #0
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F2D4
	adds r0, r5, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F2D4
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	ldr r6, _0804F2DC
	adds r4, r0, r6
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	bge _0804F2D4
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_08054670
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804F2E0
_0804F2D4:
	movs r0, #0xd6
	bl play_sound
	b _0804F32C
	.align 2, 0
_0804F2DC: .4byte gUnknown_02019DE4
_0804F2E0:
	movs r0, #0xd2
	bl play_sound
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_08054CA4
	adds r0, r5, #0
	bl sub_080531C8
	ldr r1, _0804F320
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804F328
	bl sub_0804C330
	ldr r2, _0804F324
	adds r0, r6, r2
	movs r2, #0x90
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08049DC4
	bl sub_08046D90
	b _0804F32C
	.align 2, 0
_0804F320: .4byte 0x000004C6
_0804F324: .4byte 0xFFFFC294
_0804F328:
	bl sub_08046D90
_0804F32C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
