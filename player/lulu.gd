extends CharacterBody2D

# -------------------------
# CONSTANTES DE MOVIMIENTO
# -------------------------
const SPEED = 150
const RUN_SPEED = 250
const JUMP_FORCE = -300

# -------------------------
# ESTADOS
# -------------------------
var is_sitting = false
var is_transitioning = false
var facing_right = true

@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):

	# -------------------------
	# DETECTAR DIRECCIÓN
	# -------------------------
	var direction = 0
	if Input.is_action_pressed("Walk_right"):
		direction += 1
	if Input.is_action_pressed("Walk_left"):
		direction -= 1

	# Guardamos hacia dónde mira
	if direction != 0:
		facing_right = direction > 0

	# -------------------------
	# SENTARSE / LEVANTARSE
	# -------------------------
	if Input.is_action_just_pressed("Sit") and is_on_floor() and not is_transitioning:
		is_transitioning = true
		if is_sitting:
			sprite.play_backwards("sit")  # levantarse
		else:
			sprite.play("sit")            # sentarse

	# Si está sentado, mover o saltar lo levanta automáticamente
	if is_sitting and not is_transitioning:
		if direction != 0 or Input.is_action_pressed("Run") or Input.is_action_just_pressed("Jump"):
			is_transitioning = true
			sprite.play_backwards("sit")

	# -------------------------
	# BLOQUEAR MOVIMIENTO SI ESTÁ SENTADO O EN TRANSICIÓN
	# -------------------------
	if is_sitting or is_transitioning:
		velocity.x = 0
		move_and_slide()
		# Mantener animación y dirección correcta
		if sprite.animation != "sit":
			sprite.play("sit")
		sprite.flip_h = not facing_right
		# Revisar si terminó la animación
		if is_transitioning and not sprite.is_playing():
			is_transitioning = false
			is_sitting = not is_sitting
		return

	# -------------------------
	# MOVIMIENTO NORMAL
	# -------------------------
	var is_running = Input.is_action_pressed("Run")
	var current_speed = SPEED
	if is_running:
		current_speed = RUN_SPEED

	velocity.x = direction * current_speed

	# Gravedad
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Salto
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_FORCE

	move_and_slide()

	# -------------------------
	# ANIMACIONES PRINCIPALES
	# -------------------------
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

	# Siempre aplicar dirección
	sprite.flip_h = not facing_right
