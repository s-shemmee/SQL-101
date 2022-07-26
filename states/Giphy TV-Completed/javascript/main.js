/*
1. Search for the gif 
2. display the gif 
*/


function searchGiphy( searchQuery ) {
	var GiphyURL = "http://api.giphy.com/v1/gifs/search?api_key=dc6zaTOxFJmzC&q=" + searchQuery;

	// constructor method
	var GiphyAJAXCall = new XMLHttpRequest();
	GiphyAJAXCall.open( 'GET', GiphyURL );
	GiphyAJAXCall.addEventListener('load', function( data ) {

		var actualData = data.target.response;
		pushToDOM( actualData );
		
	});
	GiphyAJAXCall.send();
}

searchGiphy( "cats" );





function pushToDOM( response ) {
	// turn response into real javascript object

	response = JSON.parse( response );
	// drill down to the data array
	var images = response.data;
	
	// find the container to hold this stuff in DOM
	var container = document.querySelector('body');
	// clear it of old content since this function will be used on every search
	// we want to reset the div
	container.innerHTML = "";


	for(i = 0; i<20; i++) {

			// concatenate a new IMG tag
			setTimeout(function(){
					var src = images[i].images.fixed_height.url;
					container.innerHTML = "";
					container.innerHTML += "<div class=\"gif\"><img src='"+ src +"' class='container__image' /></div>";
					i++;
			}, 3000*i);
		}

}


