extends CharacterBody2D

#Adding Comment to Be Able to See Changess
var SPEED = 10
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("ui_right"):
		self.velocity.x += 1 * SPEED
		
	elif Input.is_action_pressed("ui_left"):
		self.velocity.x += -1 * SPEED
		
	elif Input.is_action_pressed("ui_up"):
		self.velocity.y += -1 * SPEED
		
	elif Input.is_action_pressed("ui_down"):
		self.velocity.y += 1 * SPEED
		
	else:
		velocity.x = move_toward(velocity.x,0,SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://casino_scene.tscn") # Replace with function body.
