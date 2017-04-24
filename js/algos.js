/*Release 0 Psuedocode
Define a function that takes in an array.
  By default, set a variable, longest string, to first element in array. 
    If the next element is longer than the longest stringe variable, store that string as the new longest string
    Loop through entire array, replacing longest string whenever applicable
  Return the longest string
*/
function longest_string(array_of_strings) {
  var longest_string = array_of_strings[0]
  for (var i = 0; i < array_of_strings.length; i++)
    if (array_of_strings[index].length > longest_string.length) {
      longest_string = array_of_strings[index];
    }
  return longest_string;
}
//driver code
some_array = ["Hello", "Is it me", "you're looking for?"]
longest_string(some_array)
some_other_array = ["Small town", "Girl", "Living in", "A lonely world"]
longest_string(some_other_array)
/* old, non-functioning algorithm
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
*/
/*Release 1 Psuedocode
Define a function that takes in two objects
  For all keys of one object, check to see if they're equivalent to any keys of the second object
    For any key that matches, compare each key's value
      If both values are the same, return true
  Else, return false
*/

