	.syntax unified
sub_0802B57C:
	push {lr}
	ldr r0, _0802B5B4
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B5AE
	ldr r0, _0802B5B8
	ldr r1, _0802B5BC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0802B5AE
	ldr r0, _0802B5C0
	ldr r2, _0802B5C4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r2, _0802B5C8
	adds r0, r0, r2
	ldr r1, [r1]
	cmp r1, r0
	bhs _0802B5CC
_0802B5AE:
	movs r0, #0
	b _0802B5D2
	.align 2, 0
_0802B5B4: .4byte 0x00000315
_0802B5B8: .4byte gGame
_0802B5BC: .4byte 0x000082B9
_0802B5C0: .4byte gSave
_0802B5C4: .4byte 0x00000744
_0802B5C8: .4byte 0x00069780
_0802B5CC:
	bl sub_08025ED8
	movs r0, #1
_0802B5D2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
