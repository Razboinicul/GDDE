extends Area2D
var button = null
var click = false

func _input(event):
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if event is InputEventMouseMotion:
		position += event.relative
	if event is InputEventMouseButton and button != null:
		if event.button_index == 1 and ((event.double_click and button.double) or (not event.double_click and not button.double)) and not click:
			button._click = true
			click = true
		else:
			click = false

func _on_area_entered(area):
	if area != null and area.is_in_group("button"):
		button = area

func _on_area_exited(area):
	if area != null and area.is_in_group("button"):
		button = null
