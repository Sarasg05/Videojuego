class_name Enemigo
extends CharacterBody2D

# --- CONFIGURACIÓN ---
const RUN := 90
const GRAVEDAD := 98
const SPEED := 190   # Velocidad cuando persigue al jugador
const FOLLOW_DISTANCE := 220  # Distancia para empezar a perseguir

var player: Node2D = null


func _ready() -> void:
	# Movimiento inicial
	velocity.x = -RUN
	$AnimatedSprite2D.play("run")

	# Buscar jugador en grupo
	var players = get_tree().get_nodes_in_group("player")
	if players.size() > 0:
		player = players[0]
	else:
		push_warning("No hay un nodo en el grupo 'player'")


func _physics_process(delta: float) -> void:
	# Aplicar gravedad siempre
	velocity.y += GRAVEDAD * delta

	# Rebotar en paredes (solo cuando NO persigue al jugador)
	if is_on_wall() and not is_following_player():
		velocity.x = -velocity.x

	# Perseguir jugador si está cerca
	if is_following_player():
		follow_player()

	# Ajustar dirección del sprite
	$AnimatedSprite2D.flip_h = velocity.x > 0
	
	# Mover
	move_and_slide()


# --- Lógica de persecución ---
func is_following_player() -> bool:
	if player == null:
		return false

	return global_position.distance_to(player.global_position) < FOLLOW_DISTANCE


func follow_player() -> void:
	var dir := (player.global_position - global_position).normalized()
	velocity = dir * SPEED


# --- Destruir enemigo ---
func destroy() -> void:
	queue_free()
