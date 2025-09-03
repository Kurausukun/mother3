	.syntax unified
sub_0805A1A0:
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0x4d
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0805A1F0
	mov r0, ip
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #3
	beq _0805A1F0
	cmp r0, #1
	bne _0805A1D4
	ldr r0, _0805A1CC
	ldr r1, _0805A1D0
	b _0805A1D8
	.align 2, 0
_0805A1CC: .4byte gSomeBlend
_0805A1D0: .4byte 0x00002D24
_0805A1D4:
	ldr r0, _0805A1F8
	ldr r1, _0805A1FC
_0805A1D8:
	adds r0, r0, r1
	ldr r4, [r0]
	mov r0, ip
	adds r0, #0x4c
	ldrb r1, [r0]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	bl sub_0805A200
_0805A1F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1F8: .4byte gSomeBlend
_0805A1FC: .4byte 0x00002D28
	.syntax divided
