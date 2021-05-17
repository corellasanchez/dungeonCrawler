extends Node2D

class_name Casco, "res://assets/iconos/casco.png"

onready var textura = get_node("textura")

# Proteccion que provee el casco
var defensa;

# Texturas para cascos
var txCascoDeCuero = preload("res://assets/equipo/cascos/casco_de_cuero_lijero.png")
var txCascoDeCueroHierro = preload("res://assets/equipo/cascos/casco_de_hierro_cuero.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func escogerTipo(nombre):
	match nombre:
		"cascoDeCuero":
			defensa = 10;
			textura.texture = txCascoDeCuero;
		"cascoDeCueroHierro":
			defensa = 15;
			textura.texture = txCascoDeCueroHierro;
			
