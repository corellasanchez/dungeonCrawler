extends Node2D

class_name Escudo, "res://assets/iconos/escudo.png"

# Datos del Escudo equipado
var escudoEquipado

# Sprite del Escudo
var texturaEscudo

# Escudos disponibles
var tiposDeEscudo = [
	{"nombre": "escudoDeMadera", "defensa": 10, "textura" : preload("res://assets/equipo/escudos/escudo_de_madera.png")},
	{"nombre": "escudoDeCoronas", "defensa": 15, "textura" : preload("res://assets/equipo/escudos/escudo_de_coronas.png")}
	]

# Constructor
func _init(nodoEscudo):
	texturaEscudo = nodoEscudo
	desequipar()

# Desequipar la Escudo actual	
func desequipar():
	escudoEquipado = null
	texturaEscudo.visible = false

#Equipar una escudo de la lista
func equipar(nombre: String):
	for i in range(0,tiposDeEscudo.size()):
		if(tiposDeEscudo[i].nombre == nombre):
			escudoEquipado = tiposDeEscudo[i]
			texturaEscudo.texture = tiposDeEscudo[i].textura
			texturaEscudo.visible = true
