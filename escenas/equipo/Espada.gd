extends Node2D

class_name Espada, "res://assets/iconos/espada.png"

# Datos de la espada equipada
var espadaEquipada

# Sprite de la espada
var texturaEspada

# Espadas disponibles
var tiposDeEspada = [
	{"nombre": "espadaCorta", "ataque": 10, "textura" : preload("res://assets/equipo/espadas/espada_corta.png")}
	]

# Constructor
func _init(nodoEspada):
	texturaEspada = nodoEspada
	desequipar()

# Desequipar la espada actual	
func desequipar():
	espadaEquipada = null
	texturaEspada.visible = false

#Equipar una espada de la lista
func equipar(nombre: String):
	for i in range(0,tiposDeEspada.size()):
		if(tiposDeEspada[i].nombre == nombre):
			espadaEquipada = tiposDeEspada[i]
			texturaEspada.texture = tiposDeEspada[i].textura
			texturaEspada.visible = true
