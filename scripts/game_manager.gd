extends Node

@onready var score_label: Label = $ScoreLabel
@onready var timer: Timer = $Timer

const MIN_SPEED = 0.1

var slowdown_factor = 0.4
var score = 0

# Restarts the game
func restart():
	#timer.start()
	Engine.time_scale = 0.7
	set_process(true)
#func _on_timer_timeout() -> void:
	#set_process(false)
	#Engine.time_scale = 1
	#get_tree().reload_current_scene()
	
# Slows game
func _ready():
	set_process(false)
func _process(delta: float) -> void:
	if Engine.time_scale - slowdown_factor * delta >= MIN_SPEED:
		Engine.time_scale -= slowdown_factor * delta
	else:
		set_process(false)
		Engine.time_scale = 1
		get_tree().reload_current_scene()

# Adds points to score
func add_points(points):
	score += points
	print("Score: " + str(score))
	score_label.text = "Total Score:\n" + str(score)
