#include "battle/irc.h"
#include "gba/gba.h"

extern "C" {
void irq_vblank();
void irq_hblank();
void irq_vcount();
void irq_timer0();
void irq_timer1();
void irq_timer2();
void irq_timer3();
void irq_serial();
void irq_dma0();
void irq_dma1();
void irq_dma2();
void irq_dma3();
void irq_key();
void sub_08069E2C(Irc*, u32, u32, Intr2, u32);
}

SINGLETON_IMPL(Irc)

Irc::Irc() : mDisabled(false), _24(0) {
    for (int i = 0; i < 13; ++i) {
        mIntrs[i].enabled = 0;
    }
}

Irc::~Irc() {
    REG_IME = 0;
    REG_IE = 0x2000;
    REG_DISPSTAT = 0;
    REG_IME = 1;
}

void Irc::init(IrqTable* tbl) {
    REG_IME = 0;
    tbl->vblank = irq_vblank;
    tbl->hblank = irq_hblank;
    tbl->vcount = irq_vcount;
    tbl->timer0 = irq_timer0;
    tbl->timer1 = irq_timer1;
    tbl->timer2 = irq_timer2;
    tbl->timer3 = irq_timer3;
    tbl->serial = irq_serial;
    tbl->dma0 = irq_dma0;
    tbl->dma1 = irq_dma1;
    tbl->dma2 = irq_dma2;
    tbl->dma3 = irq_dma3;
    tbl->key = irq_key;
    REG_IE = 0x2000;
    REG_DISPSTAT = 0;
    REG_IME = 1;
}

void Irc::disableAll() {
    REG_IME = 0;
    mDisabled++;
}

void Irc::enableAll() {
    REG_IME = 0;

    if (mDisabled == 0 || --mDisabled != 0)
        return;

    if (mDisabled == 0)
        REG_IME = 1;
}

void Irc::sub_08069A50(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069C24(0, a1, a2, 8);
    enableAll();
}

void Irc::sub_08069A88(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069C24(1, a1, a2, 16);
    enableAll();
}

void Irc::sub_08069AC0(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069C24(2, a1, a2, 32);
    enableAll();
}

void Irc::sub_08069AF8(u32 bit) {
    disableAll();
    REG_DISPSTAT &= 0xff;
    REG_DISPSTAT |= bit << 8;
    enableAll();
}

void Irc::sub_08069B24(u32 a1, u32 a2, Intr2 a3) {
    disableAll();
    sub_08069C24(a1 + 3, a2, a3, 0);
    enableAll();
}

void Irc::sub_08069B6C(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069C24(7, a1, a2, 0);
    enableAll();
}

void Irc::sub_08069BA4(u32 a1, u32 a2, Intr2 a3) {
    disableAll();
    sub_08069C24(a1 + 8, a2, a3, 0);
    enableAll();
}

void Irc::sub_08069BEC(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069C24(12, a1, a2, 0);
    enableAll();
}

// // single instruction regswap
// Irc::sub_08069C24(u32 idx, u32 unused, Intr2 x, u16 irq_set)
extern "C" NONMATCH("asm/non_matching/BattleFader/sub_08069C24.inc",
                    void sub_08069C24__3IrcUiUiG5Intr2Us(Irc* thisx, u32 idx, u32 unused, Intr2& x,
                                                         u16 irq_set)) {
    Interrupt* i = &thisx->mIntrs[idx];
    i->states[i->enabled] = unused;
    i->_18[i->enabled] = x;
    if (!i->enabled) {
        REG_IE |= (1 << idx);
        REG_DISPSTAT |= irq_set;
    }
    i->enabled++;
}
END_NONMATCH

void Irc::sub_08069C84(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069E2C(this, 0, a1, a2, 8);
    enableAll();
}

void Irc::sub_08069CBC(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069E2C(this, 1, a1, a2, 16);
    enableAll();
}

void Irc::sub_08069CF4(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069E2C(this, 2, a1, a2, 32);
    enableAll();
}

void Irc::sub_08069D2C(u32 a1, u32 a2, Intr2 a3) {
    disableAll();
    sub_08069E2C(this, a1 + 3, a2, a3, 0);
    enableAll();
}

void Irc::sub_08069D74(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069E2C(this, 7, a1, a2, 0);
    enableAll();
}

void Irc::sub_08069DAC(u32 a1, u32 a2, Intr2 a3) {
    disableAll();
    sub_08069E2C(this, a1 + 8, a2, a3, 0);
    enableAll();
}

void Irc::sub_08069DF4(u32 a1, Intr2 a2) {
    disableAll();
    sub_08069E2C(this, 12, a1, a2, 0);
    enableAll();
}

extern "C" ASM_FUNC("asm/non_matching/BattleFader/sub_08069E2C.inc", void sub_08069E2C())

                        u32 Irc::sub_08069F1C() {
    return _24;
}

void irq_vblank() {
    IrcManager::get()->handleIrq(0);
    IrcManager::get()->_24++;
}

void irq_hblank() {
    IrcManager::get()->handleIrq(1);
}

void irq_vcount() {
    IrcManager::get()->handleIrq(2);
}

void irq_timer0() {
    IrcManager::get()->handleIrq(3);
}

void irq_timer1() {
    IrcManager::get()->handleIrq(4);
}

void irq_timer2() {
    IrcManager::get()->handleIrq(5);
}

void irq_timer3() {
    IrcManager::get()->handleIrq(6);
}

void irq_serial() {
    IrcManager::get()->handleIrq(7);
}

void irq_dma0() {
    IrcManager::get()->handleIrq(8);
}

void irq_dma1() {
    IrcManager::get()->handleIrq(9);
}

void irq_dma2() {
    IrcManager::get()->handleIrq(10);
}

void irq_dma3() {
    IrcManager::get()->handleIrq(11);
}

void irq_key() {
    IrcManager::get()->handleIrq(12);
}

ASM_FUNC("asm/non_matching/irc/handleIrq.inc", void Irc::handleIrq(u32 idx));
