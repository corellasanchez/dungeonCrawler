extends Node2D

class_name Espada, "res://assets/iconos/espada.png"

onready var textura = get_node("textura")

# Dano provocado por la espada
var ataque;

# Texturas para espadas
var txEspadaCorta = preload("res://assets/equipo/espadas/espada_corta.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func escogerTipo(nombre):
	match nombre:
		"espadaCorta":
			ataque = 10;
			textura.texture = txEspadaCorta;
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
