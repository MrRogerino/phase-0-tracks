/*Release 0 Psuedocode
Define a function that takes in an array.
  For each element in the array, store the length of the element in a new array
    From the new array, take the index of the highest value(s)
  Return the element that corresponds to those index
*/
function print(array) {
  var something = 0;
  var maxIndex = 0; 
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > something) {
    something = array[i].length;
    maxIndex = i;
    //console.log(something); debug purposes
    //console.log(maxIndex); debug purposes
    }
  }
  console.log(array[maxIndex]);
}


