#####################################################
# Desenha o caminho feito pelo cursor.
# O cursor é salvo como uma array de bytes na forma:
# x_0, y_0, x_1, y_1, ..., x_n, y_n, -1
#####################################################
DRAW_CURSOR_TRAIL:
	addi sp, sp, -8
	sw ra, 0(sp)
	sw s0, 4(sp)

	# s0 = trail
	la s0, CURSOR_TRAIL
	lb t0, 0(s0)
	li t2, -1
	beq t0, t2, ret_draw_cursor_trail
	lb t0, 2(s0)
	beq t0, t2, ret_draw_cursor_trail
	jal GET_FIRST_TRAIL_TILE
	j draw_tile_draw_cursor_trail
	
loop_draw_cursor_trail:
	# if trail[i] == -1 then return
	lb t1, 0(s0)
	li t2, -1
	beq t1, t2, ret_draw_cursor_trail

	# if trail[i+1] == -1 then dont draw trail
	lb t1, 2(s0)
	beq t1, t2, is_last_draw_cursor_trail

	# get correct tile to draw
	mv a0, s0
	jal GET_TRAIL_TILE

draw_tile_draw_cursor_trail:
	# Draw the tile
	mv a3, a0
	la a0, tiles
	lb a1, 0(s0)
	lb a2, 1(s0)
	jal RENDER_TILE

	is_last_draw_cursor_trail:
	addi s0, s0, 2
	j loop_draw_cursor_trail

ret_draw_cursor_trail:
	lw ra, 0(sp)
	lw s0, 4(sp)
	addi sp, sp, 8
	ret


#####################################################
# Monta e desenha o caminho feito pelo cursor na tela
#####################################################
# a0 = keyCode
#####################################################
MAKE_TRAIL:
	addi sp, sp, -4
	sw ra, 0(sp)

	# movimenta cursor
	# a funcao retorna 0 se e somente se cursor nao mexeu
	jal MOVE_CURSOR

	la t0, CURSOR_TRAIL
	beq a0, zero, draw_trail_make_trail
	# if cursor moved then add position to trail

loop_make_trail:
	lb t1, 0(t0)
	li t2, -1
	beq t1, t2, exit_loop_make_trail

	addi t0, t0, 2
	j loop_make_trail

exit_loop_make_trail:
	# add new mouse pos to trail
	la t1, CURSOR_POS
	lb t2, 0(t1)
	lb t3, 1(t1)
	li t4, -1
	sb t2, 0(t0)
	sb t3, 1(t0)
	sb t4, 2(t0)

draw_trail_make_trail:
	jal DRAW_CURSOR_TRAIL

	lw ra, 0(sp)
	addi sp, sp, 4
	ret

#####################################################
# Imprime o trail atual do cursor para debug.
#####################################################
PRINT_CURSOR_TRAIL:
	la t0, CURSOR_TRAIL

loop_print_cursor_trail:
	li t1, -1
	lb t2, 0(t0)

	beq t2, t1, exit_print_cursor_trail

	li a7, 1
	mv a0, t2
	ecall
	li a7, 11
	li a0, ' '
	ecall
	lb a0, 1(t0)
	li a7, 1
	ecall
	li a0, '\n'
	li a7, 11
	ecall

	addi t0, t0, 2
	j loop_print_cursor_trail

exit_print_cursor_trail:
	li a0, -1
	li a7, 1
	ecall
	li a0, '\n'
	li a7, 11
	ecall
	ret

#####################################################
# Retorna a primeira tile do trail.
#####################################################
GET_FIRST_TRAIL_TILE:
	la a0, CURSOR_TRAIL
	lb t0, 0(a0)
	lb t1, 2(a0)
	sub t0, t0, t1
	beq t0, zero, ver_get_first_trail_tile 
	li a0, TRAIL_HORIZONTAL_TILE
	ret

ver_get_first_trail_tile:
	li a0, TRAIL_VERTICAL_TILE
	ret


#####################################################
# Retorna a tile correta em a0 baseado no caminho 
# feito pelo trail.
#####################################################
# a0 = posicao atual no trail
#####################################################
GET_TRAIL_TILE:
	lb t0, -2(a0)
	lb t1, -1(a0)
	lb t2, 0(a0)
	lb t3, 1(a0)
	lb t4, 2(a0)
	lb t5, 3(a0)

	sub t6, t4, t0
	beq t6, zero, ver_get_trail_tile
	sub t6, t5, t1
	beq t6, zero, hor_get_trail_tile

	# t0 = deltaX, t1 = deltaX', t2 = deltaY, t3 = deltaY'
	sub t0, t2, t0
	sub t6, t4, t2
	sub t2, t3, t1
	sub t3, t5, t3
	mv t1, t6

	li t4, -1
	beq t0, t4, l_get_trail_tile

	li t4, 1
	beq t0, t4, r_get_trail_tile
	beq t2, t4, d_get_trail_tile

	beq t1, t4, ur_get_trail_tile
	li a0, TRAIL_UL_TILE
	ret

ur_get_trail_tile:
	li a0, TRAIL_UR_TILE
	ret

d_get_trail_tile:
	beq t1, t4, dr_get_trail_tile
	li a0, TRAIL_DL_TILE
	ret

dr_get_trail_tile:
	li a0, TRAIL_DR_TILE
	ret

r_get_trail_tile:
	beq t3, t4, rd_get_trail_tile
	li a0, TRAIL_DL_TILE
	ret

rd_get_trail_tile:
	li a0, TRAIL_UL_TILE
	ret

l_get_trail_tile:
	beq t3, t4, lu_get_trail_tile
	li a0, TRAIL_UR_TILE
	ret

lu_get_trail_tile:
	li a0, TRAIL_DR_TILE
	ret

hor_get_trail_tile:
	li a0, TRAIL_HORIZONTAL_TILE
	ret

ver_get_trail_tile:
	li a0, TRAIL_VERTICAL_TILE
	ret