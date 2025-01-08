extends Control


@onready var score_label: Label = $ScoreLabel




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalManager.SG_on_score_update.connect(on_score_update) 




func on_score_update(score: int) -> void:
	score_label.text = str(score)
