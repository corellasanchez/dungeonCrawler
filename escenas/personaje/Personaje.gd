extends Node2D

class_name Personaje, "res://assets/iconos/personaje.png"

export (PackedScene) var Espada
export (PackedScene) var Escudo
export (PackedScene) var Casco
export (PackedScene) var Armadura
export (PackedScene) var Piernas

onready var animation = get_node("AnimationPlayer")
onready var label = get_node("Label")

onready var manoIzquierda = get_node("torso/brazo iz/fin")
onready var manoDerecha = get_node("torso/brazo der/fin")
onready var cabeza = get_node("torso/cabeza")
onready var torso = get_node("torso")
onready var piernaIzquierda = get_node("torso/pierna iz")
onready var piernaDerecha = get_node("torso/pierna der")

onready var espada = Espada.instance()
onready var escudo = Escudo.instance()
onready var casco = Casco.instance()
onready var armadura = Armadura.instance()
onready var piernas = Piernas.instance()


# Called when the node enters the scene tree for the first time.
func _ready():
	
	add_child(espada)
	espada.escogerTipo('espadaCorta')
	
	add_child(escudo)
	escudo.escogerTipo('escudoDeCoronas')
	#escudo.escogerTipo('escudoDeMadera')
	
	add_child(casco)
	casco.escogerTipo('cascoDeCuero')
	
	add_child(armadura)
	#armadura.escogerTipo('ArmaduraDeCueroLijera')
	armadura.escogerTipo('ArmaduraDeCueroTachonada')
	
	add_child(piernas)
	piernas.escogerTipo('ArmaduraDeCueroTachonada')
	
func _process(delta):
	posicionarEquipo()

	#var State = "Descanso"
	#print(animation.get_current_animation())	
	#if animation.get_current_animation() == State:
#		print("Hello")
	#  animation.play(State) 

func posicionarEquipo():
	label.text = str(manoDerecha.get_global_position())
	escudo.set_global_position(manoDerecha.get_global_position()) 
	espada.set_global_position(manoIzquierda.get_global_position())
	casco.set_global_position(cabeza.get_global_position())
	armadura.set_global_position(torso.get_global_position())
	piernaIzquierda.texture = piernas.textura
	piernaDerecha.texture = piernas.textura
