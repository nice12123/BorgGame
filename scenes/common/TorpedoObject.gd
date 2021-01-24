extends Node2D


var torpedo_scene := load("res://scenes/common/Torpedo.tscn")


func shoot():
	var torpedo = torpedo_scene.instance()
	torpedo.global_position = self.global_position
	torpedo.rotation = self.global_rotation
	get_node("/root/Main").add_child(torpedo)
