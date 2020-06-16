extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_dir = Vector2()
	if(Input.is_key_pressed(KEY_RIGHT)):
		input_dir.x += 1.0
	if(Input.is_key_pressed(KEY_LEFT)):
		input_dir.x -= 1.0
		
	position += (delta*100.0)*input_dir
	
