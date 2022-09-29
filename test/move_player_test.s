.include "../src/data.s"
.include "../src/consts.s"
.include "../src/macros.s"

.text
jal INIT_VIDEO
la a0, MAPS
la a1, CORRESPONDENCE_ARR_MAP0

la t0, PLAYERS
li t1, SCREEN_CENTER_X
sb t1, PLAYER_BPOS_X(t0)
li t1, SCREEN_CENTER_Y
sb t1, PLAYER_BPOS_Y(t0)
li t1, 1
sb t1, PLAYER_BIS_ALLY(t0)
sb zero, PLAYER_BELEMENT(t0)

GAME:
	la a0, MAPS
	la a1, CORRESPONDENCE_ARR_MAP0
	jal DRAW_MAP
	jal DRAW_CURSOR

	la a0, PLAYERS
	mv a1, zero # dont force player draw
	jal DRAW_PLAYER

	jal GET_KBD_INPUT
	mv s0, a0
	jal MOVE_CURSOR
	jal DRAW_CURSOR

	li t0, 'x'
	beq s0, t0, move_player_game

continue_loop_game:
	jal SWAP_FRAMES
	j GAME

move_player_game:
	la a0, PLAYERS
	jal INIT_ACTUALLY_MOVE_PLAYER
	j continue_loop_game




.include "../src/player.s"
.include "../src/video.s"
.include "../src/input.s"
.include "../src/cursor.s"
.include "../src/map.s"
