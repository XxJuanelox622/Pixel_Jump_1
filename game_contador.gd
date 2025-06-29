extends Node
var puntos: int = 0
@onready var mon_val: Label = $Mon_valor

func incrementa_un_punto():
	puntos += 1
	mon_val.text ="x" + str(puntos).pad_zeros(2)
