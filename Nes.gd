extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Nes_body_entered(body):
	if (body.get_name() == "Huemul"):
		body.get_node('../Hud').add_point()
	queue_free()
