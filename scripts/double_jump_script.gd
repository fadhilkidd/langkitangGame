extends Label

func _process(delta):
	if Global.reincarnate:
		self.visible = true
