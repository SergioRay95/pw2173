var inicia = function()
{
	// JSON = JavaScript Object Notation
	// alert("Lista la pagina");
	$.ajax({
  url: 'https://randomuser.me/api/',
  dataType: 'json',
  success: function(data) {
  	alert(data.results[0].name.first+" "+data.results[0].name.last);
    // console.log(data);
  }
});
}
// Iniciamoes jquery cuando la pagina esta lista ejecuta la funcion inicia
$(document).ready(inicia);