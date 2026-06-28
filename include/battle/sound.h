#ifndef BATTLE_SOUND_H
#define BATTLE_SOUND_H

#include "base.h"
#include "m4a.h"

class Sound : public Base {
public:    
    Sound();
    Sound(u16);
    virtual ~Sound();

    virtual bool setup(u16);
    virtual void play(s32);
    virtual void stop(s32);
    virtual void continue_play(s32);
    virtual void clear(s32);
    virtual bool isPlaying();
    virtual bool sound_1f8();
    virtual bool sound_250();
    virtual void setTempo(s32);
    virtual void setVolume(s32);
    virtual void setPan(s32);
    virtual u16 getIndex();
    virtual u32 getTempo();
    virtual u32 getVolume();
    virtual s8 getPan();
    virtual u32 getTimestamp();
    virtual u32 getPlayerClock();
    
    s32 fixFade(s32);

private:
    u16 idx;
    const MusicPlayer* player;
    u32 tempo;
    u32 volume;
    s8 pan;
    u32 time;
};

#endif // BATTLE_SOUND_H