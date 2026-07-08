extends CanvasLayer

var time : float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	time  +=_delta

	var m = int(time / 60.0)
	var s = int(time) % 60
	var ss = int(time * 100) % 100
	$timer.text = "%02d:%02d:%02d" % [m, s, ss]




# func _on_timer_timeout() -> void:
# 	time_sec += 1
# 	var m = int(time_sec/60)
# 	var s = int(time_sec%60)
# 	$timer.text = "%02d:%02d:%02d" % [m, s, time_sec % 60]
# 	 # Replace with function body.
