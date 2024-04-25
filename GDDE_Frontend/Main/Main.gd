extends Control

func _ready():
	$Label.hide()

func _on_fake_button_click():
	print("click")
	$Label.show()
