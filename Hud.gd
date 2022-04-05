extends CanvasLayer

func _ready():
	$Start.hide()
	pass # Replace with function body.

func add_point():
	if (int($GameTime.text) > 0):
		$Points.text = str(int($Points.text) + 1)

func _on_TimeLimit_timeout():
	var time = int($GameTime.text) - 1
	if (time < 0):
		$TimeLimit.stop()
		$Start.show()
	else:
		$GameTime.text = str(time)


func _on_Button_pressed():
	$Points.text = '0'
	$TimeLimit.start()
	$GameTime.text = '30'
	$Start.hide()
	
