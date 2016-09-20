arr = [ "John", "Jane", "Tom", "Meg"]

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}

arr.each {|name| puts "#{name} is cool"}

seasons.each do |name, value|
	puts "#{name}'s favorite season is #{value}."
	
end

arr.map! {|name| puts "#{name} is cool"}

arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.delete_if { |number| number < 5}
seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.delete_if {|name, value| value == "fall"}
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.keep_if { |number| number < 5}
seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.keep_if {|name, value| value == "fall" || value == "winter"}
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.sort! { |number1, number2| number2 <=> number1 }
seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.sort {|name1, name2| name1 <=> name2 }
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.drop_while { |number| number > 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}

seasons.drop_while{ |name, value| value.length < 5}