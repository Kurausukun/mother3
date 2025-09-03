	.syntax unified
sub_08055008:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r3, _08055020
_08055012:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _08055024
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _08055032
	.align 2, 0
_08055020: .4byte gSave
_08055024:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08055012
	movs r0, #1
	rsbs r0, r0, #0
_08055032:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
