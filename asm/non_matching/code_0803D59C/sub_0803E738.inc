	.syntax unified
sub_0803E738:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0803E82A
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E74E
	bl sub_0803FA8C
_0803E74E:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803E75A
	bl sub_0803FC74
_0803E75A:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803E766
	bl sub_08040164
_0803E766:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803E772
	bl sub_0803FC94
_0803E772:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803E77E
	bl sub_0803FCC4
_0803E77E:
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803E78C
	ldrb r0, [r4, #0xc]
	bl sub_0803FD14
_0803E78C:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E798
	bl sub_0803FD48
_0803E798:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803E7A6
	ldrh r0, [r4, #0xa]
	bl sub_0803FE48
_0803E7A6:
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803E7B4
	ldrb r0, [r4, #0xc]
	bl sub_0803FE7C
_0803E7B4:
	ldrb r0, [r4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803E7C0
	bl sub_0803FEB0
_0803E7C0:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E7CE
	ldrh r0, [r4, #8]
	bl sub_0803FEF4
_0803E7CE:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803E7DC
	ldr r0, [r4, #4]
	bl sub_0803FF50
_0803E7DC:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803E7E8
	bl sub_0803FFF4
_0803E7E8:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803E7F4
	bl sub_08040024
_0803E7F4:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E800
	bl sub_08040090
_0803E800:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803E812
	ldr r0, _0803E830
	ldrb r1, [r0, #6]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #6]
_0803E812:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E826
	ldr r2, _0803E830
	ldrb r1, [r2, #6]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #6]
_0803E826:
	movs r0, #0
	str r0, [r4]
_0803E82A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E830: .4byte gUnknown_0200F920
	.syntax divided
