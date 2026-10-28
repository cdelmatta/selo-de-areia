# Origem: telas de fim da Aula 09 (Prof. Ezefferth), adaptadas com auxílio de IA (OpenAI Codex).
extends Control

var reiniciando := false


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and not reiniciando:
		reiniciando = true
		get_tree().change_scene_to_file.call_deferred("res://scenes/templo.tscn")
