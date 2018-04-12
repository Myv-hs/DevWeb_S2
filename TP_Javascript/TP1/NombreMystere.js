var nb;
var essai;
var found;

function init_game (){
	var rst = window.document.getElementById("rst");
	var usrin = window.document.getElementById("usrin");
	rst.style.visibility = "hidden";
	usrin.value = "";
	if(essai>=5 || found==true) alert("resetting game");
	nb = 1 + Math.floor(Math.random()*30);
	essai = 0;
	found = false;
}

function game () {
	var rst = window.document.getElementById("rst");
	var usrin = window.document.getElementById("usrin");
	var out = window.document.getElementById("out");

	if(!found && essai < 5){
		
		var outxtelem = window.document.createElement("li");
		
	
		var outxt;
		var playedInt = parseInt(usrin.value);
		if(Number.isInteger(playedInt) == true){
			essai++;
			if(nb < playedInt) outxt = window.document.createTextNode(playedInt+" est trop grand");
			else if(nb > playedInt) outxt = window.document.createTextNode(playedInt+" est trop petit");
			else if(nb == playedInt) {
				found = true;
				rst.style.visibility = "visible";
				outxt = window.document.createTextNode("Bravo "+playedInt+" est correct, ca a pris "+essai+" essais");
			}
		} else alert("entrez un nombre");

		outxtelem.appendChild(outxt);
		out.insertBefore(outxtelem,out.childNodes[0]);
	} else {
		rst.style.visibility = "visible";
	}
}