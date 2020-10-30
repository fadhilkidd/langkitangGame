extends Node2D

func _process(delta):
	if Global.reincarnate:
		self.visible = false
