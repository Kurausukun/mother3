#ifndef BATTLE_MONSTER_H
#define BATTLE_MONSTER_H

#include "global.h"
#include "battle/unit.h"

struct Monster;

struct MonsterDrop {
    u8 id;
    u8 chance;
    u16 unk;
};

struct MonsterStats {
    u8 offense;
    u8 defense;
    u8 iq;
    u8 speed;
    u8 kindness;
};

struct MonsterData {
    u32 id;
    u32 smell;
    u16 overworld_sfx;
    u8 battle_bg;
    u16 encounter_bgm;
    u16 battle_bgm;
    u16 win_bgm;
    u8 level;
    u32 hp;
    s16 pp;
    MonsterStats stats[2];
    u16 weaknesses[15];
    u16 elem_weaknesses[5];
    u16 skills[8];
    u16 attack_sfx;
    u8 encounter_msg;
    u8 death_msg;
    u8 death_anim;
    u32 battle_pos;
    u8 memory_height[2];
    u8 battle_height[2];
    u8 memory_back_sprite;
    u8 battle_back_sprite;
    u16 death_anim_last;
    MonsterDrop drops[3];
    u32 experience;
    u32 money;
    u16 smell_weaknesses[2];
};

struct struct_08063998 {
    struct_08063998();
    virtual ~struct_08063998();

    u32 a;
};

struct BattleSprite : public Base {
    BattleSprite(Monster*);
    virtual ~BattleSprite();

    u8 filler[0xa8];
};

class Monster : public Unit {
public:
    Monster();
    Monster(u16 idx, u16 id);
    virtual ~Monster();

    virtual void* getRTTI();

    virtual void monster_2c0();
    virtual void monster_2c8();
    virtual void monster_2d0();
    virtual void monster_2d8();
    virtual void monster_2e0();
    virtual void monster_2e8();
    virtual void monster_2f0();
    virtual void monster_2f8();
    virtual void monster_300(bool);
    virtual void monster_308();
    virtual u8 monster_310();
    virtual s32 monster_318();
    virtual void monster_320();
    virtual void monster_328();
    virtual Msg monster_330();
    virtual void monster_338();
    virtual void monster_340();
    virtual u32 type();
    virtual u32 monster_350();
    virtual void monster_358();
    virtual void monster_360();
    virtual void monster_368();
    virtual void monster_370();
    virtual void monster_378();
    virtual bool monster_380();
    virtual void monster_388();
    virtual void monster_390();
    virtual void monster_398();
    virtual void addDrop(u32 a, u32 b);

    static s32 maxDrops() { return 3; }

    void resetStats();
    void resetRewards();
    void sub_08080D48();

    u16 mIdx;
    u16 mID;
    MonsterData* mData;
    u32 mUseAltStats;
    u32 mHPCopy;
    Msg _108;
    u16 mDeathAnim;
    u32 mExperience;
    u32 _11c;
    u32 _120;
    u32 _124;
    u32 _128;
    u32 mMoney;
    u16 _130;
    struct_08063998 _134;
    BattleSprite* mSprite;

    enum {
        None = 0x0,
        ReconstructedCaribou = 0x1,
        MrPassion = 0x2,
        OhSoSnake = 0x3,
        Clayman = 0x4,
        MechaDrago = 0x5,
        PorkTank = 0x6,
        MrGenerator = 0x7,
        MoleCricket1st = 0x8,
        EerieSmile1st = 0x9,
        BrightSmile = 0xA,
        Porky = 0xB,
        NaturalKillerCyborg = 0xC,
        MaskedMan1st = 0xD,
        WomanizingPigMask1st = 0xE,
        WomanizingPigMask2nd = 0xF,
        JealousBass = 0x10,
        AbsolutelySafeCapsule = 0x11,
        SlimySlug = 0x12,
        Porky02 = 0x13,
        KingStatue = 0x14,
        HippoLauncher1st = 0x15,
        NewFassad = 0x16,
        EerieSmile2nd = 0x17,
        LordPassion = 0x18,
        TLCTree = 0x19,
        Porky03 = 0x1A,
        Porky08 = 0x1B,
        MiracleFassad = 0x1C,
        PorkColonel = 0x1D,
        GreatAntlion1st = 0x1E,
        Phenomenon = 0x1F,
        RhinoBooster = 0x20,
        ScaredyBot = 0x21,
        MrSqueaks = 0x22,
        Blazefly = 0x23,
        MechaLion = 0x24,
        Barricade = 0x25,
        QuickShroom = 0x26,
        DBirdstick = 0x27,
        TopDogfish = 0x28,
        MrBatty = 0x29,
        GreedyMouse = 0x2A,
        Firefly = 0x2B,
        Yammomonster = 0x2C,
        FlyingMouse = 0x2D,
        Porky01 = 0x2E,
        AgitatedBoar = 0x2F,
        ChompSnake = 0x30,
        SootDumpling = 0x31,
        BakedYammomonster = 0x32,
        WalkingBushy = 0x33,
        CFJellyfish = 0x34,
        MetalMonkey = 0x35,
        CragLizard = 0x36,
        PotatoBug = 0x37,
        TenYeti = 0x38,
        ChillyDog = 0x39,
        StickySlug = 0x3A,
        Minerali = 0x3B,
        RamblinShroom = 0x3C,
        MoleCricket2nd = 0x3D,
        BoaTransistor = 0x3E,
        MischeviousMole = 0x3F,
        MechaMole = 0x40,
        BaldingEagle = 0x41,
        Tree = 0x42,
        Titany = 0x43,
        FrostedBun = 0x44,
        MrsLava = 0x45,
        Hothead = 0x46,
        ZombieMan = 0x47,
        ZombieDog = 0x48,
        LostSpirit = 0x49,
        MobileGrave = 0x4A,
        DetachedLeech = 0x4B,
        RedLobster = 0x4C,
        HugePillbug = 0x4D,
        CheeryBones = 0x4E,
        BigBro = 0x4F,
        BarrelMan = 0x50,
        BerrySlime = 0x51,
        Arachnid = 0x52,
        AttackRoach = 0x53,
        BarrierTrio = 0x54,
        GhostArmor = 0x55,
        GhostSword = 0x56,
        GhostShield = 0x57,
        GhostKnight = 0x58,
        OshoeCape = 0x59,
        RockingGhost = 0x5A,
        Pseudoor = 0x5B,
        EerieSmile3rd = 0x5C,
        DungBeetle = 0x5D,
        GreatAntlion2nd = 0x5E,
        SaraSahara = 0x5F,
        SandLizard = 0x60,
        CactusWolf = 0x61,
        StickyGlop = 0x62,
        MummyCat = 0x63,
        LilBigBro = 0x64,
        Zombieshroom = 0x65,
        StinkyGhost = 0x66,
        ArtsyGhost = 0x67,
        Horsantula = 0x68,
        Pigtunia = 0x69,
        Birdstick = 0x6A,
        PutridMoldyman = 0x6B,
        Slitherhen = 0x6C,
        Whatever = 0x6D,
        Dogfish = 0x6E,
        Cattlesnake = 0x6F,
        Porkmind = 0x70,
        Mantis = 0x71,
        Dragonfly = 0x72,
        FoulAttackRoach = 0x73,
        Muttshroom = 0x74,
        MechaTurtle = 0x75,
        BroTeam = 0x76,
        Batangutan = 0x77,
        Ostrelephant = 0x78,
        SkyTitany = 0x79,
        Monkalrus = 0x7A,
        ParentKangashark = 0x7B,
        MissMarshmallow = 0x7C,
        AlmostMechaLion = 0x7D,
        RhinoRhocket = 0x7E,
        WoundupBear = 0x7F,
        MetalRoach = 0x80,
        SoaringMouse = 0x81,
        ShortCircuitZap = 0x82,
        MinorRobo = 0x83,
        LoveWalker = 0x84,
        EerieSmile4th = 0x85,
        AtomicRobot = 0x86,
        NuclearRobot = 0x87,
        NegativeMan = 0x88,
        Egghead = 0x89,
        NicePose = 0x8A,
        BlackPotatoBug = 0x8B,
        GratedYammomonster = 0x8C,
        HippoLauncher2nd = 0x8D,
        SteelGorilla = 0x8E,
        Zombidillo = 0x8F,
        FishRoeMan = 0x90,
        Porky07 = 0x91,
        OctobotAgain = 0x92,
        CarpetMonster = 0x93,
        ReconMech = 0x94,
        PorkSoldier = 0x95,
        ZombieLady = 0x96,
        BadShroom = 0x97,
        ElderBatty = 0x98,
        ArachnidEx = 0x99,
        GreedierMouse = 0x9A,
        WailingGuitar = 0x9B,
        BeatenDrum = 0x9C,
        ReconstructedMole = 0x9D,
        ReconstructedLion = 0x9E,
        WobblyRobo = 0x9F,
        MensRoomSign = 0xA0,
        ScrapRobo = 0xA1,
        SadJunkHeap = 0xA2,
        SurpriseBox = 0xA3,
        BatteryMan = 0xA4,
        Screwloose = 0xA5,
        HuggyBomb = 0xA6,
        Caterdog = 0xA7,
        AlkalineMan = 0xA8,
        Porky06 = 0xA9,
        PorkLieutenant = 0xAA,
        PorkColonel2nd = 0xAB,
        PorkCommander = 0xAC,
        NavySqueal = 0xAD,
        MasterEddy = 0xAE,
        RockLobster = 0xAF,
        RoundFish = 0xB0,
        BlueBaldingEagle = 0xB1,
        SecurityRobo = 0xB2,
        BotherWind = 0xB3,
        Porky09 = 0xB4,
        Porky10 = 0xB5,
        Titanian = 0xB6,
        UpgradedRobo = 0xB7,
        Beanling = 0xB8,
        BlackBeanling = 0xB9,
        TinyForest = 0xBA,
        Porky04 = 0xBB,
        Porky05 = 0xBC,
        MaskedMan2nd = 0xBD,
        MaskedMan3rd = 0xBE,
    };
};

struct MonsterType {
    enum {
        Animal = 0x0,
        Bug = 0x1,
        BiologicalChimera = 0x2,
        MechanicalChimera = 0x3,
        Mechanical = 0x4,
        Ghost = 0x5,
        Zombie = 0x6,
        Person = 0x7,
        StrangeCreature = 0x8,
        SomethingElse = 0x9,
    };
};

RTTI(Monster);

#endif // BATTLE_MONSTER_H
