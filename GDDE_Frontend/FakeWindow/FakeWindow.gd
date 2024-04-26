extends Node2D
@export var win_size = Vector2(100, 100)
var bar_pre = preload("res://FakeButton/FakeButton.tscn")
var lifted = false
var bar_clicked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	var x = bar_pre.instantiate()
	var y = bar_pre.instantiate()
	var txt = "Test App"
	x.text = txt
	x.position.x += 16
	x.double = false
	y.text = "X"
	$HBoxContainer.add_child(x)
	$HBoxContainer.add_child(y)
	x.connect("click", _on_bar_clicked)
	y.connect("click", _on_x_clicked)
	y.position.x = 0
	$ColorRect.size = win_size

func _input(event):
	if event is InputEventMouseButton:
		lifted = bar_clicked
	if event is InputEventMouseMotion and lifted:
		position += event.relative

func _process(delta):
	pass

func _on_bar_clicked():
	print(bar_clicked)
	bar_clicked = not bar_clicked

func _on_x_clicked():
	self.hide()
