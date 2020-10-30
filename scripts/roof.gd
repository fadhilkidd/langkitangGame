extends KinematicBody2D

export (int) var GRAVITY = 0

const UP = Vector2(0,-1)

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += 0.05 * GRAVITY
	
	velocity = move_and_slide(velocity, UP)
	
