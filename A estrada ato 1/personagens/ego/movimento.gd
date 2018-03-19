 #script que move o ego

extends Node

var velocidade = 1 #velocidade do Ego, na forma de um multiplicador
var egoMovendo = false #verifica se o Ego esta se movendo
onready var anim = $"../Anim"

func _ready():
	
	set_process_input(true)
	set_process(true)
	
func _input(event):
	
	if(Input.is_action_just_pressed("moveDireita")):
		
		anim.play("egoAndando")
		
	elif(Input.is_action_just_released("moveDireita")):
		
		anim.play("egoParado")