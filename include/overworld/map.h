#ifndef MAP_H
#define MAP_H

#ifdef __cplusplus
extern "C" {
#endif

#include "structs.h"

typedef struct Minitile {
    u8 tile : 6;
    u8 hflip : 1;
    u8 vflip : 1;
} Minitile;

typedef struct MetatileFlags {
    u32 _0 : 10;
    u32 dir : 3;
    u32 _d : 3;
    u32 minitilesVisible : 4;
    u32 _14 : 3;
    u32 speed : 3;
    u32 _1a : 6;
} MetatileFlags;

typedef struct Metatile {
    union {
        u32 flags_u32;
        MetatileFlags flags;
    };
    u8 minitiles[4];
} Metatile;

typedef struct MapCell {
    u16 metatile : 6;
    u16 tileset : 4;
    u16 palette : 4;
    u16 hflip : 1;
    u16 vflip : 1;
} MapCell;

typedef struct MapLayerDimensions {
    u8 width : 3;    // width in Chunks (16 tiles/256px)
    u8 height : 3;   // height in Chunks (16 tiles/256px)
    u8 unk : 2;
    u8 unk1[3];
} MapLayerDimensions;

typedef struct MapLayersInfo {
    u32 blendMode : 2;
    u32 alpha1 : 4;
    u32 alpha2 : 4;
    u32 bldy : 4;
    u32 target1Bg1 : 1;
    u32 target1Bg2 : 1;
    u32 target1Bg3 : 1;
    u32 target1Obj : 1;
    u32 target2Bg1 : 1;
    u32 target2Bg2 : 1;
    u32 target2Bg3 : 1;
    u32 target2Obj : 1;
    u32 mainLayer : 2;
    u32 _3_1 : 1;
    u32 _3_2 : 7;
    u8 _4;
    s8 _5_1 : 3;
    s8 _5_8 : 1;
    u8 _5_10 : 4;
    u8 _6[2];
    s16 _8[4];
    MapLayerDimensions dims[3];
} MapLayersInfo;

typedef struct MapGfxPalInfo {
    s16 tileSetIndices[12];
    s16 paletteIndex;
} MapGfxPalInfo;

typedef struct DoorDestinationInfo {
    u8 _0;
    u8 collsionEnabled;
    u16 _2;
    u16 mapID;
    u8 xPos;
    u8 yPos;
} DoorDestinationInfo;

typedef struct BgLayerState {
    Vector2u _0;
    s16 _4;
    s16 _6;
    u16 _8;
    u16 _a;
    u16 _c;
    u16 _e;
    Rectangle _10;
    u8 _18[0x34 - 0x18];
    u8 _34;
    u8 _35_1 : 1;
    u8 _35_2 : 7;
    u8 _36[0x38 - 0x36];
} BgLayerState;

extern const char gMapPalettes;
extern const char gCompressedMapMetatileData;
extern const char gCompressedMapCellData;
extern const char gMapGraphicsTable;
extern const MapGfxPalInfo gMapGfxPalInfoTable;
extern const MapLayersInfo gMapLayersInfoTable;
extern const char gMapDoorHotspotTable;
extern const char gObjectData;
extern const char gGiftBoxTable;
extern const u8 gMapMusicTable[0x3E8];
extern const DoorDestinationInfo gDoorDestinationTable[];
extern u8 gMapCellMinitileOrder_HVFlipped[4];
extern u8 gMapCellMinitileOrder_HFlipped[4];
extern u8 gMapCellMinitileOrder_VFlipped[4];
extern u8 gMapCellMinitileOrder_Default[4];
extern Metatile gUnknown_02000038;
extern Metatile gDefaultMetatile;
extern MapCell gDefaultMapCell;

void sub_0801A548(u16, Vector2u*);
void sub_0801A594(u16, Vector2u*);
u16 getMapLayerWidthInPixels(u16);
u16 getMapLayerHeightInPixels(u16);
Metatile* getMetatileFromTileset(u16 tileset, u16 index);
u8* mapCellGetMinitileIndexOrder(MapCell* cell);
void sub_0801A238(s32, Vector2i*);
u16 mapCellGetMinitileIndex(MapCell*, u16);
u16 getMapLayerHeightInChunks(u16);
u16 getMapLayerWidthInChunks(u16);
u16 sub_0801AA70(u16, Vector2i*);
const MapLayersInfo* getMapLayersInfo(u16);
const MapGfxPalInfo* getMapGfxPalInfo(u16);
const void* getMapGraphics(u16);
const void* getMapPaletteTable(u16);
const void* getCompressedMapCellData(u16);
const void* getCompressedMapMetatileData(u16);
const void* getMapDoorsHotspots(u16, u16);
const void* getMapObjectData(u16);
void* getGiftBoxData(u16);
DoorDestinationInfo* getDoorDestinationInfo(u16);

#ifdef __cplusplus
}
#endif

#endif  // MAP_H