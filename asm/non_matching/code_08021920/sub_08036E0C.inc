	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r7, _08036E30
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, #1
	beq _08036E42
	cmp r4, #1
	bgt _08036E34
	cmp r4, #0
	beq _08036E3E
	b _08036E64
	.align 2, 0
_08036E30: .4byte gUnknown_09A442A4
_08036E34:
	cmp r6, #2
	beq _08036E4C
	cmp r6, #3
	beq _08036E5C
	b _08036E64
_08036E3E:
	adds r0, r7, #0
	b _08036E4E
_08036E42:
	ldr r0, _08036E48
	b _08036E4E
	.align 2, 0
_08036E48: .4byte gUnknown_09AE0638
_08036E4C:
	ldr r0, _08036E58
_08036E4E:
	adds r1, r5, #0
	bl sub_0800289C
	b _08036E64
	.align 2, 0
_08036E58: .4byte gUnknown_09AEE4C4
_08036E5C:
	ldr r0, _08036E6C
	adds r1, r5, #0
	bl sub_0800289C
_08036E64:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036E6C: .4byte gUnknown_09AF1ED0
	.syntax divided
