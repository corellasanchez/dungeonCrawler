extends Node2D

class_name Casco, "res://assets/iconos/casco.png"

# Datos del casco equipado
var cascoEquipado

# Sprite del Casco
var texturaCasco

# Cascos disponibles
var tiposDeCasco = [
	{"nombre": "cascoDeCuero", "defensa": 10, "textura" : preload("res://assets/equipo/cascos/casco_de_cuero_lijero.png")},
	{"nombre": "cascoDeHierro", "defensa": 15, "textura" : preload("res://assets/equipo/cascos/casco_de_hierro_cuero.png")}
	]

# Constructor
func _init(nodoCasco):
	texturaCasco = nodoCasco
	desequipar()

# Desequipar la Casco actual	
func desequipar():
	cascoEquipado = null
	texturaCasco.visible = false

#Equipar una Casco de la lista
func equipar(nombre: String):
	for i in range(0,tiposDeCasco.size()):
		if(tiposDeCasco[i].nombre == nombre):
			cascoEquipado = tiposDeCasco[i]
			texturaCasco.texture = tiposDeCasco[i].textura
			texturaCasco.visible = true
