	.syntax unified
sub_08051BDC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08051C18
	movs r2, #0x82
	lsls r2, r2, #4
	bl sub_08001B18
	ldr r0, _08051C1C
	adds r5, r5, r0
	ldr r4, _08051C20
	ldr r2, _08051C24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001B18
	adds r0, r4, #0
	subs r0, #0x6c
	movs r1, #0x6c
	bl memclear
	ldr r0, _08051C24
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0xd8
	bl memclear
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051C18: .4byte gSave
_08051C1C: .4byte 0x00000898
_08051C20: .4byte gUnknown_0200417C
_08051C24: .4byte 0x0000057C
	.syntax divided
