extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Lulu":
		var hud = get_tree().get_root().get_node("Game/HUD")
		if hud:
			hud.remove_time(5)
		queue_free()
