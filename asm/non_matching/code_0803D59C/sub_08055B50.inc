	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xa
	cmp r0, #4
	bhi _08055BD2
	lsls r0, r0, #2
	ldr r1, _08055B68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055B68: .4byte _08055B6C
_08055B6C:
	.4byte _08055B80
	.4byte _08055B90
	.4byte _08055BA0
	.4byte _08055BB4
	.4byte _08055BC8
_08055B80:
	ldr r0, _08055B88
	ldr r1, _08055B8C
	b _08055BA4
	.align 2, 0
_08055B88: .4byte gUnknown_02004256
_08055B8C: .4byte gUnknown_0201AB9A
_08055B90:
	ldr r0, _08055B98
	ldr r1, _08055B9C
	b _08055BA4
	.align 2, 0
_08055B98: .4byte gUnknown_0200439A
_08055B9C: .4byte gUnknown_0201ABBA
_08055BA0:
	ldr r0, _08055BAC
	ldr r1, _08055BB0
_08055BA4:
	movs r2, #8
	bl sub_08002420
	b _08055BD2
	.align 2, 0
_08055BAC: .4byte gUnknown_020042C2
_08055BB0: .4byte gUnknown_0201ABDA
_08055BB4:
	ldr r0, _08055BC0
	ldr r1, _08055BC4
	movs r2, #9
	bl sub_08002420
	b _08055BD2
	.align 2, 0
_08055BC0: .4byte gUnknown_02004F26
_08055BC4: .4byte gUnknown_0201ABFA
_08055BC8:
	ldr r0, _08055BD8
	ldr r1, _08055BDC
	movs r2, #0x10
	bl sub_08002420
_08055BD2:
	pop {r0}
	bx r0
	.align 2, 0
_08055BD8: .4byte gUnknown_02004F38
_08055BDC: .4byte gUnknown_0201AC1A
	.syntax divided
