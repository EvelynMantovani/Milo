extends Node2D
#@onready var label: Label = $ParallaxBackground/Label
@onready var jogador: CharacterBody2D = $Jogador
@onready var label: Label = $Parallax_Fundo/Label

var qtd = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func fazPonto() -> void:
	qtd += 1
	print(qtd)
	label.text = "Estrelas: %d" %qtd
#__________________________________________________________________
# Se coletou todas as estrelas, liberar o troféu
#	if qtd == 6:
#		print("Todas as estrelas foram coletadas! O troféu pode ser coletado.")
#		get_node("Troféu").pode_coletar = true
#__________________________________________________________________
	
func Catou() -> void:
	jogador.set_process(false)
