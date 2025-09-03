	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	beq _0800ED34
	ldr r0, _0800ED58
	mov sb, r0
	ldr r1, _0800ED5C
	mov r8, r1
_0800ECE4:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ED24
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800ED24
	ldrb r0, [r4, #2]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800ED0C
	adds r0, r4, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800ED24
_0800ED0C:
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl sub_080251F4
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDB8
_0800ED24:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0800EBD8
	adds r4, r0, #0
	cmp r4, #0
	bne _0800ECE4
_0800ED34:
	cmp r7, #0
	beq _0800ED70
	ldr r0, _0800ED60
	ldr r1, _0800ED64
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800ED4E
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08025718
_0800ED4E:
	ldr r0, _0800ED68
	ldr r1, _0800ED6C
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0800EDA0
	.align 2, 0
_0800ED58: .4byte gUnknown_02034D38
_0800ED5C: .4byte gUnknown_0200E094
_0800ED60: .4byte gSomeBlend
_0800ED64: .4byte 0x0001ED10
_0800ED68: .4byte gGame
_0800ED6C: .4byte 0x00008494
_0800ED70:
	ldr r0, _0800EDA8
	ldr r1, _0800EDAC
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800EDBC
	ldr r0, _0800EDB0
	ldr r1, _0800EDB4
	adds r6, r0, r1
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800EDBC
	cmp r4, #0
	bne _0800EDBC
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0800EDBC
	bl sub_08025918
	ldrb r0, [r6]
_0800EDA0:
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _0800EDBE
	.align 2, 0
_0800EDA8: .4byte gSomeBlend
_0800EDAC: .4byte 0x0001ED10
_0800EDB0: .4byte gGame
_0800EDB4: .4byte 0x00008494
_0800EDB8:
	movs r0, #1
	b _0800EDBE
_0800EDBC:
	movs r0, #0
_0800EDBE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
