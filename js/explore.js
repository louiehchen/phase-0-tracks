// To take a string and reverse it
// Take the input of a string and store it as a variable
// For each letter in the string, put it into an array
// Then call the array in reverse, and put them back together as one string
// Finally, print the string

function reverse(string) {
	var str = string;
	var array = str.split('');
	var reverseArray = array.reverse();
	var endResult = reverseArray.join('');
	console.log(endResult);
}

reverse("hello")

var math = 2
if (1 + 1 == math) {
	console.log("1 + 1 equals " + math);
}