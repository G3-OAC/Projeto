.include "../src/consts.s"

.data
FRAME_TO_DRAW: .byte 0

# Estados
IN_COMBAT: .byte 0      # 0 - fora de comabate    1 - aliado ataca primeiro    2 - inimigo ataca primeiro
COMBAT_STEP: .byte 0    # idle - primeiro atack - tira vida - segundo atack - tira vida
COMBAT_LAST_TIME: .word 0

.align 2
PLAYERS_IN_COMBAT: .word 0, 0
PLAYER_ATACKING: .byte 2
COMBAT_DAMAGE: .byte 0
PRINT_DMG: .byte 0

IS_PRINT_DMG: .byte 0

CURSOR_POS: .byte SCREEN_CENTER_X, SCREEN_CENTER_Y

.align 2
CURSOR_ANIM: .word 2, 0, MIN_WORD, CURSOR_NUM0, CURSOR_NUM1
PLAYER_BLINK_ANIM0: .word 2, 0, MIN_WORD, 1, 2
PLAYER_BLINK_ANIM1: .word 2, 0, MIN_WORD, 2, 1
SMOKE_ANIM_DISAPPEAR: .word 2, 0, -1, MIN_WORD, SMOKE0, SMOKE1
SMOKE_ANIM_APPEAR: .word 2, 0, -1, MIN_WORD, SMOKE1, SMOKE0
.align 0
CURSOR_TRAIL: .space N_CURSOR_TRAIL
MAKING_TRAIL: .byte 0
# Indicates if player blink animation is in progress
BLINK_ANIMATION: .byte 0

ACTUALLY_MOVE_PLAYER_DATA: 
.align 2
.word 0 # player
.byte 0 # oldPosX
.byte 0 # oldPosY
.byte 0 # status

.align 2
# Player animations data:
PLAYER_EARTH_STILL_ANIM: .word 2, 0, MIN_WORD, ALLY_EARTH_STILL_FRAME0, ALLY_EARTH_STILL_FRAME1


# Nome dos elementos
FOGO: .string "FOGO"
GELO: .string "GELO"
TERRA: .string "TERRA"

HIT_STRING: .string "HIT"
MISS_STRING: .string "MISS"
CRIT_STRING: .string "CRIT"
DMG_STRING: .string "DMG"

INFO_STRING: .string "DMG   \nHIT   \nCRIT   "


WALKABLE_BLOCKS: .align 2
.space TILES_PER_MAP

.align 0
MAPS:
.byte
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0x11,0x11,0,0,0,0,0,0,
0,0,0, 0,0,0,0,0,0,0,0,0,0x11,0x11,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0x11,0x11,0x11,0x11,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0x11,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0x11,0x11,0x11,0x11,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

# Caracteres para print(string, char)
LabelTabChar:
.word 	0x00000000, 0x00000000, 0x10101010, 0x00100010, 0x00002828, 0x00000000, 0x28FE2828, 0x002828FE, 
	0x38503C10, 0x00107814, 0x10686400, 0x00004C2C, 0x28102818, 0x003A4446, 0x00001010, 0x00000000, 
	0x20201008, 0x00081020, 0x08081020, 0x00201008, 0x38549210, 0x00109254, 0xFE101010, 0x00101010, 
	0x00000000, 0x10081818, 0xFE000000, 0x00000000, 0x00000000, 0x18180000, 0x10080402, 0x00804020, 
	0x54444438, 0x00384444, 0x10103010, 0x00381010, 0x08044438, 0x007C2010, 0x18044438, 0x00384404, 
	0x7C482818, 0x001C0808, 0x7840407C, 0x00384404, 0x78404438, 0x00384444, 0x1008047C, 0x00202020, 
	0x38444438, 0x00384444, 0x3C444438, 0x00384404, 0x00181800, 0x00001818, 0x00181800, 0x10081818, 
	0x20100804, 0x00040810, 0x00FE0000, 0x000000FE, 0x04081020, 0x00201008, 0x08044438, 0x00100010, 
	0x545C4438, 0x0038405C, 0x7C444438, 0x00444444, 0x78444478, 0x00784444, 0x40404438, 0x00384440,
	0x44444478, 0x00784444, 0x7840407C, 0x007C4040, 0x7C40407C, 0x00404040, 0x5C404438, 0x00384444, 
	0x7C444444, 0x00444444, 0x10101038, 0x00381010, 0x0808081C, 0x00304848, 0x70484444, 0x00444448, 
	0x20202020, 0x003C2020, 0x92AAC682, 0x00828282, 0x54546444, 0x0044444C, 0x44444438, 0x00384444, 
	0x38242438, 0x00202020, 0x44444438, 0x0C384444, 0x78444478, 0x00444850, 0x38404438, 0x00384404, 
	0x1010107C, 0x00101010, 0x44444444, 0x00384444, 0x28444444, 0x00101028, 0x54828282, 0x00282854, 
	0x10284444, 0x00444428, 0x10284444, 0x00101010, 0x1008047C, 0x007C4020, 0x20202038, 0x00382020, 
	0x10204080, 0x00020408, 0x08080838, 0x00380808, 0x00442810, 0x00000000, 0x00000000, 0xFE000000, 
	0x00000810, 0x00000000, 0x3C043800, 0x003A4444, 0x24382020, 0x00582424, 0x201C0000, 0x001C2020, 
	0x48380808, 0x00344848, 0x44380000, 0x0038407C, 0x70202418, 0x00202020, 0x443A0000, 0x38043C44, 
	0x64584040, 0x00444444, 0x10001000, 0x00101010, 0x10001000, 0x60101010, 0x28242020, 0x00242830, 
	0x08080818, 0x00080808, 0x49B60000, 0x00414149, 0x24580000, 0x00242424, 0x44380000, 0x00384444, 
	0x24580000, 0x20203824, 0x48340000, 0x08083848, 0x302C0000, 0x00202020, 0x201C0000, 0x00380418, 
	0x10381000, 0x00101010, 0x48480000, 0x00344848, 0x44440000, 0x00102844, 0x82820000, 0x0044AA92, 
	0x28440000, 0x00442810, 0x24240000, 0x38041C24, 0x043C0000, 0x003C1008, 0x2010100C, 0x000C1010, 
	0x10101010, 0x00101010, 0x04080830, 0x00300808, 0x92600000, 0x0000000C, 0x243C1818, 0xA55A7E3C, 
	0x99FF5A81, 0x99663CFF, 0x10280000, 0x00000028, 0x10081020, 0x00081020


# Temp buffer so we can perform operations on strings
TEMP_BUFFER:
.space 512

.align 0
N_PLAYERS:
.byte 0

# Allocating PLAYER_BYTE_SIZE * 10 bytes
.align 0
PLAYERS:
.space 40

CORRESPONDENCE_ARR_MAP0:
.byte 35, 2, 32, 0

.align 2
# Images
.include "../sprites/tiles.data"

.include "../sprites/vida_cheia.data"
.include "../sprites/vida_vazia.data"
.include "../sprites/combat_mago_idle.data"
.include "../sprites/combat_mago_pose.data"
.include "../sprites/magia_idle.data"
.include "../sprites/projetil.data"

# Combate
.include "../sprites/combat/combat_idle_aliado_azul.data"
.include "../sprites/combat/combat_pose_aliado_azul.data"
.include "../sprites/combat/combat_idle_aliado_vermelho.data"
.include "../sprites/combat/combat_pose_aliado_vermelho.data"
.include "../sprites/combat/combat_idle_aliado_marron.data"
.include "../sprites/combat/combat_pose_aliado_marron.data"
.include "../sprites/combat/combat_idle_inimigo_azul.data"
.include "../sprites/combat/combat_pose_inimigo_azul.data"
.include "../sprites/combat/combat_idle_inimigo_vermelho.data"
.include "../sprites/combat/combat_pose_inimigo_vermelho.data"
.include "../sprites/combat/combat_idle_inimigo_marron.data"
.include "../sprites/combat/combat_pose_inimigo_marron.data"

.include "../images/SMOKE0.data"
.include "../images/SMOKE1.data"
.include "../images/walkable.data"

