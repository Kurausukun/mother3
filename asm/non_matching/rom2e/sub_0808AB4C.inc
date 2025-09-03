	.syntax unified
sub_0808AB4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, [r5, #0x2c]
	ldrh r3, [r2, #0xe]
	ldrh r0, [r2, #0x10]
	adds r4, r3, r0
	ldrh r0, [r2, #0x12]
	adds r0, r4, r0
	ldrh r1, [r5, #0x30]
	cmp r1, r0
	ble _0808AB92
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r2, #0x14]
	cmp r0, r2
	blo _0808AB8E
	cmp r5, #0
	bne _0808AB7C
	b _0808AD1A
_0808AB7C:
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _0808AD1A
_0808AB8E:
	movs r0, #0
	strh r0, [r5, #0x30]
_0808AB92:
	ldrh r2, [r5, #0x30]
	cmp r2, r3
	bge _0808ABC8
	ldr r0, [r5, #0x2c]
	movs r3, #8
	ldrsh r1, [r0, r3]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	mov r8, r0
	ldr r0, [r5, #0x2c]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	bl sub_08069558
	adds r7, r0, #0
	ldr r0, [r5, #0x2c]
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	ldrh r2, [r5, #0x30]
	ldrh r3, [r0, #0xe]
	movs r0, #0
	b _0808AC12
_0808ABC8:
	cmp r2, r4
	bge _0808ABDE
	ldr r0, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r0, r2]
	mov r8, r1
	movs r3, #0xa
	ldrsh r7, [r0, r3]
	movs r1, #0xc
	ldrsh r6, [r0, r1]
	b _0808AC18
_0808ABDE:
	ldr r1, [r5, #0x2c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	mov r8, r0
	ldr r1, [r5, #0x2c]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r5, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
	bl sub_08069558
	adds r7, r0, #0
	ldr r1, [r5, #0x2c]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	ldrh r2, [r5, #0x30]
	subs r2, r2, r4
	ldrh r3, [r1, #0x12]
	movs r1, #0
_0808AC12:
	bl sub_08069558
	adds r6, r0, #0
_0808AC18:
	bl sub_0806B070
	movs r1, #1
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _0808AC6A
	bl getB__11BattleFader
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__11BattleFaderUi
	adds r0, r4, #0
	bl getB2__11BattleFader
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__11BattleFaderUi
	adds r0, r4, #0
	bl getB4__11BattleFader
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__11BattleFaderUi
_0808AC6A:
	bl sub_0806B070
	movs r1, #3
	bl sub_0806BA4C
	adds r4, r0, #0
	cmp r4, #0
	beq _0808ACBC
	bl getB__11BattleFader
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	mov r3, r8
	subs r0, r3, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB__11BattleFaderUi
	adds r0, r4, #0
	bl getB2__11BattleFader
	adds r1, r0, #0
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	subs r0, r7, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB2__11BattleFaderUi
	adds r0, r4, #0
	bl getB4__11BattleFader
	adds r1, r0, #0
	movs r3, #0x38
	ldrsh r0, [r5, r3]
	subs r0, r6, r0
	adds r1, r1, r0
	adds r0, r4, #0
	bl setB4__11BattleFaderUi
_0808ACBC:
	bl sub_0806BE14
	bl sub_0806C1CC
	.syntax divided
