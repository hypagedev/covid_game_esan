extends Node2D


var virus = preload("res://escenas/virus.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize() # generar semillas aleatorias
	get_node("Timer").connect("timeout", self, "_on_timer" )


func _on_timer():
	var virus_instance = virus.instance()
	virus_instance.position = Vector2(0, rand_range(0, 600))
	add_child(virus_instance)
