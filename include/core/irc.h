#ifndef CORE_IRC_H
#define CORE_IRC_H

#include "core/base.h"

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

struct Interrupt {
    u8 enabled;
    u8 filler[51];
};

class Irc : public Base {
public:
    Irc();
    virtual ~Irc();

    void init(IrqTable* tbl);
    void disableAll();
    void enableAll();

    s32 mDisabled;
    u32 _24;
    Interrupt mIntrs[13];
};

#endif // CORE_IRC_H
