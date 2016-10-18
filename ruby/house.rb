# HOUSE MAKER

# Allow user to create a house, 
# then add rooms,
# then add items

# House can have up to 5 rooms
#Room can have an unlimited number of items

def add_room_to_house!(house, room_name) # house becomes a hash
	if house.keys.length == 5 # limits number of rooms to 5. Rooms are keys.
		false
	else 
		house[room_name] = [] 
		true
	end
end

def add_item_to_room!(house, room_name, item_name)
	house[room_name] << item_name
end

house = {}

# USER INTERFACE 

def print_house(house)
	puts "----------------------"
	puts "Current house configuration"
	house.keys.each_with_index do |room_name, index| # Assigns index number to each room
		puts "#{index} - #{room_name}: #{house[room_name]}" # house[room_name] turns into item
	end
	puts "----------------------"
end 


# Let user add rooms
can_add_rooms = true

# Stop loop when room cannot be added
while can_add_rooms
# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	# If the user is done, stop loop
	break if room_name == 'done'
	# Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	print_house(house)
end

# Let the user add items to rooms
# In an infinite loop:
loop do 
	# Ask the user for the number of the room they want to add items to
	puts "Enter the number of the room to add an item to (or type 'done'):"
	inputted_index = gets.chomp
	# If user is done, break
	break if inputted_index == 'done'
	# Otherwise, add the item to the room
	room_index = inputted_index.to_i
	puts "Enter the item to add: "
	item_to_add = gets.chomp
	add_item_to_room!(house, house.keys[room_index], item_to_add) 
	# print new house configuration
	print_house()
end


# Stop loop when rooms cannot be added





# TEST CODE 
=begin
rooms = ["living room", "bedroom", "bathroom", "kitchen", "bedroom2", "bedroom3"]

rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, "cat") if room_added
end

print_house(house)
=end