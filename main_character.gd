extends CharacterBody2D

var SPEED = 20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("ui_right"):
		self.velocity.x += 1 * SPEED
		
	if Input.is_action_pressed("ui_left"):
		self.velocity.x += -1 * SPEED
		
	if Input.is_action_pressed("ui_up"):
		self.velocity.y += -1 * SPEED
		
	if Input.is_action_pressed("ui_down"):
		self.velocity.y += 1 * SPEED
		
		
	else:
		velocity.x = move_toward(velocity.x,0,SPEED)
	move_and_slide()
