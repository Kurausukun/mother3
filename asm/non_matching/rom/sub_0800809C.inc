	.syntax unified
sub_0800809C:
	push {lr}
	ldr r0, _080080B4
	movs r1, #0x20
	bl Blob_GetEntry
	ldr r1, _080080B8
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSmartSet
	pop {r0}
	bx r0
	.align 2, 0
_080080B4: .4byte gMiscGfx
_080080B8: .4byte 0x06014000
	.syntax divided
