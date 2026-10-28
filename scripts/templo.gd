# Origem: horda, placar e fim da Aula 09 (Prof. Ezefferth), adaptados com auxílio de IA (OpenAI Codex).
extends Node2D

@export var cena_inimigo: PackedScene

var encerrando := false

@onready var horda: Timer = $Horda
@onready var relogio: Timer = $Relogio
@onready var jogador = $Jogador
@onready var texto_vida: Label = $HUD/Vida
@onready var texto_tempo: Label = $HUD/Tempo


func _process(_delta: float) -> void:
	if encerrando:
		return
	texto_vida.text = "VIDA  %d / 3" % jogador.vida
	texto_tempo.text = "TEMPO  %d s" % ceili(relogio.time_left)


func _on_horda_timeout() -> void:
	if encerrando:
		return

	var inimigo = cena_inimigo.instantiate()
	add_child(inimigo)
	inimigo.global_position = $Nascedouros.get_children().pick_random().global_position
	# Começa em dois segundos e diminui até o mínimo de meio segundo.
	horda.wait_time = maxf(0.5, horda.wait_time * 0.95)


func _on_relogio_timeout() -> void:
	vencer()


func vencer() -> void:
	encerrar("res://scenes/vitoria.tscn")


func perder() -> void:
	encerrar("res://scenes/derrota.tscn")


func encerrar(tela: String) -> void:
	# Evita agendar dois finais se o tempo acabar no mesmo quadro do dano.
	if encerrando:
		return
	encerrando = true
	horda.stop()
	relogio.stop()
	# A troca espera o fim do quadro para não remover corpos durante a física.
	get_tree().change_scene_to_file.call_deferred(tela)
