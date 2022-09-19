#####################################################
# Retorna uma direçao nos registradores a0 e a1 a partir
# da tecla que foi pressionada, da seguinte forma:
# keyCode | a0 | a1
#    'W'  | 0  | -1
#    'A'  | -1  | 0
#    'S'  | 0  | 1
#    'D'  | 1  | 0
# Caso keyCode nao seja uma das letras acima retorna
# GET_DIR_EXCEPTION no a0.
#####################################################
#####################################################
# a0 = keyCode
#####################################################
GET_DIR_FROM_KEY:
	li t0, 'W'
	bne, a0, t0, notW_get_dir_from_key
	li a0, 0
	li a1, -1
	ret
notW_get_dir_from_key:
	li t0, 'A'
	bne, a0, t0, notA_get_dir_from_key
	li a0, -1
	li a1, 0
	ret
notA_get_dir_from_key:
	li t0, 'S'
	bne, a0, t0, notS_get_dir_from_key
	li a0, 0
	li a1, 1
	ret
notS_get_dir_from_key:
	li t0, 'D'
	bne, a0, t0, notD_get_dir_from_key
	li a0, 1
	li a1, 0
	ret
notD_get_dir_from_key:
	li a0, GET_DIR_EXCEPTION
	ret