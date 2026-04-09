extends Control

func _on_play_again_pressed() -> void:
	get_tree().change_scene_to_file("res://lulu_chaos_walk.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/menu.tscn")
