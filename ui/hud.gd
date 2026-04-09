extends CanvasLayer

var max_time = 45
var current_time = 0
var seconds = 0.0
var game_over_started = false

func _process(delta):
	seconds += delta
	if (seconds >= 1.0):
		seconds -= 1.0
		current_time += 1
		current_time = min(current_time, max_time)
	
		%PoopBar.value = current_time
		
		if current_time >= max_time and not game_over_started:
			_trigger_game_over()

func _trigger_game_over():
	game_over_started = true  
	var current_scene = get_tree().get_current_scene()
	var lulu = current_scene.get_node("Lulu")
	lulu.play_poop_animation()

func remove_time(amount):
	current_time = max(current_time - amount, 0)
	%PoopBar.value = current_time
