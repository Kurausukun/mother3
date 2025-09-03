	.syntax unified
sub_0803C4DC:
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0803C4F8
	ldr r0, _0803C534
	ldr r1, _0803C538
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
_0803C4F8:
	ldr r0, _0803C53C
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r0, _0803C534
	ldr r4, _0803C540
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r6, r6, r5
	ldr r0, _0803C544
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08001B18
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C534: .4byte gUnknown_03005314
_0803C538: .4byte gUnknown_0200F088
_0803C53C: .4byte gUnknown_020050C0
_0803C540: .4byte gUnknown_0200F488
_0803C544: .4byte 0xFFFFFC00
	.syntax divided
