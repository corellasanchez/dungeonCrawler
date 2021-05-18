extends Node2D

class_name Personaje, "res://assets/iconos/personaje.png"

onready var animation = get_node("AnimationPlayer")
onready var label = get_node("Label")

# Clase de la espada
const Espada = preload("res://escenas/equipo/Espada.gd")
# Sprite de la espada
onready var nodoEspada = get_node("torso/brazo iz/fin/espada")
# Instancia de la espada
var espada

# Clase del escudo
const Escudo = preload("res://escenas/equipo/Escudo.gd")
# Sprite del escudo
onready var nodoEscudo = get_node("torso/brazo der/fin/escudo")
# Instancia de la espada
var escudo

# Clase del casco
const Casco = preload("res://escenas/equipo/Casco.gd")
# Sprite del casco
onready var nodoCasco = get_node("torso/cabeza/casco")
# Instancia de la espada
var casco

# Clase de la armadura
const Armadura = preload("res://escenas/equipo/Armadura.gd")
# Sprite de la armadura
onready var nodoArmadura = get_node("torso/armadura")
onready var nodoHombroIz = get_node("torso/brazo iz/hombro iz")
onready var nodoHombroDer = get_node("torso/brazo der/hombro der")
# Instancia de la armadura
var armadura

# Clase de los pantalones
const Pantalones = preload("res://escenas/equipo/Pantalones.gd")
# sprites de las piernas
onready var piernaIzquierda = get_node("torso/pierna iz")
onready var piernaDerecha = get_node("torso/pierna der")
# Instancia de las piernas
var pantalones

# Called when the node enters the scene tree for the first time.
func _ready():
	inicializarPartes()
	probarEquipo()

func inicializarPartes():
	espada = Espada.new(nodoEspada)
	escudo = Escudo.new(nodoEscudo)
	casco = Casco.new(nodoCasco)
	armadura = Armadura.new(nodoArmadura,nodoHombroIz,nodoHombroDer)
	pantalones = Pantalones.new(piernaIzquierda,piernaDerecha)

func probarEquipo():
	
	espada.equipar("espadaCorta")
	
	# escudoDeCoronas escudoDeMadera
	escudo.equipar('escudoDeMadera')
	
	# cascoDeCuero cascoDeHierro
	casco.equipar("cascoDeHierro")
	
	# armaduraDeCuero armaduraTachonada
	armadura.equipar("armaduraDeCuero")
	
	# pantalonesDeCuero
	pantalones.equipar("pantalonesTachonados")
	
	#animation.play("Caminar")
	animation.play("AtaqueEspadas")
	#animation.play("Descanso")

func _process(delta):
	pass


