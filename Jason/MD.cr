
<script>
var VERSION=2.052;
var BETA=0;
var App=typeof App==='undefined'?0:App;
</script>

<link href="style.css?v=9" rel="stylesheet" type="text/css">
<script  src="main.js?v=10"></script>

<!-- ad -->
<script src="showads.js"></script><!-- this just detects adblockers so we can adjust the layout and play nice -->
<!-- /ad -->

<!--[if IE]>
<style type="text/css">
	#ifIE9{display:block;}
</style>
<![endif]-->

<!--[if lt IE9]><script src="excanvas.compiled.js"></script><![endif]-->
</head>
<body>

<div id="wrapper">

	<div id="topBar">
		<div><b style="font-weight:bold;">Cookie Clicker</b>&trade; &copy; <a href="//orteil.dashnet.org" target="_blank" id="topbarOrteil">Orteil</a>, 2023 - <a href="//dashnet.org" target="_blank" id="topbarDashnet">DashNet</a></div>
		<div><a href="https://twitter.com/orteil42" target="_blank" id="topbarTwitter">twitter</a></div>
		<div><a href="https://orteil42.tumblr.com" target="_blank" id="topbarTumblr">tumblr</a></div>
		<div style="position:relative;"><div style="width:22px;height:32px;background:url(img/discord.png);position:absolute;left:0px;top:0px;pointer-events:none;"></div><a href="https://discordapp.com/invite/cookie" target="_blank" style="padding-left:16px;" id="topbarDiscord">Discord</a></div>
		<div style="position:relative;"><div style="width:25px;height:32px;background:url(img/weeHoodie.png);position:absolute;left:-2px;top:0px;pointer-events:none;"></div><a class="blueLink" href="http://www.redbubble.com/people/dashnet" target="_blank" style="padding-left:12px;" id="topbarMerch">Merch!</a></div>
		<div style="position:relative;"><div style="width:22px;height:32px;background:url(img/patreon.png);position:absolute;left:0px;top:0px;pointer-events:none;"></div><a class="orangeLink" href="https://www.patreon.com/dashnet" target="_blank" style="padding-left:16px;" id="topbarPatreon">Patreon</a></div>
		<div style="position:relative;display:none;font-weight:bold;" id="heralds"><div style="position:absolute;top:-4px;width:31px;height:39px;background:url(img/heraldFlag.png);left:50%;margin-left:-15px;pointer-events:none;"></div><div id="heraldsAmount" style="position:relative;z-index:10;text-shadow:0px 1px 0px #000,0px 0px 6px #ff00e4;color:#fff;">-</div></div>
		<div><a class="lightblueLink" style="font-weight:bold;" href="https://play.google.com/store/apps/details?id=org.dashnet.cookieclicker" target="_blank" id="topbarMobileCC">Cookie Clicker for Android</a></div>
		<div><a class="lightblueLink" style="font-weight:bold;" href="https://store.steampowered.com/app/1454400/Cookie_Clicker/" target="_blank" id="topbarSteamCC">Cookie Clicker on Steam</a></div>
		<div><a href="//orteil.dashnet.org/randomgen/" target="_blank" id="topbarRandomgen">RandomGen</a></div>
		<div><a href="//orteil.dashnet.org/igm/" target="_blank" id="topbarIGM">Idle Game Maker</a></div>
		<div style="float:right;position:relative;"><div id="tinyglobe" style="position:absolute;top:-4px;width:22px;height:22px;background:url(img/tinyglobeSheet.gif);right:4px;top:4px;pointer-events:none;"></div><a id="changeLanguage" style="font-variant:small-caps;padding-right:20px;" onmouseover="INTERVAL_TINYGLOBE=setInterval(function(){var tinyglobe=document.getElementById('tinyglobe');tinyglobe.style.backgroundPosition=(parseInt(tinyglobe.style.backgroundPosition)-22)+'px';},30);" onmouseout="clearInterval(INTERVAL_TINYGLOBE);">Change language</a><script>document.getElementById('tinyglobe').style.backgroundPosition=(-[0,19,27][Math.floor(Math.random()*3)]*22)+'px';</script></div>
		<div id="links" class="hoverer">
			Other versions
			<div class="hoverable">
				<a href="../" target="_blank" id="linkVersionLive">Live version</a>
				<a href="beta" target="_blank" id="linkVersionBeta">Try the beta!</a>
				<a href="//orteil.dashnet.org/cookieclicker/v10466" target="_blank" id="linkVersionOld">v. 1.0466</a>
				<a href="//orteil.dashnet.org/experiments/cookie/" target="_blank">Classic</a>
			</div>
		</div>
	</div>
	<div id="game">
		<div id="versionNumber" class="title"></div>
		<script>document.getElementById('versionNumber').innerHTML='v. '+VERSION;</script>
		<div id="offGameMessageWrap">
			<div id="offGameMessage">
				<div id="loader">
					<div class="spinnyBig"></div>
					<div class="spinnySmall"></div>
					<div id="loading" class="title">Loading...</div>
					<div id="failedToLoad" class="title">This is taking longer than expected.<br>
					<div style="font-size:65%;line-height:120%;"><!-- error -->Slow connection? If not, please make sure your javascript is enabled, then refresh.<br>
					If problems persist, this might be on our side - wait a few minutes, then hit ctrl+f5!<!-- /error --></div></div>
					<div id="ifIE9" class="title" style="font-size:100%;line-height:120%;">Your browser may not be recent enough to run Cookie Clicker.<br>You might want to update, or switch to a more modern browser such as Chrome or Firefox.</div>
				</div>
			</div>
		</div>

		<canvas id="backgroundCanvas"></canvas>
		
		<div id="goldenCookie" class="goldenCookie"></div>
		<div id="seasonPopup" class="seasonPopup"></div>
		<div id="shimmers"></div>
		<div id="alert"></div>
		<div id="particles"></div>
		<div id="sparkles" class="sparkles"></div>
		<div id="notes"></div>
		<div id="darken"></div>
		<div id="toggleBox" class="framed prompt"></div>
		<div id="promptAnchor"><div id="prompt" class="framed"><div id="promptContent"></div><div id="promptClose" class="close" style="display:none;" onclick="PlaySound('snd/tickOff.mp3');Game.ClosePrompt();">x</div></div></div>
		<div id="ascend">
			<div id="ascendBG"></div>
			<div id="ascendZoomable"><div id="ascendContent"><div id="ascendUpgrades" style="position:absolute;"></div></div></div>
			<div id="ascendOverlay"></div>
		</div>
		
		<div id="debug"><div id="devConsole" class="framed"></div><div id="debugLog"></div></div>
		
		<div id="sectionLeft" class="inset">
			<canvas id="backgroundLeftCanvas" style="z-index:5;"></canvas>
			<div class="blackFiller"></div>
			<div class="blackGradient"></div>
			<div id="sectionLeftInfo"></div>
			<div id="cookies" class="title"></div>
			<div id="bakeryNameAnchor"><div id="bakeryName" class="title"></div></div>
			<div id="specialPopup" class="framed prompt offScreen"></div>
			<div id="buffs" class="crateBox"></div>
			<div id="cookieAnchor">
				<button id="bigCookie"></button>
				<div id="cookieNumbers"></div>
			</div>
			<div id="sectionLeftExtra"></div>
		</div>

		<div class="separatorLeft" id="leftBeam"></div>
		<div class="separatorRight" id="rightBeam"></div>

		<div id="sectionMiddle" class="inset">
			<div id="comments" class="inset title">
				<div id="prefsButton" class="panelButton"><div class="subButton">Options</div></div>
				<div id="statsButton" class="panelButton"><div>Stats</div></div>
				<div id="logButton" class="panelButton"><div>Info</div><div id="checkForUpdate">New update!</div></div>
				<div id="legacyButton" class="panelButton"><div class="subButton">Legacy</div><div id="ascendMeterContainer" class="smallFramed meterContainer"><div id="ascendMeter" class="meter filling"></div></div><div class="roundedPanel" id="ascendNumber"></div><div id="ascendTooltip" class="framed"></div></div>
				<div id="commentsText">
					<div id="commentsText1" class="commentsText"></div>
					<div id="commentsText2" class="commentsText"></div>
				</div>
				<div class="separatorBottom"></div>
			</div>
			<div id="centerArea">
				<div id="buildingsTitle" class="inset title zoneTitle">Buildings</div>
				<div id="buildingsMaster"></div>
				<div id="rows"></div>
				<div id="menu"></div>
			</div>
		</div>
		
		<div id="sectionRight" class="inset">
			<!-- ad -->
			<div class="ifNoAds" style="width:300px;text-align:center;padding:8px 0px;background:rgba(0,0,0,0.95);font-size:10px;opacity:0.5;text-shadow:0px 0px 2px #000,0px 1px 0px #000;text-align:center;">
				Cookie Clicker is mainly supported by ads.<br>Consider unblocking our site or checking out our <a href="https://www.patreon.com/dashnet" target="_blank">Patreon</a>!
			</div>
			<div id="smallSupport" style="width:300px;text-align:center;padding-bottom:40px;background:rgba(0,0,0,0.5);position:relative;z-index:100;">
			
			</div>
			<!-- /ad -->
			<div id="store">
				<div id="storeTitle" class="inset title zoneTitle">Store</div>
				<div id="toggleUpgrades" class="storeSection upgradeBox"></div>
				<div id="techUpgrades" class="storeSection upgradeBox"></div>
				<div id="vaultUpgrades" class="storeSection upgradeBox"></div>
				<div id="upgrades" class="storeSection upgradeBox"></div>
				<div id="products" class="storeSection"></div>
			</div>
			<!-- ad -->
			<div id="detectAds" class="adBanner" style="background:transparent;width:1px;height:1px;"></div>
			<div id="support" style="margin-top:130px;">
				<div style="position:relative;">
					<div style="position:relative;z-index:100;min-height:250px;">
						<div style="height:32px;"></div>
						<div style="height:32px;"></div>
					</div>
				</div>
			</div>
			<!-- /ad -->
		</div>
		
		<div id="tooltipAnchor"><div id="tooltip" class="framed" onMouseOut="Game.tooltip.hide();"></div></div>
		<div id="preloadImages" style="display:none;"></div>
	</div>
</div>
<!--Anchor Ad Start-->
<script>
    var afg={};afg.u=6328;afg.s=31;
    afg.anchor="bottom";
    document.write("<sc"+"ript src='//js.adforgames.com/cd.js'></sc"+"ript>");
  </script>
  <!--Anchor Ad End-->
</body>
