#ifndef TEXT_ACCESSOR_H
#define TEXT_ACCESSOR_H

#include "base.h"

class TextAccessor : public Base {
public:
    TextAccessor();
    virtual ~TextAccessor();

    u8 _20[140];
    u32 _ac;
};

#endif // TEXT_ACCESSOR_H