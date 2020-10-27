extends Control

func _input(event):
	if event.is_action_pressed("escape"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		self.visible = new_pause_state
	
	
