#include "core/irc.h"
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
}

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
