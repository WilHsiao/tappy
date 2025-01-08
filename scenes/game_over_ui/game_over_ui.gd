extends Control


@onready var game_over_label: Label = $GameOverLabel
#@onready var space_label: Label = $SpaceLabel
@onready var timer: Timer = $Timer
@onready var sound: AudioStreamPlayer2D = $Sound
@onready var space_label_2: LineEdit = $SpaceLabel2


func _ready() -> void:
	hide()
	SignalManager.SG_on_plane_died.connect(on_plane_died)



func _process(delta: float) -> void:
	#if space_label.visible and Input.is_action_just_pressed("fly"):
		#GameManager.load_main_scene()
	if space_label_2.visible and Input.is_action_just_pressed("fly"):
		GameManager.load_main_scene()


func on_plane_died() -> void:
	show()
	timer.start()
	sound.play()
	ScoreManager.save_high_score_to_file()


func _on_timer_timeout() -> void:
	game_over_label.hide()
	#space_label.show()
	space_label_2.show()
