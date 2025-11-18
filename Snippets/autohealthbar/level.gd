extends Node2D


func _on_button_pressed() -> void:
	simulate_damage_on_collision($CharacterBody2D)

func simulate_damage_on_collision(body):
	body.receive_damage(5)
	
