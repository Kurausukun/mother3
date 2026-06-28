	.include "asm/macros/m4a.inc"
	.include "asm/macros/music_voice.inc"

	.section .rodata
	
	.include "sound/voice_groups.inc"
	.include "sound/keysplit_tables.inc"
	.include "sound/programmable_wave_data.inc"
	.include "sound/music_player_table.inc"
	.include "sound/song_table.inc"
	.include "sound/direct_sound_data.inc"
	.include "sound/song_data.inc"

	.global gSongCount
	.equ	gSongCount, (song_table_end - gSongTable) / 8
