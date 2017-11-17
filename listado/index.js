const {BrowserWindow}=require('electron').remote;
const app = require('electron').app;
const path = require('path');
const url=require('url');
const $ = require('jquery');
function inicia()
{
	$.ajax({
  url: 'https://randomuser.me/api/?results=20',
  dataType: 'json',
  success: function(data) {
  	var resultado =";"
  	for(var i=0;i<20;i++)
  	{
  		nombre = data.results[i].name.first+" "data.results[i].name.last;
  		resultado=resultado+"<li>"++"</li>"
  	}
  	$("#lstUsuarios").append(resultado);//pega a lo ya existente pega el resultado (agrega lo que ya tines )
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
inicia();