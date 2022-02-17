#ifndef BATTLE_TEXT_ACCESSOR_H
#define BATTLE_TEXT_ACCESSOR_H

#include "base.h"

class TextAccessor : public Base {
public:
    TextAccessor();
    virtual ~TextAccessor();

    u8 _20[140];
    u32 _ac;
};

#endif // BATTLE_TEXT_ACCESSOR_H