extends Node2D

@onready var map: TileMapLayer = $Map
@onready var player_pos: Node2D = $PlayerPos
@onready var camera: Camera2D = $Camera2D


#Pré carregamento do personagem escolhido
var new_game = preload("res://scene/player.tscn")
var pos = Vector2i(33,34) # lugar inicial do jogado

func _ready() -> void:
		
		var dados = Global.characters_data[Global.selected_char_key]
		
		# instancia jogador ( sprite ) no mapa. 
		
		var hero = new_game.instantiate()
		
		# carregar herói no local escolhido 
		player_pos.add_child(hero)
		
		hero.setup(dados)
		
		var positionHero = map.map_to_local(pos)
		# aqui o personagem vai parar no mapa ( posição global ) 
		hero.global_position = positionHero
		
	# passa o jogador local para a camera. 
		configurarCamera(hero)

func configurarCamera(jogador_local):
	# pega as propriedades da camera 
	var remote = RemoteTransform2D.new()
	# faz a camera seguir o personagem 
	remote.remote_path = camera.get_path()
	jogador_local.add_child(remote)

	# posicionar a camera 
	camera.global_position = jogador_local.global_position
func _process(delta: float) -> void:
	pass
