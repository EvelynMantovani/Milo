extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var timer: Timer = $Timer

@onready var animacao := $Anima as AnimatedSprite2D
var pulo := false
var idle = 1
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		timer.start()
		idle = 0
		velocity.y = JUMP_VELOCITY
		#pulo = true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Esquerda", "Direita")
	if direction:
		velocity.x = direction * SPEED
		if direction == 1:
			animacao.flip_h = 0
		else:
			animacao.flip_h = 1
		
		if idle == 1: 
			if !pulo :
				animacao.play("Corre")
			else:
				print(idle)

				animacao.play("Pula")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animacao.play("Depé")

	move_and_slide()


func _on_timer_timeout() -> void:
	idle = 1#pass # Replace with function body.
