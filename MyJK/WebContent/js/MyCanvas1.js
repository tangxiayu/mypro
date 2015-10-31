var canvas;
var stage;
var txt;
var count = 0;
window.onload = function(){
	canvas = document.getElementById("canvas");
	stage = new createjs.Stage(canvas);
	txt = new createjs.Text("number-->0","20px","#ff55gg");
	stage.addChild(txt);
	createjs.Ticker.setFPS(30);
	createjs.Ticker.addEventListener("tick",tick);
	
};
function tick(e){
	count++;
	txt.text = "number-->0"+count+"!";
	stage.update(e);
}