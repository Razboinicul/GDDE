extends Area2D
var _click = false
@export var text = ""
@export var size = 16
signal click()

func _ready():
	$Button.text = text
	$Button.add_theme_font_size_override("normal_font_size", size)

func _process(delta):
	$ColorRect.size = $Button.size
	$CollisionShape2D.shape.size = $Button.size
	$CollisionShape2D.position = $Button.size/2
	if _click:
		emit_signal("click")
		_click = false
