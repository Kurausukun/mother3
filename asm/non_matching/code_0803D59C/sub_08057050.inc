	.syntax unified
sub_08057050:
	push {r4, lr}
	ldr r4, _08057080
	adds r0, r4, #0
	movs r1, #0x37
	bl Blob_GetEntry
	ldr r1, _08057084
	movs r2, #0xa0
	lsls r2, r2, #1
	bl CpuSmartSet
	adds r0, r4, #0
	movs r1, #0x38
	bl Blob_GetEntry
	adds r1, r0, #0
	ldr r0, _08057088
	movs r2, #0x1f
	movs r3, #0x20
	bl CpuCopyPaletteToGfxBuffer
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057080: .4byte gTitleScreenGfx
_08057084: .4byte 0x06017EC0
_08057088: .4byte gSomeBlend+0x50 @ gSomeBlend.gfx
	.syntax divided
