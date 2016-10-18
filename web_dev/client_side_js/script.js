function addBorder(event) {
console.log(event);
event.target.border = "2px solid black";
}

var photo = document.getElementById("mountain-photo");
photo.addEventListener("click", addBorder);


// var paragraph = document.getElementsByTagName("p");
// header.style.border = "2px solid orange";