# Create two methods, these methods can be called whatever you want, but make sure it's a relevant. The first method will be encrypt method and the second method will be your decrypt.
# Within the encrypt method, write an algorithm that takes a string and advances each letter one index forward. Within the decrypt method, write an algorithm that reverses the given string one character. 

def encrypt(str)
 index = 0 
 letters = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length 
		if str[0] == letters[-1]
		 	str[index] = letters[index]
		  	str[index].next!
		elsif str[index] == " "
  			str[index] = " "
		else 
		  	str[index] = str[index].next
		end
	index+=1
	end

puts str

end
encrypt("zed")
def decrypt(str)
	charset = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length
		if str[index] == "z"
			str[index] = "a"
		elsif str[index] == " "
			str[index] = " "
		else 
			str[index] = charset[charset.index(str[index]) - 1]
		end
		index += 1 
	end
	puts str 
end 