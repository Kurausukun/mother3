		.equiv TRACK_SIZE, 0x50
		.equiv NUM_TRACKS_PLAYER1, 10
		.equiv NUM_TRACKS_PLAYER2, 10
		.equiv NUM_TRACKS_PLAYER3, 2
		.equiv NUM_TRACKS_PLAYER4, 4
		.equiv NUM_TRACKS_PLAYER5, 8
		.equiv NUM_TRACKS_PLAYER6, 4
		.equiv NUM_TRACKS_PLAYER7, 16
		.equiv NUM_TRACKS_PLAYER8, 8
		.equiv NUM_TRACKS_PLAYER9, 2
		.equiv NUM_TRACKS_PLAYER10, 10

	.bss

gMPlayTrack_Player1::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER1
	.size gMPlayTrack_Player1, .-gMPlayTrack_Player1

gMPlayTrack_Player2::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER2
	.size gMPlayTrack_Player2, .-gMPlayTrack_Player2

gMPlayTrack_Player3::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER3
	.size gMPlayTrack_Player3, .-gMPlayTrack_Player3

gMPlayTrack_Player4::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER4
	.size gMPlayTrack_Player4, .-gMPlayTrack_Player4

gMPlayTrack_Player5::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER5
	.size gMPlayTrack_Player5, .-gMPlayTrack_Player5

gMPlayTrack_Player6::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER6
	.size gMPlayTrack_Player6, .-gMPlayTrack_Player6

gMPlayTrack_Player7::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER7
	.size gMPlayTrack_Player7, .-gMPlayTrack_Player7

gMPlayTrack_Player8::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER8
	.size gMPlayTrack_Player8, .-gMPlayTrack_Player8

gMPlayTrack_Player9::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER9
	.size gMPlayTrack_Player9, .-gMPlayTrack_Player9

gMPlayTrack_Player10::
	.space TRACK_SIZE * NUM_TRACKS_PLAYER10
	.size gMPlayTrack_Player10, .-gMPlayTrack_Player10

	.section .rodata

	.align 2
gMPlayTable::	@ 0x08120E1C
	music_player gMPlayInfo_Player1, gMPlayTrack_Player1, NUM_TRACKS_PLAYER1, 0
	music_player gMPlayInfo_Player2, gMPlayTrack_Player2, NUM_TRACKS_PLAYER2, 0
	music_player gMPlayInfo_Player3, gMPlayTrack_Player3, NUM_TRACKS_PLAYER3, 0
	music_player gMPlayInfo_Player4, gMPlayTrack_Player4, NUM_TRACKS_PLAYER4, 0
	music_player gMPlayInfo_Player5, gMPlayTrack_Player5, NUM_TRACKS_PLAYER5, 0
	music_player gMPlayInfo_Player6, gMPlayTrack_Player6, NUM_TRACKS_PLAYER6, 0
	music_player gMPlayInfo_Player7, gMPlayTrack_Player7, NUM_TRACKS_PLAYER7, 0
	music_player gMPlayInfo_Player8, gMPlayTrack_Player8, NUM_TRACKS_PLAYER8, 0
	music_player gMPlayInfo_Player9, gMPlayTrack_Player9, NUM_TRACKS_PLAYER9, 0
	music_player gMPlayInfo_Player10, gMPlayTrack_Player10, NUM_TRACKS_PLAYER10, 0
