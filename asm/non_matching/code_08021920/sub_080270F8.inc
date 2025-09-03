	.syntax unified
sub_080270F8:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _08027110
	bl sub_08002FE8
	movs r2, #1
	ands r2, r0
_08027110:
	cmp r2, #0
	beq _08027124
	ldr r0, _08027120
	lsls r1, r4, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	b _0802712C
	.align 2, 0
_08027120: .4byte gDirectionTable
_08027124:
	ldr r0, _08027134
	lsls r1, r5, #4
	adds r1, r1, r0
	ldrh r0, [r1, #0xa]
_0802712C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08027134: .4byte gDirectionTable
	.syntax divided
