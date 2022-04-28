#include <stdbool.h>
#include "structs.h"

u16 get_progression_flag(s32);
bool8 ch_is_lucas(CharStats* ch);
bool8 ch_is_kumatora(CharStats* ch);

bool8 ch_has_psi(CharStats* ch) {
    if (ch_is_lucas(ch) == true) {
        return get_progression_flag(4) > 0x11;
    }
    if (ch_is_kumatora(ch) == true) {
        return true;
    }
    return false;
}
