// Let’s begin with something simple. Transcribe this from ruby to JavaScript:

// my_name = "Emmett Brown"
// puts my_name

var myName = "Karen Roberts"
console.log(myName);

// puts "I am..."
// puts my_name.upcase

// journey = "We're going to October 21, 2015.. the FUTURE!!"
// puts journey.gsub "FUTURE", "PAST"

console.log(`I am ${my_name}`);
console.log(my_name.toUpperCase());

var journey = "We're going to October 21, 2015.. the FUTURE!!"
console.log(journey.replace("FUTURE", "PAST"))


// Fix this loop so that it enumerates all of the key/value pairs.

// var a = { one: 1, two: 2, three: 3, four: 4, five: 5 };

// for (var i = 0, len = a.length; i < len; i++ ){
//   console.log(i, a[i]);
// }

var a = [{ one: 1, two: 2, three: 3, four: 4, five: 5 }];
a.forEach(function(unit){
    console.log(unit);
})


function greetingFor(name){
    console.log(`Hello, ${name}`);
}

greetingFor("Marty")



function greetingFor(name){
    return `Hello, ${name}`;
}

console.log(greetingFor("Marty"))





