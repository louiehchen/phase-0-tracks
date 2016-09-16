# Create two methods, these methods can be called whatever you want, but make sure it's a relevant. The first method will be encrypt method and the second method will be your decrypt.
# Within the encrypt method, write an algorithm that takes a string and advances each letter one index forward. Within the decrypt method, write an algorithm that reverses the given string one character. 

def encrypt(str)

 index = 0 
 charset = "abcdefghijklmnopqrstuvwxyz"
  while index < str.length 
  if str[0] == charset[-1]
		str[index] = charset[index]
		str[index].next!
  elsif str[index] == " "
  	str[index] = " "
  else 
  	str[index] = str[index].next!
  end
  index += 1
  end
   
 
  
 	

puts str
end

encrypt("z d")

def decrypt(str)
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

decrypt("afe")
decrypt("hello world")


#decrypt(encrypt("swordfish")) returns the user input because of implicit return 

puts "Greetings, agent! Do you want to encrypt or decrypt your password?"
    encrypt = gets.chomp == "encrypt"

puts "Password?"

if encrypt
    p encrypt(gets.chomp)
else
    p decrypt(gets.chomp)
end