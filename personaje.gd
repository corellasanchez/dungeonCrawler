extends Node2D

class_name Personaje, "res://assets/iconos/personaje.png"

export (PackedScene) var Espada

onready var animation = get_node("AnimationPlayer")
onready var label = get_node("Label")
onready var manoIzquierda = get_node("torso/brazo iz/fin")

onready var espada = Espada.instance()


# Called when the node enters the scene tree for the first time.
func _ready():
	
	espada.position = Vector2(200,200)
	add_child(espada)
	espada.escogerArma('espadaCorta')
	# set_process_input(true)

	
func _process(delta):
	posicionManoDerecha();
	#var State = "Descanso"
	#print(animation.get_current_animation())	
	#if animation.get_current_animation() == State:
#		print("Hello")
	#  animation.play(State) 

func posicionManoDerecha():
	label.text = str(manoIzquierda.get_global_position())
	espada.set_global_position(manoIzquierda.get_global_position()) 
	#print(str(manoIzquierda.position.get_global_position()))

