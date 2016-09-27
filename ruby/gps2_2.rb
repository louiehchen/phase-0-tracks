# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # We want to fill in a hash through user input
  # Convert string data 
  # Keys will be grocery items, value will be quantity
  # Ask quantity after
  # set default quantity 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: store response in variable
#        use shoveller to put in hash
#        convert string to integer, then into hash
# output: hash with keys and value

# Method to remove an item from the list
# input: "delete" 
# steps: 
# output: print updated hash

# Method to update the quantity of an item
# input: reference the index
# steps: hash.update(hash){|key,v1| f(v1)}
# output: prints updated value

# Method to print a list and make it look pretty
# input: hash.each do |key, value| 
# 			puts "#{key}: #{value}"
# steps: 
# output: prints out a nice looking table
def list_maker(str)
	
	str.split = keys
	grocery = {}
	keys.each do |item|
		str.split[item] = nil
	end
grocery

end

def add_item(hash_groceries, grocery_item, quantity=1)
	hash_groceries[grocery_item] = quantity
	hash_groceries
end

def remove_item(hash_groceries, grocery_item)
	hash_groceries.delete(grocery_item)
	hash_groceries
end 

def change_quantity(hash_groceries, grocery_item, quantity)
	hash_groceries[grocery_item] = quantity
	hash_groceries
end

def print_list(hash_groceries)
	hash_groceries.each do |grocery_item, quantity|
		puts item+": #{quantity}"
	end
end

test_list = list_maker("oranges bread meat")
add_item(test_list, "lemonade", 2)
add_item(test_list, "tomatoes", 3)
add_item(test_list, "onions", 1)
add_item(test_list, "ice cream", 4)
remove_item(test_list, "lemonade")
change_quantity(test_list, "ice cream", 1)
print_list(test_list)





# Having good pseudocode and actually paying attention to it is definitely very very important.
# I immediately thought of hashes for this challenge because it was a list with quantities, or hash keys with corresponding values
# Methods return the value of the last line of code in it.
# Any ruby object can be passed into methods as arguments
# You would need to have specifically designated values through explicit return to pass information between methods.
# I feel like my main challenge here was being confused at what exactly was being asked. I messed up in rushing to code instead of taking a second to read through the instructions. 










puts "Hello, please add an item to your grocery list, type 'done' when you're finished."
grocery_item = gets.chomp

puts "How many #{grocery_item}s?"
quantity = gets.chomp
grocery_list = {}
until grocery_item == "done"
	
		grocery_list.store(grocery_item}, quantity)



end

		p grocery_list
