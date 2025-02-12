extends Node2D
signal pegouestrela
@onready var som_estrela: AudioStreamPlayer = $Som_Estrela

func _on_area_2d_area_entered(body: Area2D) -> void:
	
	if body.name == "Areajogador":
		#print("xcvbnm,")
		pegouestrela.emit()
		som_estrela.playing = true
		queue_free()
		som_estrela.is_playing()
