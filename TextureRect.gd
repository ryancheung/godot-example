extends TextureRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var processed_time = 0
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if (processed_time == 2):
		get_texture().get_data().save_png("./1.png")
	else:
		processed_time += 1
