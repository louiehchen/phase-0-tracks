=begin
Mandatory Pairing: Solving Problems with Data Structures
Sean Kung and Louie Chen
=end
# loop through the array and find the index for if array[array] == value
def search_array(arr, value)
	i = 0
	index = nil
	while i < arr.length
		if arr[i] == value
			index = i
		end
		i += 1
	end
index
end

# array = [12,20,45,1,0,5]
# p search_array(array, 100)

# fib_array = [0,1]
# fib(value) must be greater than 3. Then while i < value add the two digits before the next
# fib_array[index-1] + fib_array[i-2]

def fib(value)
	fib_arr = [0,1]
	i = 2
	while i < value
		fib_arr[i] = fib_arr[i - 1] + fib_arr[i - 2]
		i += 1
	end
	fib_arr
end

p fib(6)

# driver code
# if fib(100)[-1] == 218922995834555169026
#	puts "true"
# end

# Sorting method - Bubble sorting
=begin
if list is <=1 return the list as it only has 0 or 1 item in it
if list is >1 then do a loop and see if the first digit > second digit, and then swap them
and continue for all indices in the array. 
Use a swap_flag to indicate if any swaps were made in the iteration through the array
If there were swaps, or if swap_flag = true, it will keep swapping through the array until the swap_flag becomes false. 
If it remains false it will break the loop since all the correcnt swaps have been map.
After that it will return the changed array.
=end
def bubble_sort(arr)
	if arr.length <=1 
		return arr 
	end
	loop do 
		swap_flag = false 	
		(arr.length - 1).times do |i|
			if arr[i] > arr[i+1]
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swap_flag = true
			end
		end
		break if not swap_flag
	end
	arr
end

array = [9,1,4,2,3,5,6,7,8,0]
p bubble_sort(array)
