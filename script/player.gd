extends CharacterBody2D

@onready var animation: AnimationPlayer = $AnimationPlayer
@onready var sprite: Sprite2D = $Sprite2D

# espera carregar todo o nó
func setup(data):
	if not is_node_ready():
		await ready

	# essa var é a responsável por trocar a classe e o sexo do personagem 
	var new_player = load(data.sprite_sheet)
	
	if new_player: 
		sprite.texture = new_player # nova textura da sprite
		print("nova textura carregada")
	else:
			print("moiou, não carregou a nova texture...")
	animation.play("idle")
