	.syntax unified
sub_08048308:
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08048324
	adds r0, r0, r1
	cmp r0, #8
	bhi _080483D8
	lsls r0, r0, #2
	ldr r1, _08048328
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048324: .4byte 0xFFFF00C0
_08048328: .4byte _0804832C
_0804832C:
	.4byte _08048350
	.4byte _080483D8
	.4byte _08048374
	.4byte _080483D8
	.4byte _0804839E
	.4byte _080483A8
	.4byte _080483B0
	.4byte _080483B8
	.4byte _080483C8
_08048350:
	ldr r0, _08048368
	ldr r1, [r0, #8]
	ldr r0, _0804836C
	ldr r2, _08048370
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08048550
	b _080483DA
	.align 2, 0
_08048368: .4byte gSave
_0804836C: .4byte gSomeBlend
_08048370: .4byte 0x0000C59A
_08048374:
	adds r0, r3, #0
	movs r1, #0
	bl sub_0804863C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08054FE0
	adds r4, r0, #0
	adds r4, #2
	movs r0, #6
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080484FC
	b _080483DA
_0804839E:
	ldr r1, _080483A4
	b _080483BA
	.align 2, 0
_080483A4: .4byte gUnknown_02004EE2
_080483A8:
	ldr r1, _080483AC
	b _080483BA
	.align 2, 0
_080483AC: .4byte gUnknown_02004F02
_080483B0:
	ldr r1, _080483B4
	b _080483BA
	.align 2, 0
_080483B4: .4byte gUnknown_02004F14
_080483B8:
	ldr r1, _080483C4
_080483BA:
	adds r0, r5, #0
	movs r2, #9
	bl sub_080484FC
	b _080483DA
	.align 2, 0
_080483C4: .4byte gUnknown_02004F26
_080483C8:
	ldr r1, _080483D4
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080484FC
	b _080483DA
	.align 2, 0
_080483D4: .4byte gUnknown_02004F38
_080483D8:
	adds r0, r5, #0
_080483DA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
