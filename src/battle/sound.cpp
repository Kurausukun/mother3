#include "battle/sound.h"
#include "battle/clock.h"

extern u16 gUnknown_02001F28[];
extern u16 gSongCount;

extern "C" s32 Div(s32, s32);

Sound::Sound() {
    idx = 0;
    player = 0;
    tempo = 100;
    volume = 100;
    pan = 0;
    time = 0;
    setup(0);
}

Sound::Sound(u16 arg1) {
    idx = 0;
    player = 0;
    tempo = 100;
    volume = 100;
    pan = 0;
    time = 0;
    setup(arg1);
}

Sound::~Sound() {}

bool Sound::setup(u16 song) {
    if (song >= SONG_COUNT) {
        idx = 0;
        return false;
    }

    if (song != 0) {
        idx = song;
        player = &gMPlayTable[gSongTable[song].ms];
        player->info->clock = 0;

        setTempo(0x64);
        setVolume(0x64);
        setPan(0);

        return true;
    }

    return false;
}

void Sound::play(s32 fade) {
    if (!idx)
        return;

    time = ClockManager::get()->getTime();
    player->info->clock = 0;

    if (fade <= 0) {
        m4aSongNumStart(idx);
    } else {
        m4aSongNumStart(idx);
        m4aMPlayImmInit(player->info);
        m4aMPlayVolumeControl(player->info, TRACKS_ALL, 0);
        MPlayStop(player->info);
        m4aMPlayFadeIn(player->info, fixFade(fade));
    }

    gUnknown_02001F28[player - gMPlayTable] = idx;
}

void Sound::stop(s32 fade) {
    if (!idx)
        return;

    if (fade <= 0) {
        MPlayStop(player->info);
        return;
    }

    m4aMPlayFadeOutTemporarily(player->info, fixFade(fade));
}

void Sound::continue_play(s32 fade) {
    if (!idx)
        return;

    if (fade <= 0) {
        m4aMPlayContinue(player->info);
        return;
    }

    m4aMPlayFadeIn(player->info, fixFade(fade));
}

void Sound::clear(s32 fade) {
    if (!idx)
        return;

    if (fade <= 0) {
        MPlayStop(player->info);
    } else {
        m4aMPlayFadeOutTemporarily(player->info, fixFade(fade));
    }

    gUnknown_02001F28[player - gMPlayTable] = 0;
}

bool Sound::isPlaying() {
    if ((!idx) || (gUnknown_02001F28[player - gMPlayTable] != idx))
        return false;

    return (player->info->status >> 0x1F) ^ 1;
}

bool Sound::sound_1f8() {
    if (!idx)
        return 0;

    if (gUnknown_02001F28[player - gMPlayTable] == idx) {
        if ((s32)player->info->status < 0 &&
            (player->info->status & MUSICPLAYER_STATUS_TRACK) != 0) {
            return true;
        }
    }

    return false;
}

bool Sound::sound_250() {
    if (idx == 0)
        return true;

    if (gUnknown_02001F28[player - gMPlayTable] == idx &&
        (player->info->status & 0x8000FFFF) != MUSICPLAYER_STATUS_PAUSE) {
        return false;
    }

    return true;
}

s32 Sound::fixFade(s32 fade) {
    if (fade < 0) {
        fade += 0xF;
    }
    fade = fade >> 4;
    s32 new_fade = 1;
    if (new_fade < fade) {
        new_fade = fade;
    }
    return new_fade;
}

void Sound::setTempo(s32 new_tempo) {
    if (!idx)
        return;

    tempo = new_tempo;
    m4aMPlayTempoControl(player->info, Div(new_tempo << 8, 0x64));
}

void Sound::setVolume(s32 new_volume) {
    if (!idx)
        return;

    volume = new_volume;
    m4aMPlayVolumeControl(player->info, TRACKS_ALL, Div(new_volume << 8, 0x64));
}

void Sound::setPan(s32 new_pan) {
    if (!idx)
        return;

    pan = new_pan;
    m4aMPlayPanpotControl(player->info, TRACKS_ALL, Div(pan << 8, 0x64));
}

u16 Sound::getIndex() {
    return idx;
}

u32 Sound::getTempo() {
    return tempo;
}

u32 Sound::getVolume() {
    return volume;
}

s8 Sound::getPan() {
    return pan;
}

u32 Sound::getTimestamp() {
    return ClockManager::get()->getTime() - time;
}

u32 Sound::getPlayerClock() {
    return (idx == 0) ? 0 : player->info->clock;
}