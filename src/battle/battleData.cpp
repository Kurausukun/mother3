#include "battle.h"
#include "battle/guest.h"
#include "battle/monster.h"
#include "battle/player.h"
#include "battle/fader.h"

extern "C" Msg sub_080706D0(u16, u16);
extern "C" Msg StrFmt(const Msg&, const Msg&, const Msg&, const Msg&);

extern "C" BattleFader* sub_08072568() {
    return BattleManager::get()->battle_140();
}

extern "C" BattleFader* sub_08072588() {
    return BattleManager::get()->battle_148();
}

extern "C" BattleFader* sub_080725A8() {
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

extern "C" bool IsBossBattle() {
    return BattleManager::get()->isFightBoss();
}

extern "C" bool sub_08072648(u16 value) {
    return BattleManager::get()->isFightBoss() && BattleManager::get()->battle_138() == value;
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

extern "C" bool battleWon() {
    return BattleManager::get()->isBattleWon();
}

extern "C" s32 roundNumber() {
    return BattleManager::get()->roundNo();
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

extern "C" bool IsBattleLost() {
    return BattleManager::get()->isBattleLost();
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

extern "C" PartyInfo* getPartyInfo() {
    return BattleManager::get()->partyInfo();
}

extern "C" GuestInfo* getGuestInfo() {
    return BattleManager::get()->guestInfo();
}

extern "C" MonsterInfo* getMonsterInfo() {
    return BattleManager::get()->monsterInfo();
}

extern "C" Class2* sub_08072918() {
    return BattleManager::get()->battle_230();
}

extern "C" bool IsPlayer(Unit* u) {
    return u && u->getRTTI() == getPlayerRTTI();
}

extern "C" bool IsPlayerAndType(Unit* u, u16 id) {
    return u && u->getRTTI() == getPlayerRTTI() && u->id() == id;
}

extern "C" Player* tryCastPlayer__5GoodsP4Unit(Unit* u) {
    return u && u->getRTTI() == getPlayerRTTI() ? reinterpret_cast<Player*>(u) : NULL;
}

extern "C" s32 getPartyCount() {
    return getPartyInfo()->numPlayers();
}

extern "C" Player* GetPlayer(s32 idx) {
    return getPartyInfo()->getPlayer(idx);
}

extern "C" Player* sub_08072A18(u16 idx) {
    PartyInfo* info = getPartyInfo();
    for (int i = 0; i < info->numPlayers(); i++) {
        if (info->getPlayer(i)->id() == idx) {
            return info->getPlayer(i);
        }
    }
    return NULL;
}

s32 sub_08072A88() {
    return getPartyInfo()->party_info_a8();
}

Player* sub_08072AA4(s32 idx) {
    return getPartyInfo()->party_info_b0(idx);
}

extern "C" Player* sub_08072AC4(u16 idx) {
    PartyInfo* info = getPartyInfo();
    for (int i = 0; i < info->party_info_a8(); i++) {
        if (info->party_info_b0(i)->id() == idx) {
            return info->party_info_b0(i);
        }
    }
    return NULL;
}

extern "C" s32 sub_08072B34() {
    return getPartyInfo()->party_info_c0();
}

extern "C" Player* sub_08072B50(s32 idx) {
    return getPartyInfo()->party_info_c8(idx);
}

void sub_08072B70() {
    getPartyInfo()->party_info_88();
    do {
        getPartyInfo()->party_info_90();
    } while (getPartyInfo()->party_info_88() == true);
}

extern "C" bool sub_08072BBC(Unit* u) {
    return u && u->getRTTI() == GuestRTTI::get();
}

extern "C" bool sub_08072BE8(Unit* u, u16 id) {
    return u && u->getRTTI() == GuestRTTI::get() && u->id() == id;
}

extern "C" Guest* sub_08072C34(Unit* u) {
    return u && u->getRTTI() == GuestRTTI::get() ? reinterpret_cast<Guest*>(u) : NULL;
}

extern "C" s32 sub_08072C60() {
    return getGuestInfo()->guest_info_80();
}

extern "C" Guest* sub_08072C7C(s32 idx) {
    return getGuestInfo()->guest_info_88(idx);
}

extern "C" Guest* sub_08072C9C(u16 idx) {
    GuestInfo* info = getGuestInfo();
    for (int i = 0; i < info->guest_info_80(); i++) {
        if (info->guest_info_88(i)->id() == idx) {
            return info->guest_info_88(i);
        }
    }
    return NULL;
}

void sub_08072D0C() {
    getGuestInfo()->guest_info_70();
    do {
        getGuestInfo()->guest_info_78();
    } while (getGuestInfo()->guest_info_70() == true);
}

extern "C" bool typeIsMonster(Unit* u) {
    return u && u->getRTTI() == MonsterRTTI::get();
}

extern "C" bool isMonsterVariant(Unit* u, u16 idx) {
    return u && u->getRTTI() == MonsterRTTI::get() && u->id() == idx;
}

extern "C" Monster* dynaCastMonster(Unit* u) {
    return u && u->getRTTI() == MonsterRTTI::get() ? reinterpret_cast<Monster*>(u) : NULL;
}

s32 sub_08072DFC() {
    return getMonsterInfo()->monster_info_d8();
}

Monster* sub_08072E18(s32 idx) {
    return getMonsterInfo()->monster_info_e0(idx);
}

extern "C" Monster* sub_08072E38(u16 idx) {
    MonsterInfo* info = getMonsterInfo();
    for (int i = 0; i < info->monster_info_d8(); i++) {
        if (info->monster_info_e0(i)->id() == idx) {
            return info->monster_info_e0(i);
        }
    }
    return NULL;
}

extern "C" s32 GetMonsterCount() {
    return getMonsterInfo()->monster_info_e8();
}

extern "C" Monster* GetMonster(s32 idx) {
    return getMonsterInfo()->monster_info_f0(idx);
}

extern "C" Monster* sub_08072EE4(u16 idx) {
    MonsterInfo* info = getMonsterInfo();
    for (int i = 0; i < info->monster_info_e8(); i++) {
        if (info->monster_info_f0(i)->id() == idx) {
            return info->monster_info_f0(i);
        }
    }
    return NULL;
}

extern "C" bool sub_08072F54(u16 id) {
    return getMonsterInfo()->monster_info_a8(id, TX(0x110, 0x20), TX(0x100, 0x100), 0x1e);
}

extern "C" bool sub_08072F9C(u16 id, TX& a, TX& b, s32 c) {
    return getMonsterInfo()->monster_info_a8(id, a, b, c);
}

extern "C" void sub_08072FE0(Monster* m) {
    if (m != NULL) {
        m->object_8(0);
        getMonsterInfo()->monster_info_c0(m);
    }
}

void sub_08073018(bool r0, bool r1) {
    getMonsterInfo()->monster_info_c8();
    do {
        getMonsterInfo()->monster_info_d0(r0, r1);
    } while (getMonsterInfo()->monster_info_c8() == true);
}

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_08073070.inc", void sub_08073070());

extern "C" void PlayAnimation(u16 type, Unit* sender, Unit* target) {
    if (type != 0) {
        s32 num = target ? 1 : 0;
        Unit* temp = target;
        BattleManager::get()->battle_238()->sequencer_10(type, sender, num, &temp);
    }
}

extern "C" void PlayAnimationForEach(u16 type, Unit* sender, s32 num_receivers, Unit** receivers) {
    if (type != 0) {
        BattleManager::get()->battle_238()->sequencer_10(type, sender, num_receivers, receivers);
    }
}

extern "C" bool sub_08073198(u16 type, Unit* sender, Unit* receiver) {
    if (type == 0) {
        return false;
    }

    s32 num = receiver ? 1 : 0;
    Unit* tmp = receiver;
    return BattleManager::get()->battle_238()->sequencer_18(type, sender, num, &tmp);
}

extern "C" bool sub_080731F0(u16 type, Unit* sender, s32 num_receivers, Unit** receivers) {
    if (type == 0) {
        return false;
    }

    return BattleManager::get()->battle_238()->sequencer_18(type, sender, num_receivers, receivers);
}

extern "C" void sub_0807323C(s32 r0) {
    BattleManager::get()->battle_238()->sequencer_30(r0);
}

extern "C" void sub_08073270() {
    Sequencer* s = BattleManager::get()->battle_238();
    while (s->sequencer_20() > 0) {
        s->sequencer_30(s->sequencer_28(0));
    }
}

extern "C" void sub_080732CC(s32 r0) {
    BattleManager::get()->battle_238()->sequencer_38(r0);
}

extern "C" void sub_08073300() {
    Sequencer* s = BattleManager::get()->battle_238();
    while (s->sequencer_20() > 0) {
        s->sequencer_38(s->sequencer_28(0));
    }
}

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_0807335C.inc", void sub_0807335C(s32 r0));

Msg sub_08073444(u16 idx) {
    return sub_080706D0(0x3a6, idx);
}

Msg ROMStrFmt(s32 r0, const Msg& r1, const Msg& r2, const Msg& r3) {
    return StrFmt(sub_08073444(r0), r1, r2, r3);
}

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_080734A0.inc",
                    Msg StrFmt(const Msg&, const Msg&, const Msg&, const Msg&));

ASM_FUNC("asm/non_matching/battleData/print__3MsgRC13PrintSettingsb.inc",
         void Msg::print(const Color&, bool));

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_0807362C.inc",
                    void sub_0807362C(const Color&, bool));

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_0807367C.inc",
                    void sub_0807367C(const Color&, bool));

extern "C" ASM_FUNC("asm/non_matching/battleData/sub_080736B4.inc",
                    void sub_080736B4(const Color&, bool));
