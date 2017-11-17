const app=require('electron').app;
const BrowserWindow=require('electron').remote;
const path = require('path'); // Muestra la ruta del archivo
const url = require('url');//carga una pagina
// ECMASCRIPT =6
let PantallaPrincipal;

function muestraPantallaPrincipal()
{
	PantallaPrincipal = new BrowserWindow({width:520,height:425})
	PantallaPrincipal.loadURL(url.format({
		pathname: path.join(__dirname,'index.html'),
		protocol: 'file',
		slashes: true
		
	}))
	PantallaPrincipal.webContents.openDevTools();
	PantallaPrincipal.show();
}

app.on('ready',muestraPantallaPrincipal)