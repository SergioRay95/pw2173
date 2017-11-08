var operador ="";
function numeros(num)
{
	if(operador == "")
	{
		var valorInicial=document.calculadora.operando1.value;
		if(valorInicial == "0")

		{
			document.calculadora.operando1.value ="";
		}
		//Concatena los valores de num con los del operando1
		document.calculadora.operando1.value= 
		document.calculadora.operando1.value+num;
	}
	// else
	// {
	// 	var valorInicial=document.calculadora.operando2.value;
	// 	if(valorInicial == "0")

	// 	{
	// 		document.calculadora.operando2.value ="";
	// 	}
	// 	//Concatena los valores de num con los del operando1
	// 	document.calculadora.operando2.value= 
	// 	document.calculadora.operando2.value+num;
	// }
}
function operadoras(ope)
{
	operador = ope;
}
function igual()
{
	var valor1 = document.calculadora.operando1.value;
	document.calculadora.operando2.value = eval(valor1);

}
function borrar()
{
	operador=""

	document.calculadora.operando1.value =0;
	document.calculadora.operando2.value =0;
	

}