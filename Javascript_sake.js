// Fix this loop so that it enumerates all of the key/value pairs.

// var a = { one: 1, two: 2, three: 3, four: 4, five: 5 };
// for (var i = 0, len = a.length; i < len; i++ ){
//   console.log(i, a[i]);
// }
// JSON objects have no length, so a.length is undefined and the loop doesn’t execute. 
// There’s another type of for loop that helps us easily loop over all of the objects 
// in a collection.



var a = { one: 1, two: 2, three: 3, four: 4, five: 5 };
for (var [key, value] of Object.entries(a)) {  
  console.log(key + ':' + value);
}