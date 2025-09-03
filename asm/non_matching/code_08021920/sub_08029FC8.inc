	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r0, #0
	beq _08029FE0
	cmp r0, #1
	beq _0802A004
	b _0802A024
_08029FE0:
	ldr r1, _08029FF8
	movs r2, #0xdf
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r4, [r0]
	ldrh r2, [r3]
	ldr r4, _08029FFC
	adds r0, r1, r4
	strh r2, [r0]
	ldrh r2, [r3, #2]
	ldr r3, _0802A000
	b _0802A01A
	.align 2, 0
_08029FF8: .4byte gSave
_08029FFC: .4byte 0x000006FA
_0802A000: .4byte 0x000006FC
_0802A004:
	ldr r1, _0802A02C
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r1, r2
	strh r4, [r0]
	ldrh r2, [r3]
	ldr r4, _0802A030
	adds r0, r1, r4
	strh r2, [r0]
	ldrh r2, [r3, #2]
	ldr r3, _0802A034
_0802A01A:
	adds r0, r1, r3
	strh r2, [r0]
	adds r4, #4
	adds r1, r1, r4
	strh r5, [r1]
_0802A024:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802A02C: .4byte gSave
_0802A030: .4byte 0x00000702
_0802A034: .4byte 0x00000704
	.syntax divided
