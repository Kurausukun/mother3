#ifndef BATTLE_IRC_H
#define BATTLE_IRC_H

#include "base.h"

struct IrqTable {
    typedef void (*Func)();

    Func vblank;
    Func hblank;
    Func vcount;
    Func timer0;
    Func timer1;
    Func timer2;
    Func timer3;
    Func serial;
    Func dma0;
    Func dma1;
    Func dma2;
    Func dma3;
    Func key;
};

struct Intr2 {
    u32 a;
    u32 b;
};

struct Interrupt {
    u8 enabled;
    u32 states[4];
    Intr2 _18[4];

};

class Irc : public Base {
public:
    Irc();
    virtual ~Irc();

    virtual void* getRTTI();

    void init(IrqTable* tbl);
    void disableAll();
    void enableAll();
    void sub_08069A50(u32, Intr2);
    void sub_08069A88(u32, Intr2);
    void sub_08069AC0(u32, Intr2);
    void sub_08069AF8(u32 bit);
    void sub_08069B24(u32, u32, Intr2);
    void sub_08069B6C(u32, Intr2);
    void sub_08069BA4(u32, u32, Intr2);
    void sub_08069BEC(u32, Intr2);
    void sub_08069C24(u32 idx, u32 unused, Intr2 x, u16 irq_set);
    void sub_08069C84(u32, Intr2);
    void sub_08069CBC(u32, Intr2);
    void sub_08069CF4(u32, Intr2);
    void sub_08069D2C(u32, u32, Intr2);
    void sub_08069D74(u32, Intr2);
    void sub_08069DAC(u32, u32, Intr2);
    void sub_08069DF4(u32, Intr2);
    u32 sub_08069F1C();
    void handleIrq(u32);

    s32 mDisabled;
    u32 _24;
    Interrupt mIntrs[13];
};

SINGLETON_MGR(Irc)
SINGLETON(Irc)

#endif  // BATTLE_IRC_H
