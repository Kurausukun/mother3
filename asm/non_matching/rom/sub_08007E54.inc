	.syntax unified
sub_08007E54:
	push {r4, lr}
	ldr r4, _08007EE8
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800289C
	ldr r1, _08007EEC
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x23
	bl sub_0800289C
	ldr r1, _08007EF0
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08001B18
	ldr r0, _08007EF4
	ldr r1, _08007EF8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r4, #0
	bl sub_0800289C
	movs r1, #0xc
	movs r2, #0x20
	bl sub_08016F4C
	movs r0, #0xc
	movs r1, #1
	bl sub_0803B688
	ldr r0, _08007EFC
	ldr r2, _08007F00
	adds r1, r2, #0
	strh r1, [r0, #2]
	ldr r2, _08007F04
	adds r1, r2, #0
	strh r1, [r0, #6]
	movs r1, #0
	strh r1, [r0, #0xe]
	ldr r2, _08007F08
	adds r1, r2, #0
	strh r1, [r0, #0x10]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0, #0x16]
	ldr r2, _08007F0C
	adds r1, r2, #0
	strh r1, [r0, #0x1e]
	ldr r1, _08007F10
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1]
	adds r2, #0x6c
	adds r1, r1, r2
	movs r2, #0x20
	bl sub_08001B18
	ldr r0, _08007F14
	movs r1, #0x1f
	movs r2, #0x20
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007EE8: .4byte gUnknown_09AF3790
_08007EEC: .4byte 0x0600A000
_08007EF0: .4byte 0x06017E00
_08007EF4: .4byte gSave
_08007EF8: .4byte 0x0000081E
_08007EFC: .4byte gUnknown_03005494
_08007F00: .4byte 0x00007E9C
_08007F04: .4byte 0x0000319F
_08007F08: .4byte 0x00007FEC
_08007F0C: .4byte 0x00007FFF
_08007F10: .4byte gUnknown_020050C0
_08007F14: .4byte gUnknown_080C1B40
	.syntax divided
