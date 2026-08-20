	.syntax unified
sub_08057290:
	push {r4, r5, lr}
	ldr r4, _080572E4
	adds r0, r4, #0
	movs r1, #0x34
	bl Blob_GetEntry
	ldr r1, _080572E8
	bl LZ77UnCompVram
	adds r0, r4, #0
	movs r1, #0x35
	bl Blob_GetEntry
	adds r1, r0, #0
	ldr r4, _080572EC
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #0x60
	bl sub_0800160C
	movs r0, #0xa4
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, _080572F0
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x60
	bl CpuSmartSet
	ldr r0, _080572F4
	ldrb r0, [r0]
	cmp r0, #2
	bne _080572DC
	adds r0, r5, #0
	movs r1, #0x60
	bl CpuMemClear
_080572DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080572E4: .4byte gTitleScreenGfx
_080572E8: .4byte 0x06010000
_080572EC: .4byte gSomeBlend+0x50 @ gSomeBlend.gfx
_080572F0: .4byte 0x00002EAC
_080572F4: .4byte gUnknown_020047D0
	.syntax divided
