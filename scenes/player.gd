extends CharacterBody2D

var speed = 400  # speed in pixels/sec

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	if direction != Vector2.ZERO:
		# Calculate the angle in radians using atan2
		rotation = direction.angle()
		position += direction * speed * delta
	
	move_and_slide()
