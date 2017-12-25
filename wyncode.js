
// window.addEventListener('load', function(){
// 	console.log("I'm ready");
// }
// var testField = document.getElementById('text-input');
//   console.dir(textField);)

// shorthand for window.addEventListener:
// runs when page is loaded:
$(function(){
    var link = $('a')  
    link.click(function(event){
      console.log("link clicked");
      event.preventDefault();
    })

    // .append method:
    


	// console.log("I'm ready");
	// var textField = $('#text-input');
	// console.dir(textField);
	// when input chnages:
	$('input').change(function(event){
		// console.dir(event.target.value);
		// event.target.value = "Thanks!";
		var input = event.target
		// $(input).replaceWith("<strong>Cat!</strong>
		$(input).addClass('red');
	});
});

// target a CSS selector and change its attributes
$(function(){
  var kitty = $('.special');
  kitty.css('color', 'blue');
});


$('.not_special').css('font-size', '50px');
$('div').css('font-style', 'italic');


$(function(){
	$('h1').dblclick(function(){
		changeStyles();
});
}

var students = [
"Gabriel",
"Raul",
"Nick",
"Joy"
]

$(function(){
	students.forEach(student){
      console.log(student);
	}
});








