# Create two methods, these methods can be called whatever you want, but make sure it's a relevant. The first method will be encrypt method and the second method will be your decrypt.
# Within the encrypt method, write an algorithm that takes a string and advances each letter one index forward. Within the decrypt method, write an algorithm that reverses the given string one character. 

# Create two methods, these methods can be called whatever you want, but make sure it's a relevant. The first method will be encrypt method and the second method will be your decrypt.
# Within the encrypt method, write an algorithm that takes a string and advances each letter one index forward. Within the decrypt method, write an algorithm that reverses the given string one character. 

def encrypt(str) #define encryption method

 	index = 0 
 	charset = "abcdefghijklmnopqrstuvwxyz" #define all possible characters
  	while index < str.length 
  		if str[0] == charset[-1]
			str[index] = charset[index]
			str[index].next!
  		elsif str[index] == " " #deals with spaces
  			str[index] = " "
  		else 
  			str[index] = str[index].next!
  		end
  	index += 1
  	end	

puts str
end

def decrypt(str) #define decryption method
	index = 0
	charset = "abcdefghijklmnopqrstuvwxyz" 
		while index < str.length
			if  str[index] == charset[0]
			 	str[index] = charset[-1]
			elsif str[index] == " "
				str[index] = " "
			else 
				str[index] = charset[charset.index(str[index]) - 1]
			end
		index += 1 
		end
puts str 
end 


#decrypt(encrypt("swordfish")) returns the user input because of implicit return 

puts "Greetings, agent! Do you want to encrypt or decrypt your password?"
    encrypt = gets.chomp 

#if statement that corresponds to user input
if encrypt == "encrypt"
	puts "What is your password?"
    puts encrypt(gets.chomp) #Runs encrypt
elsif encrypt == "decrypt"
	puts "What is your password?"
    puts decrypt(gets.chomp) #Runs decrypt
else
	puts "DATA CORRUPTED" #if user doesn't want either, returns 'error' message
end
