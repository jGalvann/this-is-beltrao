# Script Global
extends Node

var character_data = {
	"cleriga" : {
		"name" : "Cleriga",
		"portrait" : "res://portrait/cleric(f)v2.png",
		"sprite_sheet" : "res://sprite/cleric_female.png",
	},
	"clerigo" : {
		"name" : "Clerigo",
		"portrait" : "res://portrait/cleric(m).png",
		"sprite_sheet" : "res://sprite/cleric_male.png",
	},
	"maga" : {
		"name" : "Maga",
		"portrait" : "res://portrait/wizard(f).png",
		"sprite_sheet" : "res://sprite/wizard_female.png",

	},
	"mago" : {
		"name" : "Mago",
		"portrait" : "res://portrait/wizard(m).png",
		"sprite_sheet" : "res://sprite/wizard_male.png",
	},
	"guerreira" : {
		"name" : "Guerreira",
		"portrait" : "res://portrait/warrior(f).png",
		"sprite_sheet" : "res://sprite/warrior_female.png",

	},
	"guerreiro" : {
		"name" : "Guerreiro",
		"portrait" : "res://portrait/warrior(m).png",
		"sprite_sheet" : "res://sprite/warrior_male.png",
	},
	"arqueira" : {
		"name" : "Arqueira",
		"portrait" : "res://portrait/ranger(f).png",
		"sprite_sheet" : "res://sprite/ranger_female.png",

	},
	"arqueiro" : {
		"name" : "Arqueiro",
		"portrait" : "res://portrait/ranger(m).png",
		"sprite_sheet" : "res://sprite/ranger.png",
	},
}
# variavel que guarda o id do personagem escolhido

var selected_char_key : String = ""
