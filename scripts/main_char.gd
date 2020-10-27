extends KinematicBody2D

export (int) var speed = 300
export (int) var jump_speed = -500
export (int) var GRAVITY = 1200
export (int) var doubleJump = 0

const UP = Vector2(0,-1)

var velocity = Vector2()

var animation = "diam"

var is_dead = false

var currentFallSpeed

func get_input():
	velocity.x = 0
	speed = 300
	jump_speed = -500
	if is_on_floor():
		doubleJump = 0
		animation = "diam"
		if Input.is_action_pressed("ui_right"):
			animation = "jalan"
		if Input.is_action_pressed("ui_left"):
			animation = "jalan"
		if Input.is_key_pressed(KEY_SHIFT) and Input.is_action_pressed("ui_right"):
			animation = "lari"
			speed = 500
		if Input.is_key_pressed(KEY_SHIFT) and Input.is_action_pressed("ui_left"):
			animation = "lari"
			speed = 500
	if is_on_floor() and Input.is_key_pressed(KEY_SHIFT) and Input.is_action_just_pressed('ui_up'):
		jump_speed = -700
		velocity.y = jump_speed
#		$JumpSound.play()
	elif is_on_floor() and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed
#		$JumpSound.play()
	#if (not is_on_floor()) and Input.is_action_just_released("ui_up") and doubleJump == 0:
	#	doubleJump = 1
	#if Input.is_action_just_pressed("ui_up") and doubleJump == 1:
	#	velocity.y = jump_speed
	#	doubleJump = 2
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	
	if $AnimatedSprite.animation != animation:
		$AnimatedSprite.play(animation)

func _physics_process(delta):
	#if Input.is_key_pressed(KEY_ESCAPE):
	#	if Global.is_paused == true:
	#		Global.is_paused = false
	#		velocity.y = currentFallSpeed
	#	else:
	#		Global.is_paused = true
		
		
	if Global.is_paused:
		currentFallSpeed = velocity.y
		velocity.x = 0
		velocity.y = 0
		
	if is_dead == false and Global.is_paused == false:
		velocity.y += delta * GRAVITY
		get_input()
		velocity = move_and_slide(velocity, UP)
		
		if get_slide_count() > 0:
			for i in range(get_slide_count()):
				if "Enemy" in get_slide_collision(i).collider.name:
					Global.lives -= 1
					dead()
					if Global.lives == 0:
						real_dead()
					else:
						temporary_dead()
		
func dead():
	is_dead = true
	$AnimatedSprite.play("mati")
	$CollisionShape2D.disabled = true

func real_dead():
	$Timer.start()
	
func temporary_dead():
	$Timer2.start()
	
func _process(delta):
	if velocity.y < 0:
		animation = 'lompat'
	if velocity.y > 0:
		animation = 'mendarat'
	if velocity.x > 0:
		$AnimatedSprite.flip_h = false
	if velocity.x < 0:
		$AnimatedSprite.flip_h = true 


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/GameOver.tscn")


func _on_Timer2_timeout():
	Global.current_scene = get_tree().get_current_scene().get_name()
	get_tree().change_scene(str("res://scenes/" + Global.current_scene + ".tscn"))
	#get_tree().change_scene(str("res://scenes/TryAgain.tscn"))
