extends RigidBody2D

export var sceneLose = "LoseScreen"
export var sceneLvl1 = "Level1"

func _on_RigidBody2D_body_entered(body):
	if body is KinematicBody2D:
		print("Hit Player!")
		get_tree().change_scene(str("res://scenes/" + sceneLose + ".tscn"))
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene(str("res://scenes/" + sceneLvl1 + ".tscn"))

	elif body is TileMap:
		print("Hit Tile!")
		queue_free()
	else:
		pass
