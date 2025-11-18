extends CharacterBody2D

var hp_max = 100
var hp = hp_max

signal got_hit

	
func receive_damage(in_damage):
	hp -= in_damage
	emit_signal("got_hit")
