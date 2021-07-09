#ifndef GUARD_AGB_SRAM_H
#define GUARD_AGB_SRAM_H

#define SRAM_ADR                0x0e000000     // SRAM Start Address

void SetSramFastFunc(void);
void WriteSramFast(u8 *src, u8 *dest, u32 size);
extern void (*ReadSramFast)(u8 *src, u8 *dest, u32 size);
extern u32 (*VerifySramFast)(u8 *src, u8 *dest, u32 size);
u32 WriteAndVerifySramFast(u8 *src, u8 *dest, u32 size);

#endif  // GUARD_AGB_SRAM_H
