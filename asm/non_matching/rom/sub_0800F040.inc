	.syntax unified
sub_0800F040:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	bl get_obj_direct
	adds r3, r0, #0
	ldr r1, _0800F07C
	ldr r2, _0800F080
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800F05C
	b _0800F30C
_0800F05C:
	ldr r2, _0800F084
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800F09E
	cmp r1, r0
	bgt _0800F088
	cmp r1, #0xe
	beq _0800F09E
	cmp r1, #0x67
	beq _0800F09E
	adds r5, r4, #0
	adds r5, #0xbe
	b _0800F0BA
	.align 2, 0
_0800F07C: .4byte gGame
_0800F080: .4byte 0x00008494
_0800F084: .4byte 0x000067AC
_0800F088:
	ldr r0, _0800F0D4
	adds r5, r4, #0
	adds r5, #0xbe
	cmp r1, r0
	blt _0800F0BA
	adds r0, #1
	cmp r1, r0
	ble _0800F09E
	adds r0, #2
	cmp r1, r0
	bne _0800F0BA
_0800F09E:
	ldr r0, _0800F0D8
	ldr r1, _0800F0DC
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r5, r4, #0
	adds r5, #0xbe
	cmp r0, #0
	beq _0800F0BA
	ldrh r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne _0800F0BA
	b _0800F30C
_0800F0BA:
	ldrh r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800F0C6
	b _0800F220
_0800F0C6:
	cmp r0, #8
	beq _0800F0E0
	cmp r0, #9
	beq _0800F0F8
	ldr r6, _0800F0D8
	b _0800F1A0
	.align 2, 0
_0800F0D4: .4byte 0x00000363
_0800F0D8: .4byte gGame
_0800F0DC: .4byte 0x0000848C
_0800F0E0:
	ldr r0, _0800F0F0
	ldr r2, _0800F0F4
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #3
	beq _0800F1A0
	b _0800F30C
	.align 2, 0
_0800F0F0: .4byte gGame
_0800F0F4: .4byte 0x0000829B
_0800F0F8:
	ldr r1, _0800F160
	ldr r2, _0800F164
	adds r0, r1, r2
	ldrb r2, [r0]
	adds r6, r1, #0
	cmp r2, #6
	bne _0800F112
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0800F168
	cmp r1, r0
	beq _0800F1A0
_0800F112:
	cmp r2, #0
	beq _0800F118
	b _0800F30C
_0800F118:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bne _0800F170
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F13E
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F170
_0800F13E:
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F14E
	movs r3, #1
_0800F14E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl object_interact
	ldr r1, _0800F16C
	adds r0, r6, r1
	b _0800F27E
	.align 2, 0
_0800F160: .4byte gGame
_0800F164: .4byte 0x0000829B
_0800F168: .4byte 0x0000014D
_0800F16C: .4byte 0x00008494
_0800F170:
	ldr r0, _0800F198
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	ldr r2, _0800F19C
	adds r3, r6, r2
	movs r0, #0x1f
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0800F30C
	.align 2, 0
_0800F198: .4byte 0x000082B7
_0800F19C: .4byte 0x000082B8
_0800F1A0:
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F1B8
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F1E0
_0800F1B8:
	ldr r1, _0800F1DC
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800F1CE
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F1CE:
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	b _0800F26E
	.align 2, 0
_0800F1DC: .4byte 0x0000829B
_0800F1E0:
	ldr r2, _0800F21C
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800F1EE
	cmp r0, #6
	bne _0800F1FA
_0800F1EE:
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F1FA:
	ldrh r1, [r5]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	adds r0, r4, #0
	adds r0, #0xc2
	ldrh r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x17
	subs r0, #5
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1f
	adds r0, r4, #0
	bl object_interact
	b _0800F278
	.align 2, 0
_0800F21C: .4byte 0x0000829B
_0800F220:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bne _0800F300
	adds r0, r3, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F246
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800F294
_0800F246:
	ldr r0, _0800F288
	ldr r2, _0800F28C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800F25E
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800F2B0
_0800F25E:
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F26E
	movs r3, #1
_0800F26E:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl object_interact
_0800F278:
	ldr r0, _0800F288
	ldr r1, _0800F290
	adds r0, r0, r1
_0800F27E:
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800F30E
	.align 2, 0
_0800F288: .4byte gGame
_0800F28C: .4byte 0x0000829B
_0800F290: .4byte 0x00008494
_0800F294:
	ldr r0, _0800F2F4
	ldr r2, _0800F2F8
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800F2A4
	cmp r0, #6
	bne _0800F300
_0800F2A4:
	adds r0, r4, #0
	bl sub_080346F8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F300
_0800F2B0:
	ldr r0, _0800F2FC
	bl play_sound
	adds r5, r4, #0
	adds r5, #0xcb
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0803476C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	ldrb r2, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r4, #0
	adds r0, #0xc2
	ldrh r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x17
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl object_interact
	movs r0, #1
	b _0800F30E
	.align 2, 0
_0800F2F4: .4byte gGame
_0800F2F8: .4byte 0x0000829B
_0800F2FC: .4byte 0x00000646
_0800F300:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_0800F30C:
	movs r0, #0
_0800F30E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
