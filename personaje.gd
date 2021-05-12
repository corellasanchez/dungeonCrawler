extends Node2D

class_name Personaje, "res://assets/iconos/personaje.png"

onready var animation = get_node("AnimationPlayer")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)

	
func _fixed_process(delta):
	var State = "Descanso"
	print(animation.get_current_animation())	
	if animation.get_current_animation() == State:
		print("Hello")
	#  animation.play(State) 


