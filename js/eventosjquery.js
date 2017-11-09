var inicia = function()
{
	var nuevo = function()
	{// JSON = JavaScript Object Notation
	// alert("Lista la pagina");
	$.ajax({
  url: 'https://randomuser.me/api/',
  dataType: 'json',
  success: function(data) {
  	//alert(data.results[0].name.first+" "+data.results[0].name.last);
    // console.log(data);

    $("#nombre").html("name: "+data.results[0].name.title+"."+data.results[0].name.first+" "+
    	              data.results[0].name.last);
    $("#foto").attr("src",data.results[0].picture.large);
    $("#location").html("Street: "+data.results[0].location.Street+"<br>"
    	+"City: "+data.results[0].location.city+"<br>"
    	+"State: "+data.results[0].location.state+"<br>"
    	+"Postcode: "+data.results[0].location.postcode+"<br>");
    $("#email").html("Email: "+data.results[0].email);
    $("#login").html("Username: "+data.results[0].login.username+"<br>"
    	+"Password: "+data.results[0].login.password+"<br>");

  }
});
}
	$("#btnNuevo").on("click",nuevo);
}
// Iniciamoes jquery cuando la pagina esta lista ejecuta la funcion inicia
$(document).ready(inicia);