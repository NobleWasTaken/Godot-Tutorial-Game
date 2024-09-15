extends Area2D

#@onready var game_manager: Node = %GameManager
@onready var game_manager: Node = $"../../GameManager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body: Node2D) -> void:
	game_manager.add_points(5)
	game_manager.restart()
	animation_player.play("pickup")
