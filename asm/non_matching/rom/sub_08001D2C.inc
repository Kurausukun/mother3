	.syntax unified
sub_08001D2C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08001D4C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0xbc
	ldrb r0, [r1]
	cmp r0, #0
	bne _08001D50
	movs r0, #1
	b _08001D52
	.align 2, 0
_08001D4C: .4byte gLevelStatTable
_08001D50:
	movs r0, #0
_08001D52:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
