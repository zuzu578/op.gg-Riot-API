<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="false"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<title>Home</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}

.nav_container {
	background-color: black;
	color: white;
	display: flex;
	padding: 5px;
	font-size: 13px;
}

body {
	background-color: rgb(21, 107, 255);
}

.items {
	list-style: none;
	display: flex;
}

.item-list {
	display: flex;
	align-items: center;
}

.opgg_logo {
	margin: 12px 16px;
	width: 57px;
	height: 14px;
}

.opgg_logo img {
	width: 100%;
}

.item-list {
	padding-left: 10px;
	padding-right: 10px;
}

.main_banner {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 20px;
}

.user_search {
	width: 600px;
	margin: 0 auto;
}

.search_title {
	color: white;
	font-weight: bold;
	text-align: center;
	font-size: 50px;
}
.rotation_champion{
	text-align:center;
	margin-top:20px;
	font-weight:bold;
	color:white;
	font-size:40px;
	
	
}
.rotation_items{
	text-align:center;
	width: 900px;
	margin: 0 auto;
	
}
</style>
<body>
	<div class="main_wrap">
		<header class="nav_container">
			<div class="opgg_logo">
				<h1></h1>
				<img
					src="https://opgg-static.akamaized.net/images/gnb/svg/00-opgglogo.svg">
			</div>
			<nav class="nav_items">
				<ul class="items">
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-lol-white.svg">
					<p>League of Legends</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-pubg-gray.svg">
					<p>PUBG</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-overwatch-gray.svg">
					<p>OVERWATCH</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-fortnite-gray.svg">
					<p>FORTNITE</p></li>
					<li class="item-list"><img
						src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-r-6-gray.svg">
					<p>RainbowSix Siege</p></li>



				</ul>


			</nav>

		</header>



		<div class="main_contents">

			<div class="main_banner">
				<img
					src="http://attach.s.op.gg/logo/20201128185021.1dc5306e4b9ee7c30611adce774fbd77.png">

			</div>
			<div class="user_search">
				<p class="search_title">????????? ????????? ???????????????</p>

				<form action="/myopggapp/search" method="GET">

					<div class="input-group mb-3">
					

						<input type="text" class="form-control" placeholder="name+ enter "
							aria-label="Username" name="SummonerName"
							aria-describedby="basic-addon1">
					</div>
				</form>

			</div>


			<div class="champion_rotation">
				<p class="rotation_champion"> ???????????? ???????????? ????????? </p>
			<div class="rotation_items">
			
		<c:forEach var="data" items="${rotationName}">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/${data }.png?image=c_scale,q_auto,w_140&v=1624418935">
			
		</c:forEach>
		</div>
	

			</div>



		</div>
		
	</div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document).ready(function() {
	var championNumber = ${freeChampionIds};
	if(championNumber[0] == "3"){
		championNumber[0] = "Galio"
		console.log(championNumber[0]);
	}
	if(championNumber[1] == "6"){
		championNumber[1] = "Urgot";
	}
	if(championNumber[2] == "23"){
		championNumber[2] = "Tryndamere";
	}
	if(championNumber[3] == "40"){
		championNumber[3] = "Janna";
	}
	if(championNumber[4] == "50"){
		championNumber[4] = "Swain";
	}
	if(championNumber[5] == "59"){
		championNumber[5] = "Jarvan IV";
	}
	if(championNumber[6] == "69"){
		championNumber[6] = "Cassiopeia";
	}
	if(championNumber[7] == "74"){
		championNumber[7] = "Heimerdinger";
	}
	if(championNumber[8] == "96"){
		championNumber[8] = "Kog'Maw";
	}
	if(championNumber[9] == "106"){
		championNumber[9] = "Volibear";
	}
	if(championNumber[10] == "119"){
		championNumber[10] = "Draven";
	}
	if(championNumber[11] == "143"){
		championNumber[11] = "Zyra";
	}
	if(championNumber[12] == "154"){
		championNumber[12] = "Zac";
	}
	if(championNumber[13] == "163"){
		championNumber[13] = "Lillia";
	}
	if(championNumber[14] == "245"){
		championNumber[14] = "Ziggs";
	}
	
	
		
		//console.log(championSplit.split(',',2));
		

		
	
	/*[3,6,23,40,50,59,69,74,96,106,119,143,154,163,245]
	 *  riot ChampionIdToName methods
	 *  update: 10.20 ver.(riot client)
	 */
	
	// Riot API?????? ???????????? lol ????????? id??? ?????? ???????????? ???????????? 
	//?????? ?????? ???????????? -1??? ???????????? method
	// ????????????: ????????? id
	    switch ( ${freeChampionIds}) {
	        case 266:
	            var championName = "????????????";break; // ????????? ?????? ??????
	        case 412:
	            var championName ="?????????";break;
	        case 23:
	            var championName = "???????????????";break;
	        case 79:
	            var championName = "????????????";break;
	        case 69:
	            var championName = "???????????????";break;
	        case  136:
	            var championName = "??????????????? ???";break;
	        case   13:
	            var championName = "?????????";break;
	        case   78:
	            var championName = "??????";break;
	        case  14:
	            var championName = "?????????";break;
	        case  1:
	            var championName = "??????";break;
	        case  202:
	            var championName = "???";break;
	        case 43:
	            var championName = "?????????";break;
	        case  111:
	            var championName = "????????????";break;
	        case 240:
	            var championName = "?????????";break;
	        case   99:
	            var championName = "??????";break;
	        case  103:
	            var championName =  "??????";break;
	        case   2:
	            var championName =  "?????????";break;
	        case   112:
	            var championName =  "?????????";break;
	        case  34:
	            var championName =  "????????????";break;
	        case   27:
	            var championName = "?????????";break;
	        case   86:
	            var championName =        "??????";break;
	        case   127:
	            var championName =         "????????????";break;
	        case    57:
	            var championName =    "????????????";break;
	        case     25:
	            var championName =  "????????????";break;
	        case    28:
	            var championName =  "?????????";break;
	        case   105:
	            var championName =  "??????";break;
	        case   74:
	            var championName =  "???????????????";break;
	        case   238:
	            var championName =  "??????";break;
	        case   68:
	            var championName =  "??????";break;
	        case  82:
	            var championName =  "???????????????";break;
	        case  37:
	            var championName =  "??????";break;
	        case  96:
	            var championName =  "?????????";break;
	        case  55:
	            var championName =  "????????????";break;
	        case  117:
	            var championName =  "??????";break;
	        case  22:
	            var championName =  "??????";break;
	        case  30:
	            var championName =  "?????????";break;
	        case  12:
	            var championName =  "????????????";break;
	        case  122:
	            var championName =  "????????????";break;
	        case   67:
	            var championName = "??????";break;
	        case  110:
	            var championName = "?????????";break;
	        case  77:
	            var championName =  "?????????";break;
	        case  89:
	            var championName =  "?????????";break;
	        case   126:
	            var championName = "?????????";break;
	        case   134:
	            var championName = "?????????";break;
	        case   80:
	            var championName =  "?????????";break;
	        case  92:
	            var championName = "??????";break;
	        case  121:
	            var championName = "?????????";break;
	        case  42:
	            var championName =  "?????????";break;
	        case  268:
	            var championName =   "?????????";break;
	        case 51:
	            var championName =   "????????????";break;
	        case   76:
	            var championName =  "?????????";break;
	        case 85:
	            var championName =  "??????";break;
	        case 3:
	            var championName =  "?????????";break;
	        case 45:
	            var championName =  "?????????";break;
	        case 432:
	            var championName =  "??????";break;
	        case 150:
	            var championName = "??????";break;
	        case 90:
	            var championName =   "?????????";break;
	        case   104:
	            var championName =  "???????????????";break;
	        case  254:
	            var championName =  "??????";break;
	        case  10:
	            var championName =  "??????";break;
	        case  39:
	            var championName =  "????????????";break;
	        case  64:
	            var championName = "??? ???";break;
	        case  420:
	            var championName =   "????????????";break;
	        case 60:
	            var championName =  "?????????";break;
	        case  106:
	            var championName =  "????????????";break;
	        case 20:
	            var championName = "??????";break;
	        case 4:
	            var championName =  "??????????????? ?????????";break;
	        case 24:
	            var championName =  "??????";break;
	        case  102:
	            var championName =  "?????????";break;
	        case 429:
	            var championName =  "????????????";break;
	        case 36:
	            var championName =  "?????? ??????";break;
	        case 427:
	            var championName = "?????????";break;
	        case  131:
	            var championName = "????????????";break;
	        case 63:
	            var championName = "?????????";break;
	        case 113:
	            var championName = "????????????";break;
	        case 8:
	            var championName =  "???????????????";break;
	        case  154:
	            var championName =  "??????";break;
	        case  421:
	            var championName = "?????????";break;
	        case  133:
	            var championName = "???";break;
	        case  84:
	            var championName =  "?????????";break;
	        case  163:
	            var championName =  "?????????";break;
	        case  18:
	            var championName =  "???????????????";break;
	        case  120:
	            var championName =  "?????????";break;
	        case  15:
	            var championName = "?????????";break;
	        case  236:
	            var championName =  "?????????";break;
	        case   107:
	            var championName = "??????";break;
	        case  19:
	            var championName = "??????";break;
	        case  72:
	            var championName =  "?????????";break;
	        case  54:
	            var championName = "????????????";break;
	        case  157:
	            var championName =  "?????????";break;
	        case  101:
	            var championName = "?????????";break;
	        case   17:
	            var championName = "??????";break;
	        case  75:
	            var championName =  "?????????";break;
	        case  58:
	            var championName =  "?????????";break;
	        case   119:
	            var championName =  "????????????";break;
	        case  35:
	            var championName =  "??????";break;
	        case  50:
	            var championName =  "?????????";break;
	        case   91:
	            var championName =  "??????";break;
	        case  40:
	            var championName = "??????";break;
	        case   115:
	            var championName =  "??????";break;
	        case   245:
	            var championName =  "??????";break;
	        case   61:
	            var championName =  "????????????";break;
	        case  114:
	            var championName = "?????????";break;
	        case  9:
	            var championName =  "????????????";break;
	        case  31:
	            var championName =  "?????????";break;
	        case  33:
	            var championName =  "?????????";break;
	        case  7:
	            var championName =  "?????????";break;
	        case  16:
	            var championName =  "?????????";break;
	        case  26:
	            var championName =  "?????????";break;
	        case  56:
	            var championName = "??????";break;
	        case  222:
	            var championName =  "?????????";break;
	        case  83:
	            var championName = "??????";break;
	        case  6:
	            var championName = "?????????";break;
	        case  203:
	            var championName =  "????????????";break;
	        case  21:
	            var championName =  "?????? ??????";break;
	        case  62:
	            var championName =  "??????";break;
	        case  53:
	            var championName = "??????????????????";break;
	        case   98:
	            var championName =  "???";break;
	        case  201:
	            var championName =   "?????????";break;
	        case  5:
	            var championName = "??? ??????";break;
	        case  29:
	            var championName = "?????????";break;
	        case  11:
	            var championName = "????????? ???";break;
	        case  44:
	            var championName = "??????";break;
	        case  32:
	            var championName = "?????????";break;
	        case 41:
	            var championName =  "?????????";break;
	        case  48:
	            var championName =  "?????????";break;
	        case   38:
	            var championName = "?????????";break;
	        case   161:
	            var championName = "?????????";break;
	        case   143:
	            var championName =  "?????????";break;
	        case  267:
	            var championName =  "??????";break;
	        case  59:
	            var championName =  "????????? 4???";break;
	        case  81:
	            var championName =   "????????????";break;
	        case    350:
	            var championName =   "??????";break;
	        case  145:
	            var championName =  "?????????";break;
	        case   518:
	            var championName = "??????";break;
	        case   142:
	            var championName =  "??????";break;
	        case   498:
	            var championName =  "??????";break;
	        case  517:
	            var championName =  "????????????";break;
	        case  141:
	            var championName =   "??????"; break;
	        case   516:
	            var championName =  "??????";break;
	        case   555:
	            var championName =   "?????????";break;
	        case  164:
	            var championName =   "??????";break;
	        case   246:
	            var championName = "?????????";break;
	        case   497:
	            var championName = "??????";break;
	        case 777:
	            var championName =  "??????";break;
	        case 876:
	            var championName = "?????????";break;
	        case 235:
	            var championName = "??????";break;
	        case 875:
	            var championName = "??????";break;
	        case 523:
	            var championName = "???????????????";break;

	        case 223:
	            var championName = "??? ??????";break;

	        case 360:
	            var championName = "?????????";break;
	            
	        default:
	            var championName = -1;break;

	    }
	 	

		
	    return  championName;
	


	});
    



</script>
