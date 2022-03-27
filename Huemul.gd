extends KinematicBody2D

export var speed = 250
export var gravity = 1000
export var jump_speed = -1000
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed('ui_right'):
		velocity.x += speed
	if Input.is_action_pressed('ui_left'):
		velocity.x -= speed
		
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_speed
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
