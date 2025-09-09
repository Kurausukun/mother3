	.syntax unified
sub_0809DCE8:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD64
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0xb
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809DD1E
_0809DD1A:
	movs r0, #1
	b _0809DD6C
_0809DD1E:
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
	cmp r0, #0x6b
	beq _0809DD1A
	cmp r0, #0x6b
	bgt _0809DD52
	cmp r0, #0x48
	beq _0809DD1A
	cmp r0, #0x48
	bgt _0809DD4C
	cmp r0, #0x47
	beq _0809DD1A
	b _0809DD64
_0809DD4C:
	cmp r0, #0x63
	beq _0809DD1A
	b _0809DD64
_0809DD52:
	cmp r0, #0x96
	beq _0809DD1A
	cmp r0, #0x96
	bgt _0809DD60
	cmp r0, #0x8f
	beq _0809DD1A
	b _0809DD64
_0809DD60:
	cmp r0, #0xa2
	beq _0809DD1A
_0809DD64:
	adds r0, r5, #0
	adds r1, r4, #0
	bl isResisted__6ActionP4Unit
_0809DD6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
