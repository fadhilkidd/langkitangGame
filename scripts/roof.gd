extends KinematicBody2D

export (int) var GRAVITY = 0

const UP = Vector2(0,-1)

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += 0.05 * GRAVITY
	
	velocity = move_and_slide(velocity, UP)
	if get_slide_count() > 0:
		for i in range(get_slide_count()):
			if "Player" in get_slide_collision(i).collider.name:
				Global.wilreincarnate = true
	
