	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08056CD0
	bl sub_08057044
_08056CD0:
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08056CDC
	bl sub_0805708C
_08056CDC:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08056CE8
	bl sub_080570F0
_08056CE8:
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08056CF4
	bl sub_08057110
_08056CF4:
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08056D00
	bl sub_08057130
_08056D00:
	ldrb r0, [r4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08056D0C
	bl sub_08057150
_08056D0C:
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08056D18
	bl sub_08057170
_08056D18:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08056D24
	bl sub_08057250
_08056D24:
	ldrb r0, [r4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08056D32
	ldrh r0, [r4, #4]
	bl sub_08057204
_08056D32:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08056D3E
	bl sub_08057290
_08056D3E:
	ldrb r3, [r4, #1]
	lsls r0, r3, #0x1d
	cmp r0, #0
	bge _08056D50
	ldr r0, _08056D74
	ldrb r1, [r0, #2]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #2]
_08056D50:
	lsls r0, r3, #0x1c
	cmp r0, #0
	bge _08056D68
	ldr r2, _08056D74
	ldrb r1, [r2, #2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	movs r0, #0
	bl sub_080569BC
_08056D68:
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056D74: .4byte gUnknown_02015DA0
	.syntax divided
