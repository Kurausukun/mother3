	.syntax unified
sub_0809DF80:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	b _0809DFB2
_0809DF8A:
	adds r0, r5, #0
	bl GetPlayer
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809DFB2:
	bl getPartyCount
	cmp r5, r0
	blt _0809DF8A
	movs r5, #0
	b _0809DFE6
_0809DFBE:
	adds r0, r5, #0
	bl sub_08072C7C
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809DFE6:
	bl sub_08072C60
	cmp r5, r0
	blt _0809DFBE
	movs r5, #0
	b _0809E036
_0809DFF2:
	adds r0, r5, #0
	bl sub_08072E18__Fi
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r0, r5, #0
	bl sub_08072E18__Fi
	adds r1, r0, #0
	ldr r3, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, r6, r0
	mov r4, sp
	movs r2, #0
	strb r2, [r4]
	ldr r4, [r3, #4]
	movs r2, #0x33
	movs r3, #0x64
	bl _call_via_r4
	adds r5, #1
_0809E036:
	bl sub_08072DFC__Fv
	cmp r5, r0
	blt _0809DFF2
	adds r0, r6, #0
	bl tellUseMessage__6Action
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
