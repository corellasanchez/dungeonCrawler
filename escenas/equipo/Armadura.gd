extends Node2D

class_name Peto, "res://assets/iconos/peto.png"

# Datos de la armadura equipada
var armaduraEquipada

# Sprite de la armadura
var texturaArmadura

# Sprite del hombro izquierdo
var txHombroIz

# Sprite del hombro derecho
var txHombroDer

# Armaduras disponibles
var tiposDeArmadura = [
	{"nombre": "armaduraDeCuero",
	 "defensa": 10,
	 "textura" : preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/torso.png"),
	 "hombro": preload("res://assets/equipo/armaduras/armadura_de_cuero_lijera/hombro.png")
	},
	{"nombre": "armaduraTachonada",
	 "defensa": 15,
	 "textura" : preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/torso.png"),
	 "hombro": preload("res://assets/equipo/armaduras/armadura_de_cuero_tachonada/hombro.png")
	},
	]

# Constructor
func _init(nodoArmadura, nodoHombroIz, nodoHombroDer):
	texturaArmadura = nodoArmadura
	txHombroIz = nodoHombroIz
	txHombroDer = nodoHombroDer
	desequipar()

# Desequipar la armadura actual	
func desequipar():
	armaduraEquipada = null
	texturaArmadura.visible = false
	txHombroIz.visible  = false
	txHombroDer.visible  = false
	
#Equipar una armadura de la lista
func equipar(nombre: String):
	for i in range(0,tiposDeArmadura.size()):
		if(tiposDeArmadura[i].nombre == nombre):
			armaduraEquipada = tiposDeArmadura[i]
			texturaArmadura.texture = tiposDeArmadura[i].textura
			txHombroIz.texture = tiposDeArmadura[i].hombro
			txHombroDer.texture = tiposDeArmadura[i].hombro
			texturaArmadura.visible = true
			txHombroIz.visible  = true
			txHombroDer.visible  = true
