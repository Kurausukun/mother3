	.syntax unified
sub_0809F9F0:
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0x25
	cmp r0, #5
	bhi _0809FA50
	lsls r0, r0, #2
	ldr r1, _0809FA1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809FA1C: .4byte _0809FA20
_0809FA20:
	.4byte _0809FA38
	.4byte _0809FA3C
	.4byte _0809FA40
	.4byte _0809FA44
	.4byte _0809FA48
	.4byte _0809FA4C
_0809FA38:
	movs r0, #0xd6
	b _0809FA52
_0809FA3C:
	movs r0, #0xd7
	b _0809FA52
_0809FA40:
	movs r0, #0xd9
	b _0809FA52
_0809FA44:
	movs r0, #0xd8
	b _0809FA52
_0809FA48:
	movs r0, #0xda
	b _0809FA52
_0809FA4C:
	movs r0, #0xdb
	b _0809FA52
_0809FA50:
	movs r0, #0
_0809FA52:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
