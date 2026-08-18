	.syntax unified
sub_080080DC:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08008108
	movs r1, #0xa
	bl Blob_GetEntry
	lsls r4, r4, #9
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	adds r0, r0, r4
	ldr r1, _0800810C
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSmartSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008108: .4byte gMiscGfx
_0800810C: .4byte 0x06017600
	.syntax divided
