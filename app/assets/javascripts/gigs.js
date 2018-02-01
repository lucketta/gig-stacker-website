$(document).ready(function() {
  $('#dropdown').on('change', function() {
    $.ajax({
     method: "get",
     url: "/filter_gigs",
     data: {
       industry: this.value}
    })
     .done(function( msg ) {

       var returnString = `<div class="gigsList" id="gigsList">`

         msg.forEach(function(gig) {
           returnString = returnString + `<div class="gigCard" id="gigCard"><a href="` + gig.url + `" target="_blank"><img src="` + gig.photo_url + `" alt=""></img></a>
           <h2 class="gigName">` + gig.name + `</h2>
           <h2 class="gigIndustry">` + gig.industry + `</h2></div>`
         });

         returnString += `</div>`

       document.getElementById('gigsList').innerHTML = returnString;
     });
  });
});
