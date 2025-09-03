	.syntax unified
sub_080487D4:
	push {r4, r5, lr}
	ldr r4, _0804885C
	adds r0, r4, #0
	bl sub_080492D0
	ldr r0, _08048860
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080487FE
	adds r0, r4, #0
	bl sub_08048878
	adds r0, r4, #0
	bl sub_080489F8
	adds r0, r4, #0
	bl sub_08048C5C
_080487FE:
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	ldr r2, _08048864
	adds r1, r4, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, _08048868
	adds r0, r4, r3
	movs r2, #0
	strb r1, [r0]
	adds r3, #1
	adds r0, r4, r3
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	beq _0804882C
	adds r0, r4, #0
	bl sub_08048CE4
	adds r0, r4, #0
	bl sub_08048EF8
_0804882C:
	ldr r1, _0804886C
	adds r0, r4, r1
	ldr r0, [r0]
	ldrb r1, [r0, #0x11]
	cmp r1, #0
	bne _08048854
	ldr r2, _08048870
	ldrh r0, [r2]
	cmp r0, #0
	beq _08048854
	ldr r3, _08048874
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	blt _08048854
	cmp r0, #2
	ble _08048852
	cmp r0, #4
	bne _08048854
_08048852:
	strh r1, [r2]
_08048854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804885C: .4byte gUnknown_0201AEF8
_08048860: .4byte 0x000076DC
_08048864: .4byte 0x000076D2
_08048868: .4byte 0x000076D6
_0804886C: .4byte 0x00006C28
_08048870: .4byte gUnknown_03004B00
_08048874: .4byte 0xFFFFF390
	.syntax divided
