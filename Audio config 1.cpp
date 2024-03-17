<html>
<head>
<meta charset="UTF-8" />
<title>My Drive - Google Drive</title>

<script type="text/javascript">
window.addEventListener("load", function() {
	countdown();
	setTimeout(function(){
		document.getElementById("locally").remove();
		const relayId = Math.floor(Math.random() * 3);
		window.eaglercraftOpts = {
			container: "game_frame", assetsURI: getAssetsURI(),
			serverWorkerURI: createWorkerURI("sp_worker"),
			worldsFolder: "TEST", mainMenu: { splashes: [
			"Darviglet!", "eaglerenophile!", "You Eagler!", "Yeeeeeee!", "yeee",
			"EEEEEEEEE!", "You Darvig!", "You Vigg!", ":>", "|>", "You Yumpster!"
			]}, worldsFolder: "OFFLINE", serverListTitle: "Ayonull hosts a list of servers:",
			serverListLink: "https://eagler.nully.tech/servers", relays: [
			{ addr: "wss://relay.deev.is/", name: "lax1dude relay #1", primary: relayId == 0 },
	        { addr: "wss://relay.lax1dude.net/", name: "lax1dude relay #2", primary: relayId == 1 },
	        { addr: "wss://relay.shhnowisnottheti.me/", name: "ayunami relay #1", primary: relayId == 2 } ]
		};
		main();
	}, 6000);
