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
for (var name in horse){
	if (horse.hasOwnProperty(name)){
		console.log("This horse is named " + name + " and it is " + horse[name]);
	};
};
// car constructor
function Car(year, make, model){

	this.year = year;
	this.make = make;
	this.model = model;
	this.honk = function() { console.log("BEEPBEEP"); };
	console.log("Car initialization complete");

}
console.log("Let's build a car...");
var newCar = new Car(2015, "Acura", "TLX");
console.log(newCar);
newCar.honk();
var newerCar = new Car(2004, "Honda", "Element");
console.log(newerCar);
var dreamCar = new Car(1969, "Ford", "Mustang");
console.log(dreamCar);
console.log(dreamCar.year);


// Don't have to bother with attr_reader/accessor in javascript constructors, but calling individual instances is more tedious.