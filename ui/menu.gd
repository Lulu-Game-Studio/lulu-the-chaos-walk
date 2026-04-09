extends Control

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://lulu_chaos_walk.tscn")

func _on_controls_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/controls.tscn")
