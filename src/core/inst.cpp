#include "core/clock.h"

extern const char gUnknown_080FEF44[];
extern const char gUnknown_080FEF2C[];

Clock* sub_080C0BFC() {
    return new Clock();
}

const char* sub_080C0C0C() {
    return gUnknown_080FEF44;
}

PostSysClock* sub_080C0C14() {
    return new PostSysClock();
}

const char* sub_080C0C24() {
    return gUnknown_080FEF2C;
}
