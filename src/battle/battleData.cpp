#include "battle.h"

extern "C" s32 sub_08072568() {
    return BattleManager::get()->battle_140();
}

extern "C" s32 sub_08072588() {
    return BattleManager::get()->battle_148();
}

extern "C" s32 sub_080725A8() {
    return BattleManager::get()->battle_150();
}

extern "C" s32 sub_080725C8() {
    return BattleManager::get()->battle_158();
}

extern "C" bool sub_080725E8() {
    return BattleManager::get()->battle_160();
}

extern "C" Struct160* sub_08072608() {
    return BattleManager::get()->battle_168();
}

extern "C" bool sub_08072628() {
    return BattleManager::get()->battle_170();
}

extern "C" bool sub_08072648(u16 value) {
    return BattleManager::get()->battle_170() && BattleManager::get()->battle_138() == value;
}

extern "C" BattleGroup* sub_08072698() {
    return BattleManager::get()->battle_178();
}

extern "C" bool sub_080726B8() {
    return BattleManager::get()->battle_180();
}

extern "C" Struct160* sub_080726D8() {
    return BattleManager::get()->battle_188();
}

extern "C" bool sub_080726F8() {
    return BattleManager::get()->battle_190();
}

extern "C" bool sub_08072718() {
    return BattleManager::get()->battle_198();
}

extern "C" bool sub_08072738() {
    return BattleManager::get()->battle_1a0();
}

extern "C" bool sub_08072758() {
    return BattleManager::get()->battle_1a8();
}

extern "C" bool sub_08072778() {
    return BattleManager::get()->battle_1b0();
}

extern "C" s32 sub_08072798() {
    return BattleManager::get()->battle_1b8();
}

extern "C" bool sub_080727B8() {
    return BattleManager::get()->battle_1c0();
}

extern "C" bool sub_080727D8() {
    return BattleManager::get()->battle_1c8();
}

extern "C" bool sub_080727F8() {
    return BattleManager::get()->battle_1d0();
}

extern "C" bool sub_08072818() {
    return BattleManager::get()->battle_1d8();
}

extern "C" bool sub_08072838() {
    return BattleManager::get()->battle_1e0();
}

extern "C" u8* sub_08072858() {
    return BattleManager::get()->battle_200();
}

extern "C" s32 sub_08072878() {
    return BattleManager::get()->battle_208();
}

extern "C" BgClass* sub_08072898() {
    return BattleManager::get()->battle_210();
}

extern "C" s32 sub_080728B8() {
    return BattleManager::get()->battle_218();
}

extern "C" s32 sub_080728D8() {
    return BattleManager::get()->battle_220();
}

extern "C" s32 sub_080728F8() {
    return BattleManager::get()->battle_228();
}

extern "C" Class2* sub_08072918() {
    return BattleManager::get()->battle_230();
}
