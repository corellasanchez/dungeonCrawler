extends Node2D

class_name Peto, "res://assets/iconos/peto.png"

onready var textura = get_node("textura")
onready var mangaIz = get_node("txMangaIz")
onready var mangaDer = get_node("txMangaIz")

# Proteccion que provee la armadura
var defensa;

# Texturas para los armaduras
var txArmaduraDeCueroLijera = preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/torso.png")
var txHombroArmaduraDeCueroLijera = preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/hombro.png")

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
