extends Polygon2D

var running:bool = false
var time:float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = time + delta
	if running == true:
		$start.text = str(round(time))
	else:
		$start.text = "click me"
		time = 0


func _on_tick_finished():
	time = 0
	if running == true:
		$tick.play() 


func _on_start_button_down():
	running = !running
	print(running)
	if running == true:
		$tick.play() 
