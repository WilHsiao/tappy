extends Control


@onready var highscore_label: Label = $MarginContainer/HighscoreLabel



func _ready() -> void:
	highscore_label.text = str(ScoreManager.get_high_score())


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fly") == true:
		GameManager.load_game_scene()
