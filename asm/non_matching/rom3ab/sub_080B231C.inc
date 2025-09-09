	.syntax unified
sub_080B231C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r1, #0
	movs r1, #0
	mov r4, sp
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r0, _080B233C
	mov sb, r0
_080B2334:
	movs r0, #0
	adds r1, #1
	mov r8, r1
	b _080B238A
	.align 2, 0
_080B233C: .4byte gUnknown_080EF880
_080B2340:
	strh r6, [r4]
	strh r6, [r4, #2]
	ldr r2, _080B23AC
	adds r1, r2, #0
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	rsbs r0, r0, #0
	lsrs r0, r0, #8
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xc0
	bl sub_08069594
	adds r0, r0, r6
	strh r0, [r4]
	ldr r1, [r7, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sp
	bl _call_via_r2
	movs r0, #1
	bl setsleep
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080B238A:
	movs r1, #0x80
	lsls r1, r1, #2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, r1
	ble _080B2340
	mov r1, r8
	cmp r1, #1
	ble _080B2334
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B23AC: .4byte 0x000003FF
	.syntax divided
