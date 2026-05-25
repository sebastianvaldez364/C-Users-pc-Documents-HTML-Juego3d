class_name Player
extends Area3D
@export var speed = 0.05
signal coinCollected

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	rotate_y(speed)

func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("Players"):
		print("colisión por grupo")
	
	if body is Player:
		print("Colisión por clase")
	print("Colisión por layer")
	emit_signal("coinCollected")
	GameManager.addPoint()
	print(GameManager.getPoint())
	queue_free()
