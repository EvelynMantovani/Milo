extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_volta_tela_inicial_pressed() -> void: 
	get_tree().change_scene_to_file("res://Cenas/tela_inicial.tscn")

func _on_recomeçar_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Principal.tscn")
