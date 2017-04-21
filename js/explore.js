/* Psuedocode
Take a string as an argument
  Set a counter equal to string length - 1
  For each letter, add the index[counter] to a new string
  Print new string
*/
function reverse(string) {
  reverse_string = ""
  for (var i = string.length; i > 0; i--) {
    reverse_string += string[i - 1];
  }
  console.log(reverse_string);
}

reverse("hello")