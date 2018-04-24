function add(){
	var item = prompt("Entrer un element a ajouter a la liste");
	if(item!=null & item!=""){
		var li = window.document.createElement("li");
		var txt = window.document.createTextNode(item);

		li.appendChild(txt);

		var list = window.document.getElementById("ici");
		list.appendChild(li);
	}
}

function rm(){
	var list = window.document.getElementById("ici");
	if(list.hasChildNodes()) list.removeChild(list.lastChild);
}

function rma(){
	var list = window.document.getElementById("ici");
	while(list.hasChildNodes()){
		rm();
	}
}