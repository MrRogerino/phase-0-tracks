//Release 0: Work with Arrays
var color_array = ["blue", "turqoise", "cyan", "cerulean"]
var horsie = ["Rick", "Morty","Summer","Beth"]

color_array.push("navy")
horsie.push("Jerry")
//Release 1: Build an Object
function stable(horsie, color_array) {
  if (horsie.length > color_array.length) {
    console.log("Some horsies won't have a color!")
  }
  else if (color_array.length > horsie.length) {
    console.log("Some colors won't have a horsie!")
  }
  else {
  pair = {};
  for (var i = 0; i < color_array.length; i++) {
    pair[horsie[i]] = color_array[i];
  }
  return pair;
  }
}

stable(horsie, color_array)
stable(horsie, color_array)
//Release 2: Build many Objects using a Constructor
function Car(model, year, isEngineOn) {
  console.log("Constructing a new car...");
  this.model = model;
  this.year = year;
  this.isEngineOn = isEngineOn;
  this.drive = function() {
    if (isEngineOn && year > 1990) {
      console.log("zoom zoom!");
    }
    else if (isEngineOn && year <= 1990) {
      console.log("vroom vroom!");
    }
    else {
      console.log("Stick your key in the ignition!");
    }
  };
}
//Car Factory
car1 = new Car("Camry", 2009, false)
console.log("You are now the proud owner of a " + car1.year + " " + car1.model)
console.log("Let's take it for a spin!")
car1.drive()
console.log("----");

car2 = new Car("Accord", 1991, true)
console.log("You are now the proud owner of a " + car2.year + " " + car2.model)
console.log("Let's take it for a spin!")
car2.drive()
console.log("----");

car3 = new Car("Model T", 1900, true)
console.log("You are now the proud owner of a " + car3.year + " " + car3.model)
console.log("Let's take it for a spin!")
car3.drive()
console.log("----");