
  
  function accessoGoogle(googleUser){
   
		var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());


	document.querySelector("#contenuto").innerText = googleUser.getBasicProfile().getGivenName();

  }

 
function logoutGoogle(){
	gapi.auth2.getAuthInstance().signOut().then(function(){
		console.log('user logout')
	})
}