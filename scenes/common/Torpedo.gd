extends Area2D


var direction := Vector2(1, 0)
var projectile_speed = 1000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	self.position += direction.rotated(rotation) * projectile_speed * delta


func _on_Lifetime_timeout():
	queue_free()
