extends CanvasLayer

@onready var score: Label = $MarginContainer/Label

func _process(delta: float) -> void:
	score.text = "Score : " + str(GameManager.getPoint())
