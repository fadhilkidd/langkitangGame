extends RigidBody2D


func _process(delta):
	if Global.switches == 1:
		$TileMap3.clear()
	if Global.switches == 2:
		$TileMap1.clear()
	if Global.switches == 3:
		$TileMap2.clear()