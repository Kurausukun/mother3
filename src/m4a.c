#include "gba/m4a_internal.h"
#include "global.h"

extern const u8 gCgb3Vol[];

extern ALIGNED(4) char SoundMainRAM_Buffer[0x400];

extern struct SoundInfo gSoundInfo;

u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust)
{
    u32 val1;
    u32 val2;
    u32 fineAdjustShifted = fineAdjust << 24;

    if (key > 178)
    {
        key = 178;
        fineAdjustShifted = 255 << 24;
    }
    val1 = gScaleTable[key];
    val1 = gFreqTable[val1 & 0xF] >> (val1 >> 4);
    val2 = gScaleTable[key + 1];
    val2 = gFreqTable[val2 & 0xF] >> (val2 >> 4);
    return umul3232H32(wav->freq, val1 + umul3232H32(val2 - val1, fineAdjustShifted));
}

void sub_0808F950(void) {}

void MPlayContinue(struct MusicPlayerInfo *mplayInfo)
{
    if (mplayInfo->ident == ID_NUMBER)
    {
        ++mplayInfo->ident;
        mplayInfo->status &= ~MUSICPLAYER_STATUS_PAUSE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void MPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed)
{
    if (mplayInfo->ident == ID_NUMBER)
    {
        ++mplayInfo->ident;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT);
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aSoundInit(void)
{
    s32 i;

#if DEBUG
    return;
#endif

    CpuCopy32((void *)((s32)SoundMainRAM & ~1), SoundMainRAM_Buffer, sizeof(SoundMainRAM_Buffer));
    SoundInit(&gSoundInfo);
    MPlayExtender(gCgbChans);
    m4aSoundMode(SOUND_MODE_DA_BIT_8
               | SOUND_MODE_FREQ_15768
               | (15 << SOUND_MODE_MASVOL_SHIFT)
               | (12 << SOUND_MODE_MAXCHN_SHIFT));
    for (i = 0; i < NUM_MUSIC_PLAYERS; ++i)
    {
        struct MusicPlayerInfo *mplayInfo = gMPlayTable[i].info;

        MPlayOpen(mplayInfo, gMPlayTable[i].track, gMPlayTable[i].unk_8);
        mplayInfo->unk_B = gMPlayTable[i].unk_A;
        mplayInfo->memAccArea = gMPlayMemAccArea;
    }
}

void m4aSoundMain(void)
{
    SoundMain();
}

void m4aSongNumStart(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    MPlayStart(mplay->info, song->header);
}

void m4aSongNumStartOrChange(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader != song->header)
    {
        MPlayStart(mplay->info, song->header);
    }
    else
    {
        if ((mplay->info->status & MUSICPLAYER_STATUS_TRACK) == 0
         || (mplay->info->status & MUSICPLAYER_STATUS_PAUSE))
        {
            MPlayStart(mplay->info, song->header);
        }
    }
}

void m4aSongNumStartOrContinue(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader != song->header)
        MPlayStart(mplay->info, song->header);
    else if ((mplay->info->status & MUSICPLAYER_STATUS_TRACK) == 0)
        MPlayStart(mplay->info, song->header);
    else if (mplay->info->status & MUSICPLAYER_STATUS_PAUSE)
        MPlayContinue(mplay->info);
}

void m4aSongNumStop(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader == song->header)
        MPlayStop(mplay->info);
}

void m4aSongNumContinue(u16 n)
{
    const struct MusicPlayer *mplayTable = gMPlayTable;
    const struct Song *songTable = gSongTable;
    const struct Song *song = &songTable[n];
    const struct MusicPlayer *mplay = &mplayTable[song->ms];

    if (mplay->info->songHeader == song->header)
        MPlayContinue(mplay->info);
}

void m4aMPlayAllStop(void)
{
    s32 i;

    for (i = 0; i < NUM_MUSIC_PLAYERS; ++i)
        MPlayStop(gMPlayTable[i].info);
}

void m4aMPlayContinue(struct MusicPlayerInfo *mplayInfo)
{
    MPlayContinue(mplayInfo);
}

void m4aMPlayAllContinue(void)
{
    s32 i;

    for (i = 0; i < NUM_MUSIC_PLAYERS; ++i)
        MPlayContinue(gMPlayTable[i].info);
}

void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed)
{
    MPlayFadeOut(mplayInfo, speed);
}

void m4aMPlayFadeOutTemporarily(struct MusicPlayerInfo *mplayInfo, u16 speed)
{
    if (mplayInfo->ident == ID_NUMBER)
    {
        ++mplayInfo->ident;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT) | TEMPORARY_FADE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayFadeIn(struct MusicPlayerInfo *mplayInfo, u16 speed)
{
    if (mplayInfo->ident == ID_NUMBER)
    {
        ++mplayInfo->ident;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (0 << FADE_VOL_SHIFT) | FADE_IN;
        mplayInfo->status &= ~MUSICPLAYER_STATUS_PAUSE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayImmInit(struct MusicPlayerInfo *mplayInfo)
{
    if (mplayInfo->ident == ID_NUMBER && ++mplayInfo->ident) {
        s32 trackCount = mplayInfo->trackCount;
        struct MusicPlayerTrack *track = mplayInfo->tracks;

        while (trackCount > 0)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                if (track->flags & MPT_FLG_START)
                {
                    Clear64byte(track);
                    track->flags = MPT_FLG_EXIST;
                    track->bendRange = 2;
                    track->volX = 64;
                    track->lfoSpeed = 22;
                    track->tone.type = 1;
                }
            }

            --trackCount;
            ++track;
        }
        mplayInfo->ident = ID_NUMBER;
    }
}

void MPlayExtender(struct CgbChannel *cgbChans)
{
    struct SoundInfo *soundInfo;
    u32 ident;

    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE
                   | SOUND_4_ON
                   | SOUND_3_ON
                   | SOUND_2_ON
                   | SOUND_1_ON;
    REG_SOUNDCNT_L = 0; // set master volume to zero
    REG_NR12 = 0x8;
    REG_NR22 = 0x8;
    REG_NR42 = 0x8;
    REG_NR14 = 0x80;
    REG_NR24 = 0x80;
    REG_NR44 = 0x80;
    REG_NR30 = 0;
    REG_NR50 = 0x77;

    soundInfo = SOUND_INFO_PTR;

    ident = soundInfo->ident;

    if (ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    gMPlayJumpTable[8] = ply_memacc;
    gMPlayJumpTable[17] = ply_lfos;
    gMPlayJumpTable[19] = ply_mod;
    gMPlayJumpTable[28] = ply_xcmd;
    gMPlayJumpTable[29] = ply_endtie;
    gMPlayJumpTable[30] = SampleFreqSet;
    gMPlayJumpTable[31] = TrackStop;
    gMPlayJumpTable[32] = FadeOutBody;
    gMPlayJumpTable[33] = TrkVolPitSet;

    soundInfo->cgbChans = (struct CgbChannel *)cgbChans;
    soundInfo->CgbSound = CgbSound;
    soundInfo->CgbOscOff = CgbOscOff;
    soundInfo->MidiKeyToCgbFreq = MidiKeyToCgbFreq;
    soundInfo->maxLines = MAX_LINES;

    CpuFill32(0, cgbChans, sizeof(struct CgbChannel) * 4);

    cgbChans[0].ty = 1;
    cgbChans[0].panMask = 0x11;
    cgbChans[1].ty = 2;
    cgbChans[1].panMask = 0x22;
    cgbChans[2].ty = 3;
    cgbChans[2].panMask = 0x44;
    cgbChans[3].ty = 4;
    cgbChans[3].panMask = 0x88;

    soundInfo->ident = ident;
}

void MusicPlayerJumpTableCopy(void)
{
    asm("swi 0x2A");
}

void ClearChain(void *x)
{
    void (*func)(void *) = *(&gMPlayJumpTable[34]);
    func(x);
}

void Clear64byte(void *x)
{
    void (*func)(void *) = *(&gMPlayJumpTable[35]);
    func(x);
}

void SoundInit(struct SoundInfo *soundInfo)
{
    soundInfo->ident = 0;

    if (REG_DMA1CNT & (DMA_REPEAT << 16))
        REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

    if (REG_DMA2CNT & (DMA_REPEAT << 16))
        REG_DMA2CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

    REG_DMA1CNT_H = DMA_32BIT;
    REG_DMA2CNT_H = DMA_32BIT;
    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE
                   | SOUND_4_ON
                   | SOUND_3_ON
                   | SOUND_2_ON
                   | SOUND_1_ON;
    REG_SOUNDCNT_H = SOUND_B_FIFO_RESET | SOUND_B_TIMER_0 | SOUND_B_LEFT_OUTPUT
                   | SOUND_A_FIFO_RESET | SOUND_A_TIMER_0 | SOUND_A_RIGHT_OUTPUT
                   | SOUND_ALL_MIX_FULL;
    REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | 0x40;

    REG_DMA1SAD = (s32)soundInfo->pcmBuffer;
    REG_DMA1DAD = (s32)&REG_FIFO_A;
    REG_DMA2SAD = (s32)soundInfo->pcmBuffer + PCM_DMA_BUF_SIZE;
    REG_DMA2DAD = (s32)&REG_FIFO_B;

    SOUND_INFO_PTR = soundInfo;
    CpuFill32(0, soundInfo, sizeof(struct SoundInfo));

    soundInfo->maxChans = 8;
    soundInfo->masterVolume = 15;
    soundInfo->plynote = (u32)ply_note;
    soundInfo->CgbSound = DummyFunc;
    soundInfo->CgbOscOff = (void (*)(u8))DummyFunc;
    soundInfo->MidiKeyToCgbFreq = (u32 (*)(u8, u8, u8))DummyFunc;
    soundInfo->ExtVolPit = (u32)DummyFunc;

    MPlayJumpTableCopy(gMPlayJumpTable);

    soundInfo->MPlayJumpTable = (u32)gMPlayJumpTable;

    SampleFreqSet(SOUND_MODE_FREQ_13379);

    soundInfo->ident = ID_NUMBER;
}

void SampleFreqSet(u32 freq)
{
    struct SoundInfo *soundInfo;

    m4aSoundVSyncOff();

    soundInfo = SOUND_INFO_PTR;

    freq = (freq & 0xF0000) >> 16;
    soundInfo->freq = freq;
    soundInfo->pcmSamplesPerVBlank = gPcmSamplesPerVBlankTable[freq - 1];
    soundInfo->pcmDmaPeriod = PCM_DMA_BUF_SIZE / soundInfo->pcmSamplesPerVBlank;

    // LCD refresh rate 59.7275Hz
    soundInfo->pcmFreq = (597275 * soundInfo->pcmSamplesPerVBlank + 5000) / 10000;

    // CPU frequency 16.78Mhz
    soundInfo->divFreq = (16777216 / soundInfo->pcmFreq + 1) >> 1;

    m4aSoundVSyncOn();
}

void m4aSoundMode(u32 mode)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    u32 temp;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    temp = mode & (SOUND_MODE_REVERB_SET | SOUND_MODE_REVERB_VAL);

    if (temp)
        soundInfo->reverb = temp & SOUND_MODE_REVERB_VAL;

    temp = mode & SOUND_MODE_MAXCHN;

    if (temp)
    {
        struct SoundChannel *chan;

        soundInfo->maxChans = temp >> SOUND_MODE_MAXCHN_SHIFT;

        temp = MAX_DIRECTSOUND_CHANNELS;
        chan = &soundInfo->chans[0];

        while (temp != 0)
        {
            chan->status = 0;
            temp--;
            chan++;
        }
    }

    temp = mode & SOUND_MODE_MASVOL;

    if (temp)
        soundInfo->masterVolume = temp >> SOUND_MODE_MASVOL_SHIFT;

    temp = mode & SOUND_MODE_DA_BIT;

    if (temp)
    {
        temp = (temp & 0x300000) >> 14;
        REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | temp;
    }

    temp = mode & SOUND_MODE_FREQ;

    if (temp)
    {
        SampleFreqSet(temp);
    }

    soundInfo->ident = ID_NUMBER;
}

void SoundClear(void)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    s32 i;
    void *chan;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    i = MAX_DIRECTSOUND_CHANNELS;
    chan = &soundInfo->chans[0];

    while (i > 0)
    {
        ((struct SoundChannel *)chan)->status = 0;
        i--;
        chan = (void *)((s32)chan + sizeof(struct SoundChannel));
    }

    chan = soundInfo->cgbChans;

    if (chan)
    {
        i = 1;

        while (i <= 4)
        {
            soundInfo->CgbOscOff(i);
            ((struct CgbChannel *)chan)->sf = 0;
            i++;
            chan = (void *)((s32)chan + sizeof(struct CgbChannel));
        }
    }

    soundInfo->ident = ID_NUMBER;
}

void m4aSoundVSyncOff(void)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident >= ID_NUMBER && soundInfo->ident <= ID_NUMBER + 1)
    {
        soundInfo->ident += 10;

        REG_TM0CNT_H = 0;

        if (REG_DMA1CNT & (DMA_REPEAT << 16))
            REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

        if (REG_DMA2CNT & (DMA_REPEAT << 16))
            REG_DMA2CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

        REG_DMA1CNT_H = DMA_32BIT;
        REG_DMA2CNT_H = DMA_32BIT;

        CpuFill32(0, soundInfo->pcmBuffer, sizeof(soundInfo->pcmBuffer));
    }
}

void m4aSoundVSyncOn(void)
{
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;
    u32 ident = soundInfo->ident;

    if (ident == ID_NUMBER)
        return;

    REG_DMA1CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;
    REG_DMA2CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;

    soundInfo->pcmDmaCounter = 0;
    soundInfo->ident = ident - 10;

    while (*(vu8 *)REG_ADDR_VCOUNT == 159)
        ;

    while (*(vu8 *)REG_ADDR_VCOUNT != 159)
        ;

    // cycles per LCD fresh 280896
    REG_TM0CNT_L = -(280896 / soundInfo->pcmSamplesPerVBlank);

    REG_TM0CNT_H = TIMER_ENABLE | TIMER_1CLK;
}

void m4aSoundVSync(void) {
    struct SoundInfo *soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident >= ID_NUMBER && soundInfo->ident <= ID_NUMBER + 1)
    {
        if (--(s8)soundInfo->pcmDmaCounter <= 0) {
            soundInfo->pcmDmaCounter = soundInfo->pcmDmaPeriod;

            if (REG_DMA1CNT & (DMA_REPEAT << 16))
                REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

            if (REG_DMA2CNT & (DMA_REPEAT << 16))
                REG_DMA2CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

            REG_DMA1CNT_H = DMA_32BIT;
            REG_DMA2CNT_H = DMA_32BIT;
            REG_DMA1CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;
            REG_DMA2CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;
        }
    }
}

void MPlayOpen(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *tracks, u8 trackCount)
{
    struct SoundInfo *soundInfo;

    if (trackCount == 0)
        return;

    if (trackCount > MAX_MUSICPLAYER_TRACKS)
        trackCount = MAX_MUSICPLAYER_TRACKS;

    soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    Clear64byte(mplayInfo);

    mplayInfo->tracks = tracks;
    mplayInfo->trackCount = trackCount;
    mplayInfo->status = MUSICPLAYER_STATUS_PAUSE;

    while (trackCount != 0)
    {
        tracks->flags = 0;
        trackCount--;
        tracks++;
    }

    if (soundInfo->func != 0)
    {
        mplayInfo->func = soundInfo->func;
        mplayInfo->intp = soundInfo->intp;
        soundInfo->func = 0;
    }

    soundInfo->intp = (u32)mplayInfo;
    soundInfo->func = (u32)MPlayMain;
    soundInfo->ident = ID_NUMBER;
    mplayInfo->ident = ID_NUMBER;
}

void MPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader)
{
    s32 i;
    u8 unk_B;
    struct MusicPlayerTrack *track;

#if DEBUG
    return;
#endif

    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;

        unk_B = mplayInfo->unk_B;

        if (!unk_B
            || ((!mplayInfo->songHeader || !(mplayInfo->tracks[0].flags & MPT_FLG_START))
                && ((mplayInfo->status & MUSICPLAYER_STATUS_TRACK) == 0
                    || (mplayInfo->status & MUSICPLAYER_STATUS_PAUSE)))
            || (mplayInfo->priority <= songHeader->priority))
        {
            mplayInfo->status = 0;
            mplayInfo->songHeader = songHeader;
            mplayInfo->tone = songHeader->tone;
            mplayInfo->priority = songHeader->priority;
            mplayInfo->clock = 0;
            mplayInfo->tempoD = 150;
            mplayInfo->tempoI = 150;
            mplayInfo->tempoU = 0x100;
            mplayInfo->tempoC = 0;
            mplayInfo->fadeOI = 0;

            i = 0;
            track = mplayInfo->tracks;

            while (i < songHeader->trackCount && i < mplayInfo->trackCount)
            {
                TrackStop(mplayInfo, track);
                track->flags = MPT_FLG_EXIST | MPT_FLG_START;
                track->chan = 0;
                track->cmdPtr = songHeader->part[i];
                i++;
                track++;
            }

            while (i < mplayInfo->trackCount)
            {
                TrackStop(mplayInfo, track);
                track->flags = 0;
                i++;
                track++;
            }

            if (songHeader->reverb & 0x80)
                m4aSoundMode(songHeader->reverb);

        }
        mplayInfo->ident = ID_NUMBER;
    }
}

void MPlayStop(struct MusicPlayerInfo *mplayInfo)
{
    s32 i;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;
    mplayInfo->status |= MUSICPLAYER_STATUS_PAUSE;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0)
    {
        TrackStop(mplayInfo, track);
        i--;
        track++;
    }

    mplayInfo->ident = ID_NUMBER;
}

void FadeOutBody(struct MusicPlayerInfo *mplayInfo)
{
    s32 i;
    struct MusicPlayerTrack *track;
    u16 fadeOI = mplayInfo->fadeOI;
    register u32 temp asm("r3");
    register u16 mask asm("r2");

    if (fadeOI == 0)
        return;

    mplayInfo->fadeOC--;

    temp = 0xFFFF;
    mask = temp;

    if (mplayInfo->fadeOC != 0)
        return;

    mplayInfo->fadeOC = fadeOI;

    if (mplayInfo->fadeOV & FADE_IN)
    {
        mplayInfo->fadeOV += (4 << FADE_VOL_SHIFT);

        if ((u16)(mplayInfo->fadeOV & mask) >= (64 << FADE_VOL_SHIFT))
        {
            mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT);
            mplayInfo->fadeOI = 0;
        }
    }
    else
    {
        mplayInfo->fadeOV -= (4 << FADE_VOL_SHIFT);

        if ((s16)(mplayInfo->fadeOV & mask) <= 0)
        {
            i = mplayInfo->trackCount;
            track = mplayInfo->tracks;

            while (i > 0)
            {
                register u32 fadeOV asm("r7");
                u32 val;

                TrackStop(mplayInfo, track);

                if (!(mplayInfo->fadeOV & TEMPORARY_FADE))
                    track->flags = 0;

                i--;
                track++;
            }

            if (mplayInfo->fadeOV & TEMPORARY_FADE)
                mplayInfo->status |= MUSICPLAYER_STATUS_PAUSE;
            else
                mplayInfo->status = MUSICPLAYER_STATUS_PAUSE;

            mplayInfo->fadeOI = 0;
            return;
        }
    }

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0)
    {
        if (track->flags & MPT_FLG_EXIST)
        {
            track->volX = (mplayInfo->fadeOV >> FADE_VOL_SHIFT);
            track->flags |= MPT_FLG_VOLCHG;
        }

        i--;
        track++;
    }
}

void TrkVolPitSet(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    if (track->flags & MPT_FLG_VOLSET)
    {
        s32 x;
        s32 y;

        x = (u32)(track->vol * track->volX) >> 5;

        if (track->modT == 1)
            x = (u32)(x * (track->modM + 128)) >> 7;

        y = 2 * track->pan + track->panX;

        if (track->modT == 2)
            y += track->modM;

        if (y < -128)
            y = -128;
        else if (y > 127)
            y = 127;

        track->volMR = (u32)((y + 128) * x) >> 8;
        track->volML = (u32)((127 - y) * x) >> 8;
    }

    if (track->flags & MPT_FLG_PITSET)
    {
        s32 bend = track->bend * track->bendRange;
        register s32 x asm("r1") = track->tune;
        x += bend;
        x *= 4;
        x += (track->keyShift << 8);
        x += (track->keyShiftX << 8);
        x += track->pitX;

        if (track->modT == 0)
            x += 16 * track->modM;

        track->keyM = x >> 8;
        track->pitM = x;
    }

    track->flags &= ~(MPT_FLG_PITSET | MPT_FLG_VOLSET);
}

u32 MidiKeyToCgbFreq(u8 chanNum, u8 key, u8 fineAdjust)
{
    if (chanNum == 4)
    {
        if (key <= 20)
        {
            key = 0;
        }
        else
        {
            key -= 21;
            if (key > 59)
                key = 59;
        }

        return gNoiseTable[key];
    }
    else
    {
        s32 val1;
        s32 val2;

        if (key <= 35)
        {
            fineAdjust = 0;
            key = 0;
        }
        else
        {
            key -= 36;
            if (key > 130)
            {
                key = 130;
                fineAdjust = 255;
            }
        }

        val1 = gCgbScaleTable[key];
        val1 = gCgbFreqTable[val1 & 0xF] >> (val1 >> 4);

        val2 = gCgbScaleTable[key + 1];
        val2 = gCgbFreqTable[val2 & 0xF] >> (val2 >> 4);

        return val1 + ((fineAdjust * (val2 - val1)) >> 8) + 2048;
    }
}

void CgbOscOff(u8 chanNum)
{
    switch (chanNum)
    {
    case 1:
        REG_NR12 = 8;
        REG_NR14 = 0x80;
        break;
    case 2:
        REG_NR22 = 8;
        REG_NR24 = 0x80;
        break;
    case 3:
        REG_NR30 = 0;
        break;
    default:
        REG_NR42 = 8;
        REG_NR44 = 0x80;
    }
}

static inline int CgbPan(struct CgbChannel *chan, u8 rightVolume, u8 leftVolume)
{
    if (rightVolume >= leftVolume)
    {
        if (rightVolume / 2 >= leftVolume)
        {
            chan->pan = 0x0F;
            return 1;
        }
    }
    else
    {
        if (leftVolume / 2 >= rightVolume)
        {
            chan->pan = 0xF0;
            return 1;
        }
    }

    return 0;
}

void CgbModVol(struct CgbChannel *chan)
{
    u32 r = chan->rightVolume;
    u32 l = chan->leftVolume;
    if (!CgbPan(chan, r, l))
    {
        chan->pan = 0xFF;
        chan->eg = ((chan->rightVolume + chan->leftVolume) & 0xFFFFFFFF) / 16;
    }
    else
    {
        chan->eg = ((chan->rightVolume + chan->leftVolume) & 0xFFFFFFFF) / 16;
        if (chan->eg > 15)
            chan->eg = 15;
    }

    chan->sg = (chan->eg * chan->su + 15) >> 4;
    chan->pan &= chan->panMask;
}

NAKED
void CgbSound(void) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x24\n\
	ldr r0, _08090620 @ =gUnknown_03007FF0\n\
	ldr r0, [r0]\n\
	str r0, [sp, #8]\n\
	ldrb r0, [r0, #0xa]\n\
	cmp r0, #0\n\
	beq _08090624\n\
	subs r0, #1\n\
	ldr r1, [sp, #8]\n\
	strb r0, [r1, #0xa]\n\
	b _0809062A\n\
	.align 2, 0\n\
_08090620: .4byte gUnknown_03007FF0\n\
_08090624:\n\
	movs r0, #0xe\n\
	ldr r3, [sp, #8]\n\
	strb r0, [r3, #0xa]\n\
_0809062A:\n\
	movs r6, #1\n\
	ldr r0, [sp, #8]\n\
	ldr r4, [r0, #0x1c]\n\
	mov r1, sp\n\
	str r1, [sp, #0x1c]\n\
_08090634:\n\
	ldrb r1, [r4]\n\
	movs r0, #0xc7\n\
	ands r0, r1\n\
	adds r3, r6, #1\n\
	mov sl, r3\n\
	movs r1, #0x40\n\
	adds r1, r1, r4\n\
	mov sb, r1\n\
	cmp r0, #0\n\
	bne _0809064A\n\
	b _08090A66\n\
_0809064A:\n\
	cmp r6, #2\n\
	beq _08090680\n\
	cmp r6, #2\n\
	bgt _08090658\n\
	cmp r6, #1\n\
	beq _0809065E\n\
	b _080906C8\n\
_08090658:\n\
	cmp r6, #3\n\
	beq _080906A4\n\
	b _080906C8\n\
_0809065E:\n\
	ldr r3, _08090674 @ =0x04000060\n\
	str r3, [sp, #0xc]\n\
	adds r3, #2\n\
	ldr r0, _08090678 @ =0x04000063\n\
	str r0, [sp, #0x10]\n\
	ldr r1, _0809067C @ =0x04000064\n\
	str r1, [sp, #0x14]\n\
	adds r0, #2\n\
	str r0, [sp, #0x18]\n\
	movs r0, #0\n\
	b _080906DC\n\
	.align 2, 0\n\
_08090674: .4byte 0x04000060\n\
_08090678: .4byte 0x04000063\n\
_0809067C: .4byte 0x04000064\n\
_08090680:\n\
	ldr r3, _08090698 @ =0x04000061\n\
	str r3, [sp, #0xc]\n\
	adds r3, #7\n\
	ldr r0, _0809069C @ =0x04000069\n\
	str r0, [sp, #0x10]\n\
	ldr r1, _080906A0 @ =0x0400006C\n\
	str r1, [sp, #0x14]\n\
	adds r0, #4\n\
	str r0, [sp, #0x18]\n\
	movs r0, #1\n\
	b _080906DC\n\
	.align 2, 0\n\
_08090698: .4byte 0x04000061\n\
_0809069C: .4byte 0x04000069\n\
_080906A0: .4byte 0x0400006C\n\
_080906A4:\n\
	ldr r3, _080906BC @ =0x04000070\n\
	str r3, [sp, #0xc]\n\
	adds r3, #2\n\
	ldr r0, _080906C0 @ =0x04000073\n\
	str r0, [sp, #0x10]\n\
	ldr r1, _080906C4 @ =0x04000074\n\
	str r1, [sp, #0x14]\n\
	adds r0, #2\n\
	str r0, [sp, #0x18]\n\
	movs r0, #2\n\
	b _080906DC\n\
	.align 2, 0\n\
_080906BC: .4byte 0x04000070\n\
_080906C0: .4byte 0x04000073\n\
_080906C4: .4byte 0x04000074\n\
_080906C8:\n\
	ldr r3, _08090730 @ =0x04000071\n\
	str r3, [sp, #0xc]\n\
	adds r3, #7\n\
	ldr r0, _08090734 @ =0x04000079\n\
	str r0, [sp, #0x10]\n\
	ldr r1, _08090738 @ =0x0400007C\n\
	str r1, [sp, #0x14]\n\
	adds r0, #4\n\
	str r0, [sp, #0x18]\n\
	movs r0, #3\n\
_080906DC:\n\
	ldr r1, [sp, #0x1c]\n\
	strb r0, [r1]\n\
	ldr r0, [sp, #8]\n\
	ldrb r0, [r0, #0xa]\n\
	str r0, [sp, #4]\n\
	ldr r1, [sp, #0x10]\n\
	ldrb r0, [r1]\n\
	mov r8, r0\n\
	ldrb r2, [r4]\n\
	movs r0, #0x80\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _080907D6\n\
	movs r7, #0x40\n\
	adds r0, r7, #0\n\
	ands r0, r2\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	adds r0, r6, #1\n\
	mov sl, r0\n\
	movs r1, #0x40\n\
	adds r1, r1, r4\n\
	mov sb, r1\n\
	cmp r5, #0\n\
	beq _08090710\n\
	b _0809080C\n\
_08090710:\n\
	movs r0, #3\n\
	strb r0, [r4]\n\
	strb r0, [r4, #0x1d]\n\
	adds r0, r4, #0\n\
	str r3, [sp, #0x20]\n\
	bl CgbModVol\n\
	ldr r3, [sp, #0x20]\n\
	cmp r6, #2\n\
	beq _08090748\n\
	cmp r6, #2\n\
	bgt _0809073C\n\
	cmp r6, #1\n\
	beq _08090742\n\
	b _0809079C\n\
	.align 2, 0\n\
_08090730: .4byte 0x04000071\n\
_08090734: .4byte 0x04000079\n\
_08090738: .4byte 0x0400007C\n\
_0809073C:\n\
	cmp r6, #3\n\
	beq _08090754\n\
	b _0809079C\n\
_08090742:\n\
	ldrb r0, [r4, #0x1f]\n\
	ldr r1, [sp, #0xc]\n\
	strb r0, [r1]\n\
_08090748:\n\
	ldr r0, [r4, #0x24]\n\
	lsls r0, r0, #6\n\
	ldrb r1, [r4, #0x1e]\n\
	adds r0, r0, r1\n\
	strb r0, [r3]\n\
	b _080907A8\n\
_08090754:\n\
	ldr r1, [r4, #0x24]\n\
	ldr r0, [r4, #0x28]\n\
	cmp r1, r0\n\
	beq _0809077C\n\
	ldr r0, [sp, #0xc]\n\
	strb r7, [r0]\n\
	ldr r1, _08090790 @ =0x04000090\n\
	ldr r2, [r4, #0x24]\n\
	ldr r0, [r2]\n\
	str r0, [r1]\n\
	adds r1, #4\n\
	ldr r0, [r2, #4]\n\
	str r0, [r1]\n\
	adds r1, #4\n\
	ldr r0, [r2, #8]\n\
	str r0, [r1]\n\
	adds r1, #4\n\
	ldr r0, [r2, #0xc]\n\
	str r0, [r1]\n\
	str r2, [r4, #0x28]\n\
_0809077C:\n\
	ldr r1, [sp, #0xc]\n\
	strb r5, [r1]\n\
	ldrb r0, [r4, #0x1e]\n\
	strb r0, [r3]\n\
	ldrb r0, [r4, #0x1e]\n\
	cmp r0, #0\n\
	beq _08090794\n\
	movs r0, #0xc0\n\
	b _080907B6\n\
	.align 2, 0\n\
_08090790: .4byte 0x04000090\n\
_08090794:\n\
	movs r3, #0x80\n\
	rsbs r3, r3, #0\n\
	strb r3, [r4, #0x1a]\n\
	b _080907B8\n\
_0809079C:\n\
	ldrb r0, [r4, #0x1e]\n\
	strb r0, [r3]\n\
	ldr r0, [r4, #0x24]\n\
	lsls r0, r0, #3\n\
	ldr r1, [sp, #0x14]\n\
	strb r0, [r1]\n\
_080907A8:\n\
	ldrb r0, [r4, #4]\n\
	adds r0, #8\n\
	mov r8, r0\n\
	ldrb r0, [r4, #0x1e]\n\
	cmp r0, #0\n\
	beq _080907B6\n\
	movs r0, #0x40\n\
_080907B6:\n\
	strb r0, [r4, #0x1a]\n\
_080907B8:\n\
	ldrb r1, [r4, #4]\n\
	movs r2, #0\n\
	strb r1, [r4, #0xb]\n\
	movs r0, #0xff\n\
	ands r0, r1\n\
	adds r3, r6, #1\n\
	mov sl, r3\n\
	movs r1, #0x40\n\
	adds r1, r1, r4\n\
	mov sb, r1\n\
	cmp r0, #0\n\
	bne _080907D2\n\
	b _08090926\n\
_080907D2:\n\
	strb r2, [r4, #9]\n\
	b _08090954\n\
_080907D6:\n\
	movs r0, #4\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	bne _080907F0\n\
	ldr r0, _0809081C @ =0x04000084\n\
	ldrb r1, [r0]\n\
	ldr r3, [sp, #0x1c]\n\
	ldrb r0, [r3]\n\
	asrs r1, r0\n\
	movs r0, #1\n\
	ands r1, r0\n\
	cmp r1, #0\n\
	bne _08090820\n\
_080907F0:\n\
	ldrb r0, [r4, #0xd]\n\
	subs r0, #1\n\
	strb r0, [r4, #0xd]\n\
	movs r1, #0xff\n\
	ands r0, r1\n\
	lsls r0, r0, #0x18\n\
	adds r3, r6, #1\n\
	mov sl, r3\n\
	movs r1, #0x40\n\
	adds r1, r1, r4\n\
	mov sb, r1\n\
	cmp r0, #0\n\
	ble _0809080C\n\
	b _08090966\n\
_0809080C:\n\
	lsls r0, r6, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl CgbOscOff\n\
	movs r0, #0\n\
	strb r0, [r4]\n\
	b _08090A62\n\
	.align 2, 0\n\
_0809081C: .4byte 0x04000084\n\
_08090820:\n\
	movs r0, #0x40\n\
	ands r0, r2\n\
	adds r3, r6, #1\n\
	mov sl, r3\n\
	movs r1, #0x40\n\
	adds r1, r1, r4\n\
	mov sb, r1\n\
	cmp r0, #0\n\
	beq _08090860\n\
	movs r0, #3\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	beq _08090860\n\
	movs r0, #0xfc\n\
	ands r0, r2\n\
	movs r2, #0\n\
	strb r0, [r4]\n\
	ldrb r1, [r4, #7]\n\
	strb r1, [r4, #0xb]\n\
	movs r0, #0xff\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08090892\n\
	ldrb r0, [r4, #0x1d]\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	strb r0, [r4, #0x1d]\n\
	cmp r6, #3\n\
	beq _08090954\n\
	ldrb r3, [r4, #7]\n\
	mov r8, r3\n\
	b _08090954\n\
_08090860:\n\
	ldrb r0, [r4, #0xb]\n\
	cmp r0, #0\n\
	bne _08090954\n\
	cmp r6, #3\n\
	bne _08090872\n\
	ldrb r1, [r4, #0x1d]\n\
	movs r0, #1\n\
	orrs r0, r1\n\
	strb r0, [r4, #0x1d]\n\
_08090872:\n\
	adds r0, r4, #0\n\
	bl CgbModVol\n\
	ldrb r0, [r4]\n\
	movs r1, #3\n\
	ands r1, r0\n\
	cmp r1, #0\n\
	bne _080908C4\n\
	ldrb r0, [r4, #9]\n\
	subs r0, #1\n\
	strb r0, [r4, #9]\n\
	movs r1, #0xff\n\
	ands r0, r1\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	bgt _080908C0\n\
_08090892:\n\
	ldrb r1, [r4, #0xa]\n\
	ldrb r0, [r4, #0xc]\n\
	muls r0, r1, r0\n\
	adds r0, #0xff\n\
	asrs r0, r0, #8\n\
	movs r1, #0\n\
	strb r0, [r4, #9]\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _0809080C\n\
	ldrb r0, [r4]\n\
	movs r1, #4\n\
	orrs r0, r1\n\
	strb r0, [r4]\n\
	ldrb r0, [r4, #0x1d]\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	strb r0, [r4, #0x1d]\n\
	cmp r6, #3\n\
	beq _08090966\n\
	movs r3, #8\n\
	mov r8, r3\n\
	b _08090966\n\
_080908C0:\n\
	ldrb r0, [r4, #7]\n\
	b _08090952\n\
_080908C4:\n\
	cmp r1, #1\n\
	bne _080908D0\n\
_080908C8:\n\
	ldrb r0, [r4, #0x19]\n\
	strb r0, [r4, #9]\n\
	movs r0, #7\n\
	b _08090952\n\
_080908D0:\n\
	cmp r1, #2\n\
	bne _08090916\n\
	ldrb r0, [r4, #9]\n\
	subs r0, #1\n\
	strb r0, [r4, #9]\n\
	movs r1, #0xff\n\
	ands r0, r1\n\
	lsls r0, r0, #0x18\n\
	asrs r0, r0, #0x18\n\
	movs r1, #0x19\n\
	ldrsb r1, [r4, r1]\n\
	cmp r0, r1\n\
	bgt _08090912\n\
_080908EA:\n\
	ldrb r0, [r4, #6]\n\
	cmp r0, #0\n\
	bne _080908FA\n\
	ldrb r1, [r4]\n\
	movs r0, #0xfc\n\
	ands r0, r1\n\
	strb r0, [r4]\n\
	b _08090892\n\
_080908FA:\n\
	ldrb r0, [r4]\n\
	subs r0, #1\n\
	strb r0, [r4]\n\
	ldrb r1, [r4, #0x1d]\n\
	movs r0, #1\n\
	orrs r0, r1\n\
	strb r0, [r4, #0x1d]\n\
	cmp r6, #3\n\
	beq _080908C8\n\
	movs r3, #8\n\
	mov r8, r3\n\
	b _080908C8\n\
_08090912:\n\
	ldrb r0, [r4, #5]\n\
	b _08090952\n\
_08090916:\n\
	ldrb r0, [r4, #9]\n\
	adds r0, #1\n\
	strb r0, [r4, #9]\n\
	movs r1, #0xff\n\
	ands r0, r1\n\
	ldrb r3, [r4, #0xa]\n\
	cmp r0, r3\n\
	blo _08090950\n\
_08090926:\n\
	ldrb r0, [r4]\n\
	subs r0, #1\n\
	movs r2, #0\n\
	strb r0, [r4]\n\
	ldrb r1, [r4, #5]\n\
	strb r1, [r4, #0xb]\n\
	movs r0, #0xff\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080908EA\n\
	ldrb r0, [r4, #0x1d]\n\
	movs r1, #1\n\
	orrs r0, r1\n\
	strb r0, [r4, #0x1d]\n\
	ldrb r0, [r4, #0xa]\n\
	strb r0, [r4, #9]\n\
	cmp r6, #3\n\
	beq _08090954\n\
	ldrb r0, [r4, #5]\n\
	mov r8, r0\n\
	b _08090954\n\
_08090950:\n\
	ldrb r0, [r4, #4]\n\
_08090952:\n\
	strb r0, [r4, #0xb]\n\
_08090954:\n\
	ldrb r0, [r4, #0xb]\n\
	subs r0, #1\n\
	strb r0, [r4, #0xb]\n\
	ldr r1, [sp, #4]\n\
	cmp r1, #0\n\
	bne _08090966\n\
	subs r1, #1\n\
	str r1, [sp, #4]\n\
	b _08090860\n\
_08090966:\n\
	ldrb r1, [r4, #0x1d]\n\
	movs r0, #2\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080909E0\n\
	cmp r6, #3\n\
	bgt _080909A6\n\
	ldrb r1, [r4, #1]\n\
	movs r0, #8\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _080909A6\n\
	ldr r0, _08090990 @ =0x04000089\n\
	ldrb r0, [r0]\n\
	adds r1, r0, #0\n\
	cmp r1, #0x3f\n\
	bgt _08090998\n\
	ldr r0, [r4, #0x20]\n\
	adds r0, #2\n\
	ldr r1, _08090994 @ =0x000007FC\n\
	b _080909A2\n\
	.align 2, 0\n\
_08090990: .4byte 0x04000089\n\
_08090994: .4byte 0x000007FC\n\
_08090998:\n\
	cmp r1, #0x7f\n\
	bgt _080909A6\n\
	ldr r0, [r4, #0x20]\n\
	adds r0, #1\n\
	ldr r1, _080909B0 @ =0x000007FE\n\
_080909A2:\n\
	ands r0, r1\n\
	str r0, [r4, #0x20]\n\
_080909A6:\n\
	cmp r6, #4\n\
	beq _080909B4\n\
	ldr r0, [r4, #0x20]\n\
	b _080909C0\n\
	.align 2, 0\n\
_080909B0: .4byte 0x000007FE\n\
_080909B4:\n\
	ldr r1, [sp, #0x14]\n\
	ldrb r0, [r1]\n\
	movs r1, #8\n\
	ands r1, r0\n\
	ldr r0, [r4, #0x20]\n\
	orrs r0, r1\n\
_080909C0:\n\
	ldr r3, [sp, #0x14]\n\
	strb r0, [r3]\n\
	ldrb r0, [r4, #0x1a]\n\
	movs r1, #0xc0\n\
	ands r1, r0\n\
	ldr r0, [r4, #0x20]\n\
	movs r2, #0xfc\n\
	lsls r2, r2, #6\n\
	ands r0, r2\n\
	lsrs r0, r0, #8\n\
	adds r1, r1, r0\n\
	strb r1, [r4, #0x1a]\n\
	movs r0, #0xff\n\
	ands r1, r0\n\
	ldr r3, [sp, #0x18]\n\
	strb r1, [r3]\n\
_080909E0:\n\
	ldrb r1, [r4, #0x1d]\n\
	movs r0, #1\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08090A62\n\
	ldr r2, _08090A28 @ =0x04000081\n\
	ldrb r1, [r4, #0x1c]\n\
	ldrb r0, [r2]\n\
	bics r0, r1\n\
	ldrb r1, [r4, #0x1b]\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	cmp r6, #3\n\
	bne _08090A30\n\
	ldr r1, _08090A2C @ =gCgb3Vol\n\
	ldrb r0, [r4, #9]\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	ldr r1, [sp, #0x10]\n\
	strb r0, [r1]\n\
	ldrb r1, [r4, #0x1a]\n\
	movs r2, #0x80\n\
	adds r0, r2, #0\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	beq _08090A62\n\
	ldr r3, [sp, #0xc]\n\
	strb r2, [r3]\n\
	ldrb r0, [r4, #0x1a]\n\
	ldr r1, [sp, #0x18]\n\
	strb r0, [r1]\n\
	ldrb r1, [r4, #0x1a]\n\
	movs r0, #0x7f\n\
	ands r0, r1\n\
	strb r0, [r4, #0x1a]\n\
	b _08090A62\n\
	.align 2, 0\n\
_08090A28: .4byte 0x04000081\n\
_08090A2C: .4byte gCgb3Vol\n\
_08090A30:\n\
	movs r0, #0xf\n\
	mov r3, r8\n\
	ands r3, r0\n\
	mov r8, r3\n\
	ldrb r0, [r4, #9]\n\
	lsls r0, r0, #4\n\
	add r0, r8\n\
	ldr r1, [sp, #0x10]\n\
	strb r0, [r1]\n\
	ldrb r0, [r4, #0x1a]\n\
	movs r2, #0x80\n\
	orrs r0, r2\n\
	ldr r3, [sp, #0x18]\n\
	strb r0, [r3]\n\
	cmp r6, #1\n\
	bne _08090A62\n\
	ldr r0, [sp, #0xc]\n\
	ldrb r1, [r0]\n\
	movs r0, #8\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _08090A62\n\
	ldrb r0, [r4, #0x1a]\n\
	orrs r0, r2\n\
	strb r0, [r3]\n\
_08090A62:\n\
	movs r0, #0\n\
	strb r0, [r4, #0x1d]\n\
_08090A66:\n\
	mov r6, sl\n\
	mov r4, sb\n\
	cmp r6, #4\n\
	bgt _08090A70\n\
	b _08090634\n\
_08090A70:\n\
	add sp, #0x24\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
    ");
}

void m4aMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo)
{
    if (mplayInfo->ident == ID_NUMBER)
    {
        mplayInfo->ident++;
        mplayInfo->tempoU = tempo;
        mplayInfo->tempoI = (mplayInfo->tempoD * mplayInfo->tempoU) >> 8;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume)
{
    s32 i;
    u32 bit;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0)
    {
        if (trackBits & bit)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                track->volX = volume / 4;
                track->flags |= MPT_FLG_VOLCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch)
{
    s32 i;
    u32 bit;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0)
    {
        if (trackBits & bit)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                track->keyShiftX = pitch >> 8;
                track->pitX = pitch;
                track->flags |= MPT_FLG_PITCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan)
{
    s32 i;
    u32 bit;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0)
    {
        if (trackBits & bit)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                track->panX = pan;
                track->flags |= MPT_FLG_VOLCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void ClearModM(struct MusicPlayerTrack *track)
{
    track->lfoSpeedC = 0;
    track->modM = 0;

    if (track->modT == 0)
        track->flags |= MPT_FLG_PITCHG;
    else
        track->flags |= MPT_FLG_VOLCHG;
}

void m4aMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth)
{
    s32 i;
    u32 bit;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0)
    {
        if (trackBits & bit)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                track->mod = modDepth;

                if (!track->mod)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed)
{
    s32 i;
    u32 bit;
    struct MusicPlayerTrack *track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0)
    {
        if (trackBits & bit)
        {
            if (track->flags & MPT_FLG_EXIST)
            {
                track->lfoSpeed = lfoSpeed;

                if (!track->lfoSpeed)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

#define MEMACC_COND_JUMP(cond) \
if (cond)                      \
    goto cond_true;            \
else                           \
    goto cond_false;           \

void ply_memacc(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    u32 op;
    u8 *addr;
    u8 data;

    op = *track->cmdPtr;
    track->cmdPtr++;

    addr = mplayInfo->memAccArea + *track->cmdPtr;
    track->cmdPtr++;

    data = *track->cmdPtr;
    track->cmdPtr++;

    switch (op)
    {
    case 0:
        *addr = data;
        return;
    case 1:
        *addr += data;
        return;
    case 2:
        *addr -= data;
        return;
    case 3:
        *addr = mplayInfo->memAccArea[data];
        return;
    case 4:
        *addr += mplayInfo->memAccArea[data];
        return;
    case 5:
        *addr -= mplayInfo->memAccArea[data];
        return;
    case 6:
        MEMACC_COND_JUMP(*addr == data)
        return;
    case 7:
        MEMACC_COND_JUMP(*addr != data)
        return;
    case 8:
        MEMACC_COND_JUMP(*addr > data)
        return;
    case 9:
        MEMACC_COND_JUMP(*addr >= data)
        return;
    case 10:
        MEMACC_COND_JUMP(*addr <= data)
        return;
    case 11:
        MEMACC_COND_JUMP(*addr < data)
        return;
    case 12:
        MEMACC_COND_JUMP(*addr == mplayInfo->memAccArea[data])
        return;
    case 13:
        MEMACC_COND_JUMP(*addr != mplayInfo->memAccArea[data])
        return;
    case 14:
        MEMACC_COND_JUMP(*addr > mplayInfo->memAccArea[data])
        return;
    case 15:
        MEMACC_COND_JUMP(*addr >= mplayInfo->memAccArea[data])
        return;
    case 16:
        MEMACC_COND_JUMP(*addr <= mplayInfo->memAccArea[data])
        return;
    case 17:
        MEMACC_COND_JUMP(*addr < mplayInfo->memAccArea[data])
        return;
    default:
        return;
    }

cond_true:
    {
        // *& is required for matching
        (*&gMPlayJumpTable[1])(mplayInfo, track);
        return;
    }

cond_false:
    track->cmdPtr += 4;
}

void ply_xcmd(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    u32 n = *track->cmdPtr;
    track->cmdPtr++;

    gUnknown_08119C24[n](mplayInfo, track);
}

void ply_xxx(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    gMPlayJumpTable[0](mplayInfo, track);
}

#define READ_XCMD_BYTE(var, n)       \
{                                    \
    u32 byte = track->cmdPtr[(n)]; \
    byte <<= n * 8;                  \
    (var) &= ~(0xFF << (n * 8));     \
    (var) |= byte;                   \
}

void ply_xwave(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    u32 wav;

#ifdef UBFIX
    wav = 0;
#endif

    READ_XCMD_BYTE(wav, 0) // UB: uninitialized variable
    READ_XCMD_BYTE(wav, 1)
    READ_XCMD_BYTE(wav, 2)
    READ_XCMD_BYTE(wav, 3)

    track->tone.wav = (struct WaveData *)wav;
    track->cmdPtr += 4;
}

void ply_xtype(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.type = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xatta(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.attack = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xdeca(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.decay = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xsust(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.sustain = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xrele(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.release = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xiecv(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->echoVolume = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xiecl(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->echoLength = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xleng(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.length = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xswee(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track)
{
    track->tone.pan_sweep = *track->cmdPtr;
    track->cmdPtr++;
}

void DummyFunc(void)
{
}
