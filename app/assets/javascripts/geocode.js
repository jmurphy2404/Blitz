let geocoder;
let destination;
let origin;
// let coords1;
// let coords2;




document.addEventListener("DOMContentLoaded", function(){
	geocoder = new google.maps.Geocoder();
	destination = document.getElementById("destination")
	origin = document.getElementById("origin")
	function getDest (destination){
		geocoder.geocode({'address': destination}, function (results, status){
		// coords1 = results[0].geometry.location;
		var temp1 = results[0].geometry.location.lat();
		var temp2 = results[0].geometry.location.lng();
		document.getElementById("dest_lat").value = temp1;
		document.getElementById("dest_lng").value = temp2;
	})
	
	}

	function getOrigin (origin){
		geocoder.geocode({'address': origin}, function (results, status){
		// coords2 = results[0].geometry.location;
		var temp3 = results[0].geometry.location.lat();
		var temp4 = results[0].geometry.location.lng();
		document.getElementById("origin_lat").value = temp3;
		document.getElementById("origin_lng").value = temp4;
	})
	
	}

	document.getElementById("geocoder_submit").addEventListener("click", function(e){
		e.preventDefault();
		getDest(destination.value);
		getOrigin(origin.value);
		document.getElementById("submit-post").style.visibility = "visible";
		document.getElementById("geocoder_submit").style.visibility = "hidden";

	})
})