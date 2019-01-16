extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	get_material().set_shader_param("center", Vector2(200.0,200.0))
	get_material().set_shader_param("radius", 200.0)
	get_material().set_shader_param("textureHeight", 400.0)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _draw():
	
	draw_circle(Vector2(200.0,200.0), 200.0, Color(1,1,1))
