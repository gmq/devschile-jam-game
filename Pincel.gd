extends KinematicBody2D

export(PackedScene) var nes
export var speed = 50
export var gravity = 1000
export var jump_speed = -600
var velocity = Vector2.ZERO
export var shoot_bullet = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	randomize()
	velocity.y += gravity * delta
	if is_on_floor():
		velocity.y += jump_speed
		velocity.x += speed * rand_range(-4, 4)
		
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if velocity.x > -1:
		$AnimatedSprite.set_flip_h(true)
	else:
		$AnimatedSprite.set_flip_h(false)
		
	if (shoot_bullet):
		shoot_bullet = false
		var nes_instance = nes.instance() 
		var player_position = get_node("../Huemul").get_position();
		var bullet_rotation = Vector2((player_position.x - get_position().x) * 0.5, -300)
		nes_instance.position = get_position()
		get_node("/root/").add_child(nes_instance)
		nes_instance.apply_impulse(Vector2.ZERO, bullet_rotation)

func _on_Timer_timeout():
	shoot_bullet = true
