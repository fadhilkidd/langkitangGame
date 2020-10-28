extends Node2D

func _process(delta):
	$LifeCounter.text = "Lives : " + str(Global.lives)
	$Companion.text = "Companion: " + str(Global.companion)

