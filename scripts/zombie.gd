extends KinematicBody2D

export (int) var speed = 100
export (int) var GRAVITY = 1200

const UP = Vector2(0,-1)

var velocity = Vector2()

var animation = 'jalan'
var direction = 1

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	velocity.x = speed * direction
	
	velocity = move_and_slide(velocity, UP)
	
	if is_on_wall():
		direction = direction * -1
		$RayCast2D.position.x *= -1
		
	if $RayCast2D.is_colliding() == false:
		direction *= -1
		$RayCast2D.position.x *= -1
	
	if $AnimatedSprite.animation != animation:
		$AnimatedSprite.play(animation)
		
	if get_slide_count() > 0:
		for i in range(get_slide_count()):
			if "Player" in get_slide_collision(i).collider.name:
				Global.shouldDie = true
	
func _process(delta):
	if velocity.x > 0:
		$AnimatedSprite.flip_h = false
	if velocity.x < 0:
		$AnimatedSprite.flip_h = true 
