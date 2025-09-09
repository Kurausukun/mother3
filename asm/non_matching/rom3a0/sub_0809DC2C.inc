	.syntax unified
sub_0809DC2C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DC8E
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	beq _0809DC8A
	cmp r0, #0x16
	bgt _0809DC74
	cmp r0, #0xd
	beq _0809DC8A
	cmp r0, #0xd
	bgt _0809DC6E
	cmp r0, #0xb
	beq _0809DC8A
	b _0809DC8E
_0809DC6E:
	cmp r0, #0x11
	beq _0809DC8A
	b _0809DC8E
_0809DC74:
	cmp r0, #0xbd
	beq _0809DC8A
	cmp r0, #0xbd
	bgt _0809DC82
	cmp r0, #0x1c
	beq _0809DC8A
	b _0809DC8E
_0809DC82:
	cmp r0, #0xbe
	beq _0809DC8A
	cmp r0, #0xbf
	bne _0809DC8E
_0809DC8A:
	movs r0, #0
	b _0809DC96
_0809DC8E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl calcDidHit__6ActionP4Unit
_0809DC96:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
