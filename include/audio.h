#ifndef AUDIO_H
#define AUDIO_H

#ifdef __cplusplus
extern "C" {
#endif

#include "gba/m4a_internal.h"
#include "global.h"
#include "structs.h"

void init_audio();
void snd_restart();
void snd_vsync();
void snd_main();
void snd_vsync_on();
void snd_vsync_off();
void startSong_battle(u16);
void startSong(u16);
void startSong_alt(u16);
void play_sound(u16);
void musicPlayerFadeInIfPaused_bgm(u16, u16);
void musicPlayerFadeIn_bgm(u16, u16);
void musicPlayerFadeOutTemp_bgm(u16, u16);
void musicPlayerFadeIn_sfx(u16, u16);
void musicPlayerFadeOut_sfx(u16, u16);
void musicPlayerStop_bgm(u16);
void musicPlayerStop_sfx(u16);
void musicPlayerPause_bgm(u16);
void musicPlayerContinue_bgm(u16);
void musicPlayerUpdateVolume(u16, u16);
void musicPlayerInitAndUpdateVolume(u16, u16);
void musicPlayerSetPanpotClamped(u16, s16);
s16 getCurrentTrack(u16);
s16 getPrevTrack(u16);
u16 getMusicPlayerVolumePercent(u16);
s32 isMusicPlayerPlaying_bgm(u16);
s16 getMusicPlayerIndex(u16);
MusicPlayerInfo* getMusicPlayer_bgm(u16);
MusicPlayerInfo* getMusicPlayer_sfx(u16);
u16 percentToMPlayVolume(u16);
u16 MPlayVolumeToPercent(u16);
void storeMusicPlayerVolumes();
void retrieveMusicPlayerVolumes();
void setup_overworld_music(u16, s16);
void sub_08008704(u16, s16);
void sub_0800882C();
u8 getMusicIDForRoom(u16);
// code_08021920
void sub_08027AE0();
void sub_08027B84(u16, u16, u16, u16);
void sub_08027BD0(u16, s16, s16, u16);
void sub_08027C20(u16, u16, u16);
void sub_08027C40(SoundUnkInfo*);
void sub_08027C98(SoundUnkInfo*);
void sub_08027CD8(SoundUnkInfo*);
void sub_08027D1C(SoundUnkInfo*);
// code_0803D59C
void sub_080401BC();

#ifdef __cplusplus
}
#endif

#endif
