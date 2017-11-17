const {BrowserWindow}=require('electron').remote;
const app = require('electron').app;
const path = require('path');
const url = require('url');
//otra ventana
let calcCientifica;

function calculadoraCientifica(){
	calcCientifica = new BrowserWindow({width:600,height:380});
	calcCientifica.loadURL(url.format({
		pathname: path.join(__dirname,'index.html'),
		protocol: 'file',
		slashes: true
	}));
	calcCientifica.webContents.openDevTools();
	calcCientifica.show();
}

var operador ="";

function numeros(num)
{ 
	if((document.calculadora.operando2.value!="" || document.calculadora.operando2.value!=0)&& document.calculadora.operando1.value!=0)
	{
	if(num =="+" || num=="-" || num=="/" || num=="*")
	{
		document.calculadora.operando1.value="";
		document.calculadora.operando1.value=document.calculadora.operando2.value; 
	}
	}
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