	.syntax unified
sub_080361DC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	bne _08036232
	ldr r0, _08036204
	ldr r1, _08036208
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803620C
	cmp r0, #1
	beq _0803621A
	b _0803622C
	.align 2, 0
_08036204: .4byte gGame
_08036208: .4byte 0x000082AF
_0803620C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #5
	bl sub_08033620
	b _0803622C
_0803621A:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x8b
	ldrb r2, [r1]
	movs r1, #0
	bl sub_080332AC
_0803622C:
	adds r0, r4, #0
	bl sub_08035FE4
_08036232:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
