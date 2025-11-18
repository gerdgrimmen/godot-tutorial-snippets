extends Node2D

var parent

func _ready() -> void:
	parent = get_parent()
	if not "hp" in parent:
		print("hp not available")
		return 
	if not "hp_max" in parent:
		print("hp_max not available")
		return 
	if not parent.has_signal("got_hit"):
		print("got_hit not available")
		return
	parent.connect("got_hit", Callable(self, "on_parent_got_hit"))
	setup_progressbar()

func on_parent_got_hit():
	$TextureProgressBar.value = parent.hp

func setup_progressbar():
	$TextureProgressBar.max_value = parent.hp_max
	$TextureProgressBar.value = parent.hp
	position = parent.position - Vector2(64, 90)
