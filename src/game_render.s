######################################################################
# Roda a o render principal do jogo baseado no estado do jogo
# passado em a0.
######################################################################
# a0 = estado a executar
######################################################################
RUN_GAME_RENDER:
	addi sp, sp, -4
	sw ra, 0(sp)

	li t0, GAME_STATE_INIT
	beq a0, t0, init_run_game_render

	li t0, GAME_STATE_CHOOSE_ALLY
	beq a0, t0, choose_ally_run_game_render

	li t0, GAME_STATE_MAKING_TRAIL
	beq a0, t0, making_trail_run_game_render

ret_run_game_render:
	lw ra, 0(sp)
	addi sp, sp, 4
	ret

init_run_game_render:
	jal INIT_VIDEO
	j ret_run_game_render

choose_ally_run_game_render:
	jal DRAW_MAP
	jal DRAW_PLAYERS
	jal DRAW_CURSOR

	jal SWAP_FRAMES
	j ret_run_game_render

making_trail_run_game_render:
	jal DRAW_MAP
	jal DRAW_WALKABLE_BLOCKS
	jal DRAW_CURSOR_TRAIL
	jal DRAW_PLAYERS
	jal DRAW_CURSOR

	jal SWAP_FRAMES
	j ret_run_game_render