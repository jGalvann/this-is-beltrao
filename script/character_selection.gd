extends CanvasLayer

@onready var grid_container: GridContainer = $VBoxContainer/GridContainer
@onready var confirm_button: Button = $VBoxContainer/ConfirmButton
@onready var label: Label = $VBoxContainer/Label

# var que guarda a key do personagem escolhido
var character_data = ""

func _ready() -> void: 
	Global.selected_char_key = ""
	if confirm_button: 
		confirm_button.disabled = true
	print("Selecione seu personagem!!")

func _on_texture_button_pressed(key : String) -> void:
	print("Personagem escolhido : " + key)
	Global.selected_char_key = key

	character_data = Global.character_data[key]
	label.text = "Herói selecionado: " + character_data.name()
	confirm_button.disabled = false
	
	

func _on_confirm_button_pressed() -> void:
	Global.selected_char_key = character_data
	get_tree().change_scene_to_file("res://scene/game.tscn")
