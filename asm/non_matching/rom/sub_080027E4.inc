	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #1
	beq _0800280C
	cmp r0, #1
	bgt _080027FE
	cmp r0, #0
	beq _08002804
	b _08002824
_080027FE:
	cmp r2, #2
	beq _08002814
	b _08002824
_08002804:
	ldr r0, _08002808
	b _08002816
	.align 2, 0
_08002808: .4byte gUnknown_08CDB9B0
_0800280C:
	ldr r0, _08002810
	b _08002816
	.align 2, 0
_08002810: .4byte gUnknown_08CDB9B8
_08002814:
	ldr r0, _08002820
_08002816:
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002826
	.align 2, 0
_08002820: .4byte gUnknown_08CDB9C0
_08002824:
	movs r0, #0
_08002826:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
