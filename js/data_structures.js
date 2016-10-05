// declare 2 separate arrays
// color array
var colors = ["blue", "red", "yellow", "purple"];
// name array
var names = ["Bob", "Joe", "Tom", "Tim"];
// add to color array
colors.push("orange");
// add to name array
names.push("Gerald");
// add color and name to horse
var horse = {};

for (i = 0; i<names.length; i++){
	horse[names[i]] = colors[i];
}
console.log(horse);