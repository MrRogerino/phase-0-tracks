/* Psuedocode
Take a string as an argument
  Set a counter equal to string length - 1
  For each letter, add the index[counter] to a new string
  Print new string
*/
condition = 3 > 2
function reverse(string) {
  reverse_string = ""
  for (var i = string.length; i > 0; i--) {
    reverse_string += string[i - 1];
  }
  if (condition) { 
    console.log(reverse_string);
  }
}
//driver 
reverse("hello") 