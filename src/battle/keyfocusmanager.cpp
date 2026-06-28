// Auto-generated source file
#include "battle/keyFocusManager.h"
#include "battle/archive.h"
#include "battle/clock.h"
#include "battle/rhythm.h"
#include "battle/system.h"
#include "global.h"

extern "C" s32 DivMod(s32, s32);

extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080703A4.inc", void sub_080703A4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070414.inc", void sub_08070414());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070478.inc", void sub_08070478());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070578.inc", void sub_08070578());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807058C.inc", void sub_0807058C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080705A4.inc", void sub_080705A4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070654.inc", void sub_08070654());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/randS32.inc", void randS32());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807066C.inc", void sub_0807066C());

extern "C" s32 Remainder(s32 a, s32 b) {
    if (b != 0) {
        return DivMod(a, b);
    }
    return a;
}

extern "C" void setsleep(s32 duration) {
    ClockManager::get()->sleep(duration);
}

extern "C" ResPtr sub_080706A0(u16 id) {
    System::SARHandle* archive = SystemManager::get()->getHandle();
    return LoadRes(archive, id);
}

extern "C" Msg sub_080706D0(u16 id, u16 idx) {
    System::SARHandle* archive = SystemManager::get()->getHandle();
    return BXTHandle(LoadRes(archive, id)).getMessage(idx);
}

extern "C" u32 sub_08070738() {
    return SystemManager::get()->sub_0805D5C0();
}

extern "C" u32 sub_08070754() {
    return SystemManager::get()->sub_0805D5D0();
}

extern "C" u32 sub_08070770() {
    return SystemManager::get()->sub_0805D604();
}

extern "C" u32 sub_0807078C() {
    return SystemManager::get()->sub_0805D638();
}

extern "C" u32 sub_080707A8() {
    return SystemManager::get()->getGameProgression();
}

extern "C" int sub_080707C4(int r0) {
    return SystemManager::get()->sub_0805D6F8(r0);
}

extern "C" void PlaySoundBlocking(u16 idx) {
    if (idx) {
        Sound snd(idx);
        snd.play(0);
        while (snd.isPlaying() == 1) {
            setsleep(1);
        }
    }
}

extern "C" void playSound(u16 idx) {
    if (idx) {
        Sound snd(idx);
        snd.play(0);
    }
}

class Combo : public Base {
public:
    Combo(Combo* root, u32 flag1, u32 flag2, u32 flag3, u32 flag4);
    virtual ~Combo();

    virtual Combo* combo_60();
    virtual Combo* back();
    virtual Combo* combo_70();
    virtual Combo* prev();
    virtual Combo* next();
    virtual Combo* head();
    virtual void combo_98(bool set, bool recurse);
    virtual void combo_a0(bool set, bool recurse);
    virtual void combo_a8(bool set, bool recurse);
    virtual void combo_b0(bool set, bool recurse);
    virtual void combo_b8(bool set, bool recurse);
    virtual void combo_c0(bool set, bool recurse);
    virtual void setRhythm(ComboRhythm& rhythm);
    virtual void setRhythm(u32 a, u32 b);
    virtual void setRhythm2(ComboRhythm& rhythm);
    virtual void setRhythm2(u32 a, u32 b);
    virtual void combo_e8(u32 r0);
    virtual bool combo_f0();
    virtual bool combo_f8();
    virtual bool combo_100();
    virtual bool combo_108();
    virtual bool combo_110();
    virtual bool combo_118();
    virtual ComboRhythm getRhythm();
    virtual ComboRhythm getRhythm2();
    virtual s8 combo_130();
    virtual bool beatInRange(ComboRhythm& rhythm);
    virtual Combo* sub_08070C38(ComboRhythm& rhythm);

    Combo* append(Combo* other);
    Combo* remove(Combo* other);

private:
    u32 _20;
    Combo* mPrev;
    Combo* mNext;
    Combo* mHead;
    ComboRhythm mRhythm;
    ComboRhythm mRhythm2;
    s8 _38;
    u8 _39;
};

Combo::Combo(Combo* root, u32 flag1, u32 flag2, u32 flag3, u32 flag4)
    : mRhythm(0, 0), mRhythm2(0, 0) {
    mPrev = NULL;
    mNext = NULL;
    mHead = NULL;
    mRhythm.a = flag1;
    mRhythm.b = flag2;
    mRhythm2.a = flag3;
    mRhythm2.b = flag4;
    _38 = 1;
    _39 = 7;
    if (root) {
        root->append(this);
    }
}

Combo::~Combo() {
    if (mPrev) {
        mPrev->remove(this);
    }
    for (Combo* i = mHead; i != 0; i = i->mNext) {
        i->mPrev = 0;
    }
}

Combo* Combo::append(Combo* other) {
    if (!mHead) {
        mHead = other;
    } else {
        Combo* cur = mHead;
        while (cur->mNext) {
            cur = cur->mNext;
        }
        cur->mNext = other;
    }
    other->mPrev = this;
    return other;
}

Combo* Combo::remove(Combo* other) {
    if (mHead == other) {
        mHead = other->mNext;
        other->mPrev = 0;
        return other;
    }

    Combo* prev = mHead;
    while (prev->mNext) {
        if (prev->mNext == other) {
            prev->mNext = other->mNext;
            other->mPrev = 0;
            return other;
        }
        prev = prev->mNext;
    }
    return 0;
}

Combo* Combo::back() {
    Combo* combo = this;
    while (combo->prev()) {
        combo = combo->prev();
    }
    return combo;
}

Combo* Combo::combo_70() {
    Combo* combo = this;
    while (combo->prev()) {
        combo = combo->prev();
    }
    return combo;
}

Combo* Combo::prev() {
    return mPrev;
}

Combo* Combo::next() {
    return mNext;
}

Combo* Combo::head() {
    return mHead;
}

void Combo::combo_98(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 1;
    } else {
        _39 &= ~1;
    }
    if (recurse == 1) {
        for (Combo* i = mHead; i != 0; i = i->mNext) {
            i->combo_98(set, recurse);
        }
    }
}

void Combo::combo_a0(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 2;
    } else {
        _39 &= ~2;
    }
    if (recurse == 1) {
        for (Combo* i = mHead; i != 0; i = i->mNext) {
            i->combo_a0(set, recurse);
        }
    }
}

void Combo::combo_a8(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 4;
    } else {
        _39 &= ~4;
    }
    if (recurse == 1) {
        for (Combo* i = mHead; i != 0; i = i->mNext) {
            i->combo_a8(set, recurse);
        }
    }
}

void Combo::combo_b0(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 8;
    } else {
        _39 &= ~8;
    }
}

void Combo::combo_b8(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 0x10;
    } else {
        _39 &= ~0x10;
    }
}

void Combo::combo_c0(bool set, bool recurse) {
    if (set == 1) {
        _39 |= 0x20;
    } else {
        _39 &= ~0x20;
    }
}

void Combo::setRhythm(ComboRhythm& rhythm) {
    mRhythm = rhythm;
}

void Combo::setRhythm(u32 a, u32 b) {
    mRhythm.a = a;
    mRhythm.b = b;
}

void Combo::setRhythm2(ComboRhythm& rhythm) {
    mRhythm2 = rhythm;
}

void Combo::setRhythm2(u32 a, u32 b) {
    mRhythm2.a = a;
    mRhythm2.b = b;
}

void Combo::combo_e8(u32 r0) {
    _38 = r0;
}

bool Combo::combo_f0() {
    return _39 & 1;
}

bool Combo::combo_f8() {
    return (_39 >> 1) & 1;
}

bool Combo::combo_100() {
    return (_39 >> 2) & 1;
}

bool Combo::combo_108() {
    return (_39 >> 3) & 1;
}

bool Combo::combo_110() {
    return (_39 >> 4) & 1;
}

bool Combo::combo_118() {
    return (_39 >> 5) & 1;
}

ComboRhythm Combo::getRhythm() {
    return mRhythm;
}

ComboRhythm Combo::getRhythm2() {
    return mRhythm2;
}

s8 Combo::combo_130() {
    return _38;
}

bool Combo::beatInRange(ComboRhythm& rhythm) {
    ComboRhythm lower = getRhythm();
    ComboRhythm upper = getRhythm2();
    if (rhythm.a >= lower.a && rhythm.a < lower.a + upper.a && rhythm.b >= lower.b &&
        rhythm.b < lower.b + upper.b) {
        return true;
    }
    return false;
}

Combo* Combo::sub_08070C38(ComboRhythm& rhythm) {
    for (Combo* i = mHead; i; i = i->mNext) {
        if (i->combo_f0() == 1 && i->combo_f8() == 1 && i->beatInRange(rhythm) == 1) {
            return i;
        }
    }
    return 0;
}

extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070CA4.inc", void sub_08070CA4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070D40.inc", void sub_08070D40());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070E20.inc", void sub_08070E20());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070F00.inc", void sub_08070F00());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08070F74.inc", void sub_08070F74());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/nullsub_105.inc", void nullsub_105());

class ComboRoot : public Combo {
public:
    ComboRoot(u32 flag1, u32 flag2, u32 flag3, u32 flag4);
    virtual ~ComboRoot();

    void sub_080710BC(ComboRoot* other);
};

extern ClockData gUnknown_08102A9C;

ComboRoot::ComboRoot(u32 flag1, u32 flag2, u32 flag3, u32 flag4)
    : Combo(0, flag1, flag2, flag3, flag4) {
    listen(ClockManager::get(), PreAppClock(), gUnknown_08102A9C);
}

ComboRoot::~ComboRoot() {
    for (Combo* cur = head(); cur;) {
        Combo* nxt = cur->next();
        delete cur;
        cur = nxt;
    }
}

extern "C" void sub_080710B0(Base* b, Clock* c) {
    ComboRoot* r = static_cast<ComboRoot*>(b);
    r->sub_080710BC(r);
}

extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080710BC.inc", void sub_080710BC__9ComboRootP9ComboRoot());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071108.inc", void sub_08071108());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807113C.inc", void sub_0807113C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071150.inc", void sub_08071150());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071174.inc", void sub_08071174());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071194.inc", void sub_08071194());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080711B8.inc", void sub_080711B8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080711BC.inc", void sub_080711BC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080711C4.inc", void sub_080711C4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071268.inc", void sub_08071268());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071334.inc", void sub_08071334());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071364.inc", void sub_08071364());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807138C.inc", void sub_0807138C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714A0.inc", void sub_080714A0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714A4.inc", void sub_080714A4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714AC.inc", void sub_080714AC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714B0.inc", void sub_080714B0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714B4.inc", void sub_080714B4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714C0.inc", void sub_080714C0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714C4.inc", void sub_080714C4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714CC.inc", void sub_080714CC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714D0.inc", void sub_080714D0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714D4.inc", void sub_080714D4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714DC.inc", void sub_080714DC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714E0.inc", void sub_080714E0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080714E4.inc", void sub_080714E4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071500.inc", void sub_08071500());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080715E0.inc", void sub_080715E0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807163C.inc", void sub_0807163C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807165C.inc", void sub_0807165C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080716CC.inc", void sub_080716CC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071714.inc", void sub_08071714());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080717F8.inc", void sub_080717F8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071828.inc", void sub_08071828());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080718C0.inc", void sub_080718C0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080718EC.inc", void sub_080718EC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071914.inc", void sub_08071914());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807191C.inc", void sub_0807191C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071920.inc", void sub_08071920());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071954.inc", void sub_08071954());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080719C4.inc", void sub_080719C4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071A5C.inc", void sub_08071A5C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071A78.inc", void sub_08071A78());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071AC4.inc", void sub_08071AC4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071B7C.inc", void sub_08071B7C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071B90.inc", void sub_08071B90());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071B98.inc", void sub_08071B98());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071BA0.inc", void sub_08071BA0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071BF8.inc", void sub_08071BF8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071CB0.inc", void sub_08071CB0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071CC4.inc", void sub_08071CC4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071CCC.inc", void sub_08071CCC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071CD4.inc", void sub_08071CD4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071D2C.inc", void sub_08071D2C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071DE4.inc", void sub_08071DE4());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071DF8.inc", void sub_08071DF8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071E00.inc", void sub_08071E00());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071E08.inc", void sub_08071E08());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071E5C.inc", void sub_08071E5C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071F14.inc", void sub_08071F14());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071F28.inc", void sub_08071F28());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071F30.inc", void sub_08071F30());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071F38.inc", void sub_08071F38());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071F8C.inc", void sub_08071F8C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071FF0.inc", void sub_08071FF0());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08071FF8.inc", void sub_08071FF8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08072028.inc", void sub_08072028());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08072034.inc", void sub_08072034());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08072070.inc", void sub_08072070());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807207C.inc", void sub_0807207C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080723FC.inc", void sub_080723FC());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08072424.inc", void sub_08072424());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807248C.inc", void sub_0807248C());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_080724F8.inc", void sub_080724F8());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_08072518.inc", void sub_08072518());
extern "C" ASM_FUNC("asm/non_matching/keyfocusmanager/sub_0807254C.inc", void sub_0807254C());
