/*Release 0 Psuedocode
Define a function that takes in an array.
  By default, set a variable, longest string, to first element in array. 
    If the next element is longer than the longest stringe variable, store that string as the new longest string
    Loop through entire array, replacing longest string whenever applicable
  Return the longest string
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


