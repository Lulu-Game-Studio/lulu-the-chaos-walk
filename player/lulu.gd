extends CharacterBody2D

const SPEED = 150
const RUN_SPEED = 250
const JUMP_FORCE = -300

var is_sitting = false
var is_transitioning = false
var facing_right = true

@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):

	# DETECT DIRECTION
	var direction = 0
	if Input.is_action_pressed("Walk_right"):
		direction += 1
	if Input.is_action_pressed("Walk_left"):
		direction -= 1

	# Store which way the character is facing
	if direction != 0:
		facing_right = direction > 0

	# SIT / STAND UP
	if Input.is_action_just_pressed("Sit") and is_on_floor() and not is_transitioning:
		is_transitioning = true
		if is_sitting:
			sprite.play_backwards("sit")
		else:
			sprite.play("sit")  

	# If sitting, moving or jumping automatically stands up
	if is_sitting and not is_transitioning:
		if direction != 0 or Input.is_action_pressed("Run") or Input.is_action_just_pressed("Jump"):
			is_transitioning = true
			sprite.play_backwards("sit")

	# BLOCK MOVEMENT IF SITTING OR IN TRANSITION
	if is_sitting or is_transitioning:
		velocity.x = 0
		move_and_slide()
		# Keep correct animation and facing direction
		if sprite.animation != "sit":
			sprite.play("sit")
		sprite.flip_h = not facing_right
		# Check if animation finished
		if is_transitioning and not sprite.is_playing():
			is_transitioning = false
			is_sitting = not is_sitting
		return

	# NORMAL MOVEMENT
	var is_running = Input.is_action_pressed("Run")
	var current_speed = SPEED
	if is_running:
		current_speed = RUN_SPEED

	velocity.x = direction * current_speed

	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Jump
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_FORCE

	move_and_slide()

	# MAIN ANIMATIONS
	update_animation(direction, is_running)

func update_animation(direction, is_running):
	if not is_on_floor():
		sprite.play("jump")
	elif direction != 0 and is_running:
		sprite.play("run")
	elif direction != 0:
		sprite.play("walk")
	else:
		sprite.play("idle")

	# Always apply facing direction
	sprite.flip_h = not facing_right
