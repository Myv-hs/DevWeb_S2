var playerName = ["X","O"];
var gameover = false;
var turn = 0;

function play (cell){
	var cell = window.document.getElementById(cell);

	if(gameover) return;
	if(cell.innerText != "") return;

	cell.innerHTML = playerName[turn%2];
	gameover = win(turn%2);
	turn++;
	if(turn==9) alert("Match Nul");
}

function win (J){
	//ligne
	for(i=0;i<3;i++){
		var c1 = window.document.getElementById("C"+i+"0");
		var c2 = window.document.getElementById("C"+i+"1");
		var c3 = window.document.getElementById("C"+i+"2");
		if(c1.innerText==c2.innerText && c2.innerText==c3.innerText && c3.innerText == playerName[J]) return true;
	}	

	//col
	for(i=0;i<3;i++){
		var c1 = window.document.getElementById("C0"+i);
		var c2 = window.document.getElementById("C1"+i);
		var c3 = window.document.getElementById("C2"+i);
		if(c1.innerText==c2.innerText && c2.innerText==c3.innerText && c3.innerText == playerName[J]) return true;
	}

	return false;
}