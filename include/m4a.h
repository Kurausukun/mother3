#ifndef GUARD_M4A_H
#define GUARD_M4A_H

#ifdef __cplusplus
extern "C" {
#endif

#include "gba/m4a_internal.h"

#define SONG_COUNT ((u16)&gSongCount)

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16 n);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayContinue(struct MusicPlayerInfo* mplayInfo);
void m4aMPlayFadeOut(struct MusicPlayerInfo* mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MusicPlayerInfo* mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MusicPlayerInfo* mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MusicPlayerInfo* mplayInfo);

void m4aMPlayTempoControl(struct MusicPlayerInfo* mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MusicPlayerInfo* mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MusicPlayerInfo* mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MusicPlayerInfo* mplayInfo, u16 trackBits, s8 pan);

extern struct MusicPlayerInfo gMPlayInfo_Player1;
extern struct MusicPlayerInfo gMPlayInfo_Player2;
extern struct MusicPlayerInfo gMPlayInfo_Player3;
extern struct MusicPlayerInfo gMPlayInfo_Player4;
extern struct MusicPlayerInfo gMPlayInfo_Player5;
extern struct MusicPlayerInfo gMPlayInfo_Player6;
extern struct MusicPlayerInfo gMPlayInfo_Player7;
extern struct MusicPlayerInfo gMPlayInfo_Player8;
extern struct MusicPlayerInfo gMPlayInfo_Player9;
extern struct MusicPlayerInfo gMPlayInfo_Player10;

#ifdef __cplusplus
}
#endif

#endif  // GUARD_M4A_H
