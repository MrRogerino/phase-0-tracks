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
