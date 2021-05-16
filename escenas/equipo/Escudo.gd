extends Node2D

class_name Escudo, "res://assets/iconos/escudo.png"

onready var textura = get_node("textura")

# Proteccion que provee el escudo
var defensa;

# Texturas para los escudos
var txEscudoDeMadera = preload("res://assets/equipo/escudos/escudo_de_madera.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func escogerTipo(nombre):
	match nombre:
		"escudoDeMadera":
			defensa = 10;
			textura.texture = txEscudoDeMadera;
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
