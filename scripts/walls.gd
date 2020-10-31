extends Node2D


func _process(delta):
	if Global.switches == 1:
		$TileMap3.clear()
	if Global.switches == 2:
		$TileMap1.clear()
	if Global.switches == 3:
		$TileMap2.clear()
	if Global.switches == 4:
		$TileMap.clear()
	if Global.switches == 5:
		$TileMap4.clear()
	if Global.trapOn == true:
		$TileMap5.clear()
