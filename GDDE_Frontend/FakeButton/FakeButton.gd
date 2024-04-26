extends Area2D
var _click = false
@export var text = ""
@export var size = 16
@export var enabled = true
@export var double = true
var hovered = false
signal click()

func _ready():
	$Button.text = text
	$Button.add_theme_font_size_override("normal_font_size", size)

func _process(delta):
	$ColorRect.size = $Button.size
	$CollisionShape2D.shape.size = $Button.size
	$CollisionShape2D.position = $Button.size/2
	if _click and enabled:
		emit_signal("click")
		_click = false


func _on_mouse_entered():
	hovered = true

func _on_mouse_exited():
	hovered = false
