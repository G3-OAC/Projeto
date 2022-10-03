# Video
.eqv CURRENT_DISPLAY_FRAME_ADRESS 0xFF200604
.eqv BUFFER_ADRESS 0xFF000000
.eqv NUMBER_OF_PIXELS 0x12C00
.eqv TILE_SIZE 16
.eqv NUMBER_OF_TILES_IN_IMAGE 89
.eqv SCREEN_SIZE 320
.eqv KBD_CONTROL 0xFF200000
.eqv CURSOR_IMG tiles
.eqv CURSOR_ANIM_DELAY 200 # time between each frame of cursor animation
.eqv SCREEN_CENTER_X 9
.eqv SCREEN_CENTER_Y 7
.eqv REAL_CENTER_X 160
.eqv REAL_CENTER_Y 120
.eqv TILES_PER_MAP 300
.eqv MAP_SIZE 300
.eqv N_MAPS 5
.eqv MAX_WORD 0xFFFFFFFF
.eqv MIN_WORD 0x10000000
.eqv N_CURSOR_TRAIL 300
.eqv GET_DIR_EXCEPTION 1000
# Constantes para representacao do mapa
.eqv BLOCK_EMPTY 0
.eqv BLOCK_BUSH 1
.eqv BLOCK_RUNE 2
.eqv BLOCK_OBSTACLE 3
.eqv BLOCK_ALLY 4
.eqv BLOCK_ENEMY 5
# Tiles usadas para desenhar o mapa no modo debug
.eqv DEBUG_TILE_EMPTY 3
.eqv DEBUG_TILE_OBSTACLE 1
.eqv DEBUG_TILE_ALLY 2
.eqv DEBUG_TILE_ENEMY 0

# Constantes para mecanica do jogo
.eqv MOVE_RADIUS 5
.eqv CURSOR_MAX_X 19
.eqv CURSOR_MAX_Y 14
.eqv MAP_WIDTH 20
.eqv MAP_HEIGHT 15

.eqv PLAYER_WATER 0
.eqv PLAYER_FIRE 1
.eqv PLAYER_EARTH 2

.eqv ACTUALLY_MOVE_PLAYER_DATA_BPOSX 4
.eqv ACTUALLY_MOVE_PLAYER_DATA_BPOSY 5
.eqv ACTUALLY_MOVE_PLAYER_DATA_BSTATUS 6
.eqv ACTUALLY_MOVE_PLAYER_DATA_WPLAYER 0

.eqv ACTUALLY_MOVE_PLAYER_DISAPPEAR 0
.eqv ACTUALLY_MOVE_PLAYER_APPEAR 1

# delay in milliseconds between each frame of animations
.eqv PLAYER_STILL_ANIMATION_DELAY 200
.eqv SMOKE_ANIMATION_DELAY 100

.eqv SMOKE_TILE_SIZE 48
.eqv NOTE_DATA 0xFF200178
.eqv NOTE_CLOCK 0xFF20017C

# Combat
.eqv LARGURA_VIDA 4
.eqv ALTURA_VIDA 8
.eqv PLAYER1_LIFE_POSITION_X 24
.eqv PLAYER1_LIFE_POSITION_Y 222
.eqv PLAYER1_LIFE_NUMBER_POSITION_X 4
.eqv PLAYER1_LIFE_COLOR 0x07FF

.eqv PLAYER2_LIFE_POSITION_X 183
.eqv PLAYER2_LIFE_POSITION_Y 222
.eqv PLAYER2_LIFE_NUMBER_POSITION_X 163
.eqv PLAYER2_LIFE_COLOR 0xc8FF

.eqv SPACE_BETWEEN_STRING_DIALOG 4

# Colors
.eqv azul 0x0c8
.eqv vermelho 7
.eqv branco 183
.eqv bege 100
.eqv transp 199
.eqv verde 56
.eqv amarelo 47
.eqv COMBAT_BACKGROUND 0xCCCCCCCC
.eqv MENU_STRING_COLOR 0x000009ff
.eqv MENU_BG_COLOR 0x09090909

.eqv TAMANHO_X_NOME_PLAYER 60
.eqv TAMANHO_Y_NOME_PLAYER 16

.eqv POS_X_NOME_PLAYER_1 0
.eqv POS_Y_NOME_PLAYER_1 10
.eqv POS_X_NOME_PLAYER_2 259
.eqv POS_Y_NOME_PLAYER_2 10

.eqv POS_X_INFO_BOX_PLAYER_1 0
.eqv POS_X_INFO_BOX_PLAYER_2 253
.eqv POS_Y_INFO_BOX_PLAYER   180
.eqv TAMANHO_X_INFO_BOX 66
.eqv TAMANHO_Y_INFO_BOX 29

.eqv TAMANHO_X_ELEMENTO_PLAYER 60
.eqv TAMANHO_Y_ELEMENTO_PLAYER 16

.eqv POS_X_ELEMENTO_PLAYER_1 66
.eqv POS_Y_ELEMENTO_PLAYER_1 193
.eqv POS_X_ELEMENTO_PLAYER_2 193
.eqv POS_Y_ELEMENTO_PLAYER_2 193

.eqv DMG_STRING_POSITION_X 110
.eqv DMG_STRING_POSITION_Y 40

.eqv HIT_STRING_OFFSET 32
.eqv CRIT_STRING_OFFSET 40
.eqv DMG_STRING_OFFSET 24

.eqv PLAYER1_POSITION_X 20
.eqv PLAYER1_POSITION_Y 100
.eqv PLAYER2_POSITION_X 265
.eqv PLAYER2_POSITION_Y 100

.eqv PLAYER_COMBAT_SPRITE_WIDTH 35
.eqv PLAYER_COMBAT_SPRITE_HEIGHT 47

.eqv IDLE_MAGIC_WIDTH 20
.eqv IDLE_MAGIC_HEIGHT 22
.eqv MOVING_MAGIC_WIDTH 48
.eqv MOVING_MAGIC_HEIGHT 28

.eqv IDLE_MAGIC_POSITION_1_X 60
.eqv IDLE_MAGIC_POSITION_1_Y 110
.eqv MOVING_MAGIC_POSITION_1_X 60
.eqv MOVING_MAGIC_POSITION_1_Y 110

.eqv IDLE_MAGIC_POSITION_2_X 240
.eqv IDLE_MAGIC_POSITION_2_Y 110
.eqv MOVING_MAGIC_POSITION_2_X 225
.eqv MOVING_MAGIC_POSITION_2_Y 110

.eqv DELTA_X_MAGIC 10

# Player
.eqv PLAYER_BYTE_SIZE 28   # player byte size rounded to the nearest word
.eqv PLAYERS_BYTE_SIZE 280 # always set this to 10 * PLAYER_BYTE_SIZE

.eqv PLAYER_W_SPRITE 0
.eqv PLAYER_W_SPRITE_MAGIA 4
.eqv PLAYER_W_NOME 8
.eqv PLAYER_H_MAGIA_X 12
.eqv PLAYER_H_MAGIA_Y 14
.eqv PLAYER_B_VIDA_TOTAL 16
.eqv PLAYER_B_VIDA_ATUAL 17
.eqv PLAYER_B_MAGIA_SIZE_X 18
.eqv PLAYER_B_MAGIA_SIZE_Y 19
.eqv PLAYER_B_TIPO 20
.eqv PLAYER_B_DAMAGE 21
.eqv PLAYER_B_HIT 22
.eqv PLAYER_B_CRIT 23
.eqv PLAYER_B_POS_X 24
.eqv PLAYER_B_POS_Y 25
.eqv PLAYER_B_SPECIAL_TERRAIN 26
.eqv PLAYER_B_MOVED 27

# Times
.eqv WAIT_IDLE_TIME 1000
.eqv WAIT_IDLE_ATACK_TIME 500
.eqv WAIT_MOVING_ATACK_TIME 50
.eqv WAIT_LIFE_SUB_TIME 200
.eqv WAIT_ENEMY_DELAY 1500
.eqv WAIT_PHASE_TRANSITION 2000
.eqv WAIT_WIN_MAP 2000
.eqv WAIT_LOOSE_MAP 2000


# STEPS
.eqv NUMBER_OF_IDLE_STEPS 2
.eqv NUMBER_OF_STEPS_UNTIL_FIRST_ATACK 2
.eqv NUMBER_OF_ATACK_STEPS 18
.eqv NUMBER_OF_STEPS_UNTIL_FIRST_LIFE 20
.eqv NUMBER_OF_MAX_LIFE 25
.eqv NUMBER_OF_STEPS_UNTIL_SECOND_ATACK 45
.eqv NUMBER_OF_STEPS_UNTIL_SECOND_LIFE 63


# TIPES
.eqv AL_AZUL 1
.eqv AL_VER 2
.eqv AL_MAR 3
.eqv IN_AZUL 4
.eqv IN_VER 5
.eqv IN_MAR 6

# Estados do jogo
.eqv GAME_STATE_INIT 0
.eqv GAME_STATE_CHOOSE_ALLY 1
.eqv GAME_STATE_MAKING_TRAIL 2
.eqv GAME_STATE_MOVING_PLAYER 3
.eqv GAME_STATE_MOVING_ALLY 4
.eqv GAME_STATE_MOVING_ENEMY 5
.eqv GAME_STATE_IN_COMBAT 6
.eqv GAME_STATE_ACTION_MENU 7
.eqv GAME_STATE_CHOOSE_ENEMY 8
.eqv GAME_STATE_CHECK_TURN 9
.eqv GAME_STATE_ENEMY_WINS 10
.eqv GAME_STATE_CHECK_NEXT_MAP 11
.eqv GAME_STATE_NEXT_TURN 12
.eqv GAME_STATE_MOVE_ENEMY 13
.eqv GAME_STATE_AFTER_MOVE 14
.eqv GAME_STATE_ENTER_COMBAT 15
.eqv GAME_STATE_ENEMY_DELAY 16
.eqv GAME_STATE_ENEMY_ENTER_COMBAT 17
.eqv GAME_STATE_MAP_TRANSITION 18
.eqv GAME_STATE_ALLY_PHASE_TRANSITION 19
.eqv GAME_STATE_WIN_MAP 20
.eqv GAME_STATE_START_MAP 21
.eqv GAME_STATE_ENEMY_PHASE_TRANSITION 22
.eqv GAME_STATE_DIALOGUE 23
.eqv GAME_STATE_VICTORY_DIALOGUE 24
.eqv GAME_STATE_VICTORY_MENU 25

# Constantes do ACTIONS_MENU
.eqv ACTIONS_MENU_STRING_COL 0x000009ff
.eqv ACTIONS_MENU_BG_COL 0x09090909
.eqv ACTIONS_MENU_TAMANHO_X 60
.eqv ACTIONS_MENU_TAMANHO_Y 30
.eqv ACTIONS_MENU_POS_X_LEFT 5
.eqv ACTIONS_MENU_POS_Y_LEFT 90
.eqv ACTIONS_MENU_POS_X_RIGHT 255
.eqv ACTIONS_MENU_POS_Y_RIGHT 90

# Attack mode constants
.eqv CURSOR_ATTACK_UP 0
.eqv CURSOR_ATTACK_LEFT 1
.eqv CURSOR_ATTACK_DOWN 2
.eqv CURSOR_ATTACK_RIGHT 3

# Player and Enemies
.eqv ALLY_WATER_STILL_FRAME0 0
.eqv ALLY_WATER_STILL_FRAME1 1
.eqv ALLY_FIRE_STILL_FRAME0 2
.eqv ALLY_FIRE_STILL_FRAME1 3
.eqv ALLY_EARTH_STILL_FRAME0 4
.eqv ALLY_EARTH_STILL_FRAME1 5

.eqv ENEMY_WATER_STILL_FRAME0 6
.eqv ENEMY_WATER_STILL_FRAME1 7
.eqv ENEMY_FIRE_STILL_FRAME0 8
.eqv ENEMY_FIRE_STILL_FRAME1 9
.eqv ENEMY_EARTH_STILL_FRAME0 10
.eqv ENEMY_EARTH_STILL_FRAME1 11

# Cursor
.eqv CURSOR_NUM0 12 # tile number of first frame of cursor animation
.eqv CURSOR_NUM1 13 # tile number of second frame of cursor animation

# Trail
.eqv TRAIL_VERTICAL_TILE 14
.eqv TRAIL_HORIZONTAL_TILE 15
.eqv TRAIL_UR_TILE 16
.eqv TRAIL_UL_TILE 17
.eqv TRAIL_DR_TILE 18
.eqv TRAIL_DL_TILE 19

.eqv ARROW_RIGHT_TILE 20
.eqv ARROW_LEFT_TILE 21
.eqv ARROW_UP_TILE 22
.eqv ARROW_DOWN_TILE 23

# Cursor atack
.eqv CURSOR_ATTACK_NUM0 24
.eqv CURSOR_ATTACK_NUM1 25

# Transition
.eqv WIN_STRING_COLOR 0x000009ff
.eqv LOOSE_STRING_COLOR 0x000009ff

# Dialogue
.eqv MAP0_NSTRINGS 4
.eqv MAP1_NSTRINGS 4
.eqv MAP2_NSTRINGS 4
.eqv MAP3_NSTRINGS 4
.eqv MAP4_NSTRINGS 4
.eqv VICTORY_NSTRINGS 4