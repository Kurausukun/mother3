	.syntax unified
sub_08007F18:
	push {r4, lr}
	ldr r4, _08007F58
	adds r0, r4, #0
	movs r1, #0xa
	bl Blob_GetEntry
	ldr r1, _08007F5C
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuSmartSet
	adds r0, r4, #0
	movs r1, #0xb
	bl Blob_GetEntry
	movs r1, #0x1c
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0xd
	bl Blob_GetEntry
	ldr r1, _08007F60
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSmartSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F58: .4byte gMiscGfx
_08007F5C: .4byte 0x06017000
_08007F60: .4byte 0x06014400
	.syntax divided
