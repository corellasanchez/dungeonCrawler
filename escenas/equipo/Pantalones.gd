extends Node2D

class_name Pantalones, "res://assets/iconos/piernas.png"

# Datos de la pantalones Equipados
var pantalonesEquipados

# Sprite de la pierna izquierda
var txPiernaIz

# Sprite de la pierna derecha
var txPiernaDer

# textura por defecto de las piernas
var txDefecto = preload("res://assets/cuerpo/pierna.png");

# pantaloness disponibles
var tiposDePantalones = [
	{"nombre": "pantalonesDeCuero",
	 "defensa": 10,
	 "textura" : preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/pierna.png")
	},
	{"nombre": "pantalonesTachonados",
	 "defensa": 15,
	 "textura" : preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/pierna.png")
	},
	]

# Constructor
func _init(nodoPiernaIz, nodoPiernaDer):
	txPiernaIz = nodoPiernaIz
	txPiernaDer = nodoPiernaDer
	desequipar()

# Desequipar la pantalones actual	
func desequipar():
	pantalonesEquipados = null
	txPiernaIz.texture  = txDefecto
	txPiernaDer.texture  = txDefecto
	
#Equipar una pantalones de la lista
func equipar(nombre: String):
	for i in range(0,tiposDePantalones.size()):
		if(tiposDePantalones[i].nombre == nombre):
			pantalonesEquipados = tiposDePantalones[i]
			txPiernaIz.texture = tiposDePantalones[i].textura
			txPiernaDer.texture = tiposDePantalones[i].textura
