extends Area2D

@onready var game_manager: Node = %GameManager
@onready var player: CharacterBody2D = %Player

func _on_body_entered(body: Node2D) -> void:
	body.get_node("CollisionShape2D").queue_free()
	game_manager.restart()
	player.die()
