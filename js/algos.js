// Return longest word/phrase in array



function longestWord(arr) {
	longestWord = arr[0]
	for (var element in arr) {
		if (array[element].length > longestWord.length){
			longestWord = arr[element];
		};
	}
	return longestWord;
};

var array = ["long", "longer", "longest"];
console.log("The longest word is: " + longestWord(array)); // longest

var array2 = ["big", "bigger", "biggest"];
console.log("The longest word is: " + longestWord(array2)); // biggest

var array3 = ["inch", "meter", "kilometer"];
console.log("The longest word is: " + longestWord(array3)); // kilometer
// Take two objects and check to see if they share at least one key-value pair

function matchObjects(object1, object2) {
	for (var key in object1) {
		if (object2[key] == object1[key]) {
			console.log("Do these two objects share a key-value pair?");
			return true;
		}
	}
	console.log("Do these two objects share a key-value pairs?");
	return false;

}

var boy = {name: 'Louie', age: 26}
var girl = {name: 'Jamie', age: 26}
var dog = {name: 'Guile', age: 7}

console.log("Do Louie and Jamie share something in common? " + matchObjects(boy, girl)) // true
console.log("Do Louie and Guile share something in common? " + matchObjects(boy, dog)) // false

// Generate random test data
// Take integer for length 
// Build array of given length of random words
// Make a variable of all possible characters and an array of possible words

function randomData(integer){
	var characters = "abcdefghijklmnopqrstuvwxyz";
	var words = [];
	var iterations = 0;
	var word = '';

	for (var i= 0; i < integer; i++) {
		for (var index = 0; index < (Math.floor(Math.random() * 10) + 1); index++) {
			word += characters[Math.floor(Math.random() * 26)];
		}
		words[i] = word;
	}
	return words;
};

console.log(longestWord(randomData(10)));
