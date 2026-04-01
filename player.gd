extends CharacterBody2D

# Referencia as animações do Personagem 
@onready var animacao = $AnimatedSprite2D

# Variavel d movimento de personagem
@export var speed = 50 

# variavel de controle de estados
var esta_atacando = false

func _physics_process(delta: float) -> void:
	 # esperea a animação de ataque terminar antes de executar outra ação
	if esta_atacando : 
		return
	# personagem comeca parado
	var direcao = Vector2.ZERO
	
	
	# pegar os inputs do teclado pa andar 
	direcao.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direcao.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	# normalizacao de vetor
	
	velocity = direcao.normalized() * speed
	
	move_and_slide()
	
	# animações 
	# se estiver parado, faz a animação correspondente 
	if direcao == Vector2.ZERO:
		animacao.play("idle")
	# se estiver andando, anda...
	if direcao.x != 0: 
		animacao.play("walk") 
		animacao.flip_h = direcao.x < 0
	else : 
		animacao.flip_h
		animacao.play("walk")
	
func _input(event):
	if event.is_action_pressed("atacar") and not esta_atacando:
		attack()


func attack():
	esta_atacando = true
	velocity = Vector2.ZERO
	animacao.play("ataque")
	
	

func _on_animated_sprite_2d_animation_finished() -> void:
	if animacao.animation == "ataque" :
		esta_atacando = false
