extends Control

func _ready():
	$Label.hide()
	$Mouse.top_level = true

func _on_fake_button_click():
	print("click")
	var v = not $Taskbar/Test.visible
	$Taskbar/Test.visible = v
	for i in $Taskbar/Test.get_children():
		i.enabled = v
	

func _on_app_1_click():
	#$Label.show()
	#$Label.text = "App 1"
	$Window.show()

func _on_app_2_click():
	#$Label.show()
	pass
	#$Label.text = "App 2"

func _on_app_3_click():
	#$Label.show()
	get_tree().quit()
	#$Label.text = "App 3"

