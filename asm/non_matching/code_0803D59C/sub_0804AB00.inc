	.syntax unified
sub_0804AB00:
	push {lr}
	ldr r3, _0804AB38
	ldr r1, _0804AB3C
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804AB32
	movs r0, #0x8a
	lsls r0, r0, #7
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0xa
	bhi _0804AB32
	ldr r1, _0804AB40
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0804AB32
	ldr r2, _0804AB44
	adds r0, r3, r2
	bl _call_via_r1
_0804AB32:
	pop {r0}
	bx r0
	.align 2, 0
_0804AB38: .4byte gSomeBlend
_0804AB3C: .4byte 0x00004501
_0804AB40: .4byte gUnknown_09B8FE70
_0804AB44: .4byte 0x000044F8
	.syntax divided
