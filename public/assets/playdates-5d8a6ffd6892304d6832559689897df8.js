// if ($('map-canvas')){
//   function initialize(){
//     var myLatLng = new google.maps.LatLng(51.5361, -0.1751)
//     var mapCanvas = document.getElementById('map-canvas');
//     var mapOptions = {
//       center: myLatLng,
//       zoom: 16,
//       mapTypeId: google.maps.MapTypeId.ROADMAP
//     }
//     map = new google.maps.Map(mapCanvas, mapOptions);
//     addMarker(map);

//     var marker = new google.maps.Marker({
//       position: myLatLng,
//       map: map
//     });

//   }


//   function addMarker(map_one) {
//    if(navigator.geolocation){
//      navigator.geolocation.getCurrentPosition(function(position){
//        var pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
//        console.log(pos);

//        var infowindow = new google.maps.InfoWindow({
//          map: map_one,
//          position: pos,
//          content: "You are here WOOF!"
//        });

  

//        var request = {
//         location: pos,
//         radius: '500',
//         types: ['park']
//       };
//       service = new google.maps.places.PlacesService(map);
//       service.nearbySearch(request, callback);

//       map_one.setCenter(pos);
//     }, function() {
//      handleNoGeolocation(true);
//    });
//    } else {
//      handleNoGeolocation(false);
//    }
//  }

//  function handleNoGeolocation(errorFlag) {
//    if (errorFlag) {
//      var content = 'error: geolocation server failed';
//    } else {
//      var content = 'error: your browser does not support geolocation';
//    }

//    var infowindow = new google.maps.InfoWindow(options);
//    map.setCenter(options.position);

//  }

//  function callback(results, status) {
//    if (status == google.maps.places.PlacesServiceStatus.OK) {
//      for (var i = 0; i < results.length; i++) {
//        var place = results[i];
//        createMarker(results[i]);
//      }
//    }
//  }

//  function createMarker(place) {
//    var placeLoc = place.geometry.location;
//    var marker = new google.maps.Marker({
//      map: map,
//      position: place.geometry.location
//    });
//  }


//  google.maps.event.addDomListener(window, 'load', initialize);
// }

;
