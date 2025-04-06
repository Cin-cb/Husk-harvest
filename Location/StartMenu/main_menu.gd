extends Control


@onready var Ip_input = $LineEdit




func _on_button_pressed() -> void:
	%NetworkCore.host()
	hide()



func _on_button_2_pressed() -> void:
	%NetworkCore.join(Ip_input.text)
	hide()
