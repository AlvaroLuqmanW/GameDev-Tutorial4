extends Node2D

export (PackedScene) var obstacle

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x

	spawned.global_position = spawn_pos
	spawned.linear_velocity = Vector2(-800, 0)

func repeat():
	spawn()
	yield(get_tree().create_timer(5), "timeout")
	repeat()
