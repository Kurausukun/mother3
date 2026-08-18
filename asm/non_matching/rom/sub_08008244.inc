	.syntax unified
sub_08008244:
	push {r4, lr}
	ldr r4, _080082C4
	adds r0, r4, #0
	movs r1, #0x26
	bl Blob_GetEntry
	ldr r1, _080082C8
	movs r2, #0xb0
	lsls r2, r2, #6
	bl Dma3Copy
	adds r0, r4, #0
	movs r1, #0x27
	bl Blob_GetEntry
	movs r1, #0xe
	movs r2, #0x20
	bl sub_08016F4C
	ldr r0, _080082CC
	ldr r1, _080082D0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #7
	bl sub_080082DC
	adds r0, r4, #0
	movs r1, #0x2a
	bl Blob_GetEntry
	ldr r1, _080082D4
	movs r2, #0x80
	lsls r2, r2, #3
	bl Dma3Copy
	adds r0, r4, #0
	movs r1, #0x2b
	bl Blob_GetEntry
	movs r1, #0x1d
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0x1e
	bl Blob_GetEntry
	ldr r1, _080082D8
	movs r2, #0xc0
	lsls r2, r2, #4
	bl Dma3Copy
	adds r0, r4, #0
	movs r1, #0x1f
	bl Blob_GetEntry
	movs r1, #0x1e
	movs r2, #0x20
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080082C4: .4byte gMiscGfx
_080082C8: .4byte 0x0600B000
_080082CC: .4byte gSomeBlend
_080082D0: .4byte 0x000035BA
_080082D4: .4byte 0x06014800
_080082D8: .4byte 0x06014C00
	.syntax divided
