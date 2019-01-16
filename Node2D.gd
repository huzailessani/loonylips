extends Node2D

var player [] #words that player use
var prompt = ['greeetings' , 'name' , 'country' , 'fav food' , 'country' , 'feeling']
var story = '%s my name is %s and I am from %s yesterday I ate a %s in %s and felt very %s.'

func _ready():
	
	$Blackboard/Storybox.text = story % prompt
	
func _on_TextureButton_pressed():
	var new_Text =$Blackboard/Inputbox.get_text()
	_on_Inputbox_text_entered(new_Text)

func _on_Inputbox_text_entered(new_text):
	$Blackboard/Storybox.text = (new_text)
	$Blackboard/Inputbox.text = ''


	


	

