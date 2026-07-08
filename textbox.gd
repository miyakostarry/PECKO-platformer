extends CanvasLayer

var full_text = "Pecko loves shiny gold and never leaves a coin behind! Help him collect every single coin to complete the level.

[Press Esc at any time to open the Pause Menu]"



func _ready() -> void:
	$MG/Label.text =""
	type_text()

func type_text() -> void:
	for i in full_text:
		
		$MG/Label.text += i	
		
		await get_tree().create_timer(0.01).timeout



# @onready var label = $MarginContainer/label
# @onready var timer = $letterdisplay


# const MAX_width = 256

# signal finished_displaying


# var text = ""
# var letter_index = 0

# var letter_delay = 0.05
# var space_delay = 0.05
# var punctuation_delay = 0.2

# # Signal removed: finished_displaying was declared but unused, causing a warning.

# func display_text(text_to_display : String):
# 	text = text_to_display
# 	letter_index = 0
# 	label.text = text_to_display


# 	await resized

# 	custom_minimum_size.x = min(size.x,MAX_width)

# 	if size.x > MAX_width:
# 		label.autowrap_mode = TextServer.AUTOWRAP_WORD
# 		await resized # x resize 
# 		await resized # y resize
# 		custom_minimum_size.y= size.y


# 	global_position.x = size.x / 2
# 	global_position.y = size.y + 24


# 	label.text =""

# 	_display_letter()

# func _display_letter() -> void:
# 	# Reset index and display text one character at a time
# 	label.text +=text[letter_index]
# 	letter_index += 1
# 	if letter_index  >= text.length():
# 		emit_signal("finished_displaying")
# 		return

# 	match text[letter_index]:
# 		"!",".","," ,"?":
# 			timer.start(punctuation_delay)
# 		" ":
# 			timer.start(space_delay)
# 		_:
# 			timer.start(letter_delay)


# func _on_letterdisplay_timeout() -> void:
# 	_display_letter()
# 	 # Replace with function body.
