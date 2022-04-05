extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var map_limits = $TileMap.get_used_rect()
	var map_cellsize = $TileMap.cell_size
	$Huemul/Camera2D.limit_bottom = map_limits.end.y * map_cellsize.y
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
