extends Node2D

const duua := 1.0
@onready var plataforma := $Plataforma as AnimatableBody2D
@export var move := 3.0
@export var distance := 190
@export var move_horizontal := true


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
