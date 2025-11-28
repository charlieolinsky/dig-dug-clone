extends CharacterBody2D


func _ready():
	$AnimatedSprite2D.play("walk_right")

func _process(_delta: float):
	
	#tackle this later
	if Input.is_action_pressed("attack"):
		pass
		
	#Movement
	if Input.is_action_pressed("move_right"):
		position.x += 1
		$AnimatedSprite2D.play("walk_right")
	elif Input.is_action_pressed("move_left"):
		position.x -= 1
		$AnimatedSprite2D.play("walk_left")
	elif Input.is_action_pressed("move_down"):
		position.y += 1
		$AnimatedSprite2D.play("walk_down")
	
	#Move up will need to be limited to surface of tilemap eventually
	elif Input.is_action_pressed("move_up"):
		position.y -= 1
		$AnimatedSprite2D.play("walk_up")
	else:
		$AnimatedSprite2D.stop()
	
	#position.clamp
		
		
	
		
	
