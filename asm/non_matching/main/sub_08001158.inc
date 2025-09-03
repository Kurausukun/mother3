    .syntax unified
sub_08001158:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	add r0, sp, #8
	mov r8, r0
	mov r7, sp
	adds r7, #0xa
	ldr r6, _08001194 @ =0x040000D4
_0800117A:
	mov r0, sl
	add r0, sb
	asrs r0, r0, #1
	lsls r0, r0, #3
	ldr r2, _08001198 @ =gUnknown_02015E38
	ldr r1, [r2]
	adds r4, r1, r0
	mov r0, sl
	mov r3, sp
	strh r0, [r3, #8]
	mov r1, sb
	strh r1, [r3, #0xa]
	b _080011F2
	.align 2, 0
_08001194: .4byte 0x040000D4
_08001198: .4byte gUnknown_02015E38
_0800119C:
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #3
	ldr r3, _080011FC @ =gUnknown_02015E38
	ldr r1, [r3]
	adds r0, r1, r0
	str r0, [r6]
	mov r0, sp
	str r0, [r6, #4]
	ldr r2, _08001200 @ =0x80000004
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r1, r0
	str r0, [r6]
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r1, r0
	str r0, [r6, #4]
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, sp
	str r0, [r6]
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r6, #4]
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldrh r1, [r3]
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	bhi _08001262
_080011F2:
	add r2, sp, #8
	mov r1, sp
	ldrh r0, [r1, #8]
	b _0800120E
	.align 2, 0
_080011FC: .4byte gUnknown_02015E38
_08001200: .4byte 0x80000004
_08001204:
	adds r1, r2, #0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
_0800120E:
	ldr r3, _08001234 @ =gUnknown_02015E38
	ldr r1, [r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	blo _08001204
	mov r2, sp
	adds r2, #0xa
	mov r1, sp
	ldrh r0, [r1, #0xa]
	ldr r3, _08001234 @ =gUnknown_02015E38
	b _08001242
	.align 2, 0
_08001234: .4byte gUnknown_02015E38
_08001238:
	adds r1, r2, #0
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
_08001242:
	ldr r1, [r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	lsls r1, r1, #0x1c
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bhi _08001238
	mov r2, sp
	ldrh r1, [r2, #8]
	ldrh r0, [r2, #0xa]
	cmp r1, r0
	bls _0800119C
_08001262:
	adds r5, r7, #0
	ldrh r1, [r5]
	mov r3, sl
	subs r1, r1, r3
	mov r4, r8
	ldrh r0, [r4]
	mov r2, sb
	subs r0, r2, r0
	cmp r1, r0
	bge _0800128E
	ldrh r0, [r5]
	cmp sl, r0
	bhs _08001284
	ldrh r1, [r5]
	mov r0, sl
	bl sub_08001158__FUsUs
_08001284:
	ldrh r0, [r4]
	mov sl, r0
	mov r3, sb
	strh r3, [r5]
	b _080012A6
_0800128E:
	ldrh r0, [r4]
	cmp r0, sb
	bhs _0800129C
	ldrh r0, [r4]
	mov r1, sb
	bl sub_08001158__FUsUs
_0800129C:
	ldrh r0, [r7]
	mov sb, r0
	mov r1, sl
	mov r0, r8
	strh r1, [r0]
_080012A6:
	cmp sl, sb
	bhs _080012AC
	b _0800117A
_080012AC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .syntax divided
