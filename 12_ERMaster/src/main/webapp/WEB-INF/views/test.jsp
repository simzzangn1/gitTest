<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 400px;
	width: 100%;
}
/* Optional: Makes the sample page fill the window. */
/* html, body {
	height: 80%;
	margin: 0;
	padding: 0;
} */
</style>

</head>
<body>
	<div id="map"></div>
	<script>
		function initMap() {
			var options = {
				zoom:8,
				center:{lat:35.652832,lng:139.839478}
			}
			
			// New map
			var map = new
			google.maps.Map(document.getElementById('map'),options);
			
			/* //Add marker
			var marker = new google.maps.Marker({
				position : {lat:35.652832,lng:139.839478},
				map : map,
				icon :'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
			}); */
			/* addMarker({coords:{lat:35.652832,lng:139.839478}});
			addMarker({lat:43.06417,lng:141.34695});
			addMarker({lat:43.0715,lng:141.3469}); */
			addMarker({coords:{lat:35.652832,lng:139.839478},
				iconImage :'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
			});
			addMarker({coords:{lat:43.06417,lng:141.34695}});
			addMarker({coords:{lat:34.69374,lng:135.50218}});
			
		/* 	//Add Marker Function
			function addMarker(coords){
				var marker = new google.maps.Marker({
				position : coords,
				map : map,
				icon :'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
				});
				}; */

				//Add Marker Function
				function addMarker(props){
					var marker = new google.maps.Marker({
					position : props.coords,
					map : map,
					icon :props.iconImage
					});
					};
/* 			// Map options
			var options ={
				zoom : 8,
				center:{lat:42.3601,lng:-71.0589}
			}
			
			// New map
			var map = new
			google.maps.Map(document.getElementById('map');
			
			// Add marker
			var marker = new google.maps.Marker({
				position : {lat:35.652832,lng:139.839478},
				map : map
				icon :'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
			}); */
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-_47aj5KkD8nAbQXt4T-R5mtgamz75kM&callback=initMap"
		async defer></script>

</body>
</html>