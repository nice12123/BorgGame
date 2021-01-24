extends RigidBody2D


# Declare member variables here. Examples:
var thrust = Vector2(250, 0)
var torque = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _unhandled_key_input(event: InputEventKey) -> void:
	if(event.is_action_pressed("torpedo")):
		$TorpedoObject.shoot()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _integrate_forces(_state):
	if Input.is_action_pressed("ui_up"):
		applied_force = thrust.rotated(rotation)
	else:
		applied_force = Vector2()
		
	var rotation_dir = 0
	if Input.is_action_pressed("ui_left"):
		rotation_dir -= 1
	if Input.is_action_pressed("ui_right"):
		rotation_dir += 1
	applied_torque = rotation_dir * torque
	
