extends CharacterBody2D


func _process(_delta: float):
	
	if Input.is_action_pressed("move_right"):
		position.x += 1
	if Input.is_action_pressed("move_left"):
		position.x -= 1
	if Input.is_action_pressed("move_down"):
		position.y += 1
	
	#Move up will need to be limited to surface of tilemap eventually
	if Input.is_action_pressed("move_up"):
		position.y -= 1
		
	
