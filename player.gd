extends CharacterBody2D


func _process(_delta: float):
	
	#tackle this later
	if Input.is_action_pressed("attack"):
		pass
		
	#Movement
	if Input.is_action_pressed("move_right"):
		position.x += 1
		$AnimatedSprite2D.play("walk_right_unarmed")
	elif Input.is_action_pressed("move_left"):
		position.x -= 1
		$AnimatedSprite2D.play("walk_left_unarmed")
	elif Input.is_action_pressed("move_down"):
		position.y += 1
		$AnimatedSprite2D.play("walk_down_unarmed")
	
	#Move up will need to be limited to surface of tilemap eventually
	elif Input.is_action_pressed("move_up"):
		position.y -= 1
		$AnimatedSprite2D.play("walk_up_unarmed")
	else:
		$AnimatedSprite2D.stop()
		
		
	
		
	
