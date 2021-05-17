extends Node2D

class_name Peto, "res://assets/iconos/peto.png"

onready var textura = get_node("textura")
onready var mangaIz = get_node("txMangaIz")
onready var mangaDer = get_node("txMangaDer")

# Proteccion que provee la armadura
var defensa;

# Texturas para los armaduras

# armadura de cuero lijera
var txArmaduraDeCueroLijera = preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/torso.png")
var txHombroArmaduraDeCueroLijera = preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/hombro.png")

# armadura de cuero tachonada
var txArmaduraDeCueroTachonada = preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/torso.png")
var txHombroArmaduraDeCueroTachonada = preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/hombro.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func escogerTipo(nombre):
	match nombre:
		"ArmaduraDeCueroLijera":
			defensa = 10;
			textura.texture = txArmaduraDeCueroLijera
			mangaIz.texture = txHombroArmaduraDeCueroLijera
			mangaDer.texture = txHombroArmaduraDeCueroLijera
		"ArmaduraDeCueroTachonada":
			defensa = 15;
			textura.texture = txArmaduraDeCueroTachonada
			mangaIz.texture = txHombroArmaduraDeCueroTachonada
			mangaDer.texture = txHombroArmaduraDeCueroTachonada
