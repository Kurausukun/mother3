	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _08005940
	ldr r0, _08005944
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, _08005948
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800594C
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08005950
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	cmp r3, #6
	bls _08005936
	b _08005A24
_08005936:
	lsls r0, r3, #2
	ldr r1, _08005954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005940: .4byte gSomeBlend
_08005944: .4byte 0x000121BB
_08005948: .4byte 0x04000208
_0800594C: .4byte 0x04000200
_08005950: .4byte 0x04000004
_08005954: .4byte _08005958
_08005958:
	.4byte _08005974
	.4byte _0800597C
	.4byte _08005984
	.4byte _0800598C
	.4byte _080059F8
	.4byte _08005A00
	.4byte _08005A18
_08005974:
	ldr r0, _08005978
	b _08005A02
	.align 2, 0
_08005978: .4byte sub_0803D0E4
_0800597C:
	ldr r0, _08005980
	b _08005A02
	.align 2, 0
_08005980: .4byte sub_0803D13C
_08005984:
	ldr r0, _08005988
	b _08005A02
	.align 2, 0
_08005988: .4byte sub_0803D1B4
_0800598C:
	ldr r2, _080059C4
	ldr r1, _080059C8
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #0x45
	bgt _080059F0
	cmp r0, #0x44
	blt _080059F0
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080059DC
	ldrb r0, [r2, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r2, _080059CC
	ldrh r1, [r2]
	ldr r0, _080059D0
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080059D4
	ldrh r1, [r2]
	ldr r0, _080059D8
	ands r0, r1
	strh r0, [r2]
	b _08005A24
	.align 2, 0
_080059C4: .4byte gGame
_080059C8: .4byte 0x000067AC
_080059CC: .4byte 0x04000200
_080059D0: .4byte 0x0000FFFD
_080059D4: .4byte 0x04000004
_080059D8: .4byte 0x0000FFEF
_080059DC:
	ldrb r1, [r2, #3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	ldr r0, _080059EC
	b _08005A02
	.align 2, 0
_080059EC: .4byte sub_0803D32C
_080059F0:
	ldr r0, _080059F4
	b _08005A02
	.align 2, 0
_080059F4: .4byte sub_0803D2A4
_080059F8:
	ldr r0, _080059FC
	b _08005A02
	.align 2, 0
_080059FC: .4byte sub_0803D374
_08005A00:
	ldr r0, _08005A10
_08005A02:
	ldr r1, _08005A14
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	b _08005A24
	.align 2, 0
_08005A10: .4byte sub_0803D3FC
_08005A14: .4byte gUnknown_03004B14
_08005A18:
	ldr r0, _08005A30
	ldr r1, _08005A34
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
_08005A24:
	ldr r1, _08005A38
	movs r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08005A30: .4byte sub_0803D474
_08005A34: .4byte gUnknown_03004B14
_08005A38: .4byte 0x04000208
	.syntax divided
