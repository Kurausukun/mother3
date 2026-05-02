#ifndef BATTLE_OBJ_ENGINE
#define BATTLE_OBJ_ENGINE

#include "base.h"
#include "singleton.h"

typedef struct UnkObjEngine {
    u32 _0;
    u8 pad_4[0x200];
} UnkObjEngine;
static_assert(sizeof(UnkObjEngine) == 0x204);

typedef struct UnkBar {
    u32 _938;
    u32 _93c;
    void* _940;
} UnkFoo;

class ObjEngine : public Base {
public:
    ObjEngine();  // sub_0806BE68
    virtual ~ObjEngine();
    virtual void* getRTTI();

private:
    UnkObjEngine _20[4];

    u16 _830;
    u16 _832;
    u32 _834;
    u8 pad_838[0x938 - 0x838];
    UnkBar _938;
    u16 _944;
    u8 pad_946[0x948 - 0x946];
    u32 _948;
    u8 pad_94c[0xb4c - 0x94c];
    u32 _b4c;
};
SINGLETON_DECL(ObjEngine);

#endif  // BATTLE_OBJ_ENGINE
