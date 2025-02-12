extends Node2D
signal pegatrofeu

#________________________________________________________________
#var pode_coletar = false  # Começa como falso

#func _on_body_entered(body):
#	if body.name == "Jogador":
#		if pode_coletar = 
#			print("Troféu coletado! Mudando de fase...")
#			get_tree().change_scene_to_file("res://Cenas/Final.tscn")
#		else:
#			print("Ainda faltam estrelas!")
#_______________________________________________________________

func _ready():
	pegatrofeu.connect(game_over)

func _on_body_entered_parapegartrofeu(body) -> void:
	if body.name == "Jogador":
		pegatrofeu.emit()
		queue_free()

func game_over():
	get_tree().change_scene_to_file("res://Cenas/Final.tscn")

func parapegarotrofeu(body: Node2D) -> void:
	pass # Replace with function body.
