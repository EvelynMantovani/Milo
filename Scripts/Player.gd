extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var pulo := false
#@onready var timer: Timer = $Timer
@onready var animacao := $Anima as AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	#_______________________Pulo Do Milo_______________________
	if Input.is_action_just_pressed("Pula") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		#pulo = true

	#_____________________Movimento Do Milo___________________
	var direction := Input.get_axis("Esquerda", "Direita")
	if direction:
		velocity.x = direction * SPEED
		if direction == 1:
			animacao.flip_h = 0
		else:
			animacao.flip_h = 1
		
		if !pulo:
			animacao.play("Corre")
		else:
			animacao.play("Pula")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animacao.play("Depé")
	move_and_slide()
