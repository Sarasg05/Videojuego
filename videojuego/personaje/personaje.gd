class_name Personaje
extends CharacterBody2D

@export var speed = 200
@export var jump_speed = 400
@export var gravity = 800

func _physics_process(delta):
	# Movimiento horizontal
	var direction = Input.get_action_strength("derecha") - Input.get_action_strength("izquierda")
	velocity.x = direction * speed

	# Gravedad
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0  # Resetear al tocar el suelo

	# Saltar
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		velocity.y = -jump_speed

	# Mover
	move_and_slide()
