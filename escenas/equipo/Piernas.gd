extends Node2D

class_name Piernas, "res://assets/iconos/piernas.png"

# Proteccion que provee la armadura
var defensa
var textura

# Texturas para los armaduras

# armadura de cuero lijera
var txArmaduraDeCueroLijera = preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/pierna.png")

# armadura de cuero tachonada
var txArmaduraDeCueroTachonada = preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/pierna.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func escogerTipo(nombre):
	match nombre:
		"ArmaduraDeCueroLijera":
			defensa = 10;
			textura = txArmaduraDeCueroLijera
		"ArmaduraDeCueroTachonada":
			defensa = 15;
			textura = txArmaduraDeCueroTachonada
