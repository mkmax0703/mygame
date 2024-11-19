extends StaticBody2D

func _ready():
	# Create a material with bounce to help the ball react dynamically
	var peg_material = PhysicsMaterial.new()
	peg_material.bounce = 0.5  # Make it bouncy enough to keep the energy up
	peg_material.friction = 0
