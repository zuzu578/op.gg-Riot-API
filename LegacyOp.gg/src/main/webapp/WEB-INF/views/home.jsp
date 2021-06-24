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
				<p class="search_title">소환사 이름을 입력하세요</p>

				<form action="/myopggapp/search" method="GET">

					<div class="input-group mb-3">
					

						<input type="text" class="form-control" placeholder="name+ enter "
							aria-label="Username" name="SummonerName"
							aria-describedby="basic-addon1">
					</div>
				</form>

			</div>


			<div class="champion_rotation">
				<p class="rotation_champion"> 이번주의 로테이션 챔피언 </p>
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
	
	// Riot API에서 제공하는 lol 챔피언 id를 한글 이름으로 반환하고 
	//없는 값을 입력하면 -1을 반환하는 method
	// 매개변수: 챔피언 id
	    switch ( ${freeChampionIds}) {
	        case 266:
	            var championName = "아트록스";break; // 챔피언 한글 이름
	        case 412:
	            var championName ="쓰레쉬";break;
	        case 23:
	            var championName = "트린다미어";break;
	        case 79:
	            var championName = "그라가스";break;
	        case 69:
	            var championName = "카시오페아";break;
	        case  136:
	            var championName = "아우렐리온 솔";break;
	        case   13:
	            var championName = "라이즈";break;
	        case   78:
	            var championName = "뽀삐";break;
	        case  14:
	            var championName = "사이온";break;
	        case  1:
	            var championName = "애니";break;
	        case  202:
	            var championName = "진";break;
	        case 43:
	            var championName = "카르마";break;
	        case  111:
	            var championName = "노틸러스";break;
	        case 240:
	            var championName = "클레드";break;
	        case   99:
	            var championName = "럭스";break;
	        case  103:
	            var championName =  "아리";break;
	        case   2:
	            var championName =  "올라프";break;
	        case   112:
	            var championName =  "빅토르";break;
	        case  34:
	            var championName =  "애니비아";break;
	        case   27:
	            var championName = "신지드";break;
	        case   86:
	            var championName =        "가렌";break;
	        case   127:
	            var championName =         "리산드라";break;
	        case    57:
	            var championName =    "마오카이";break;
	        case     25:
	            var championName =  "모르가나";break;
	        case    28:
	            var championName =  "이블린";break;
	        case   105:
	            var championName =  "피즈";break;
	        case   74:
	            var championName =  "하이머딩거";break;
	        case   238:
	            var championName =  "제드";break;
	        case   68:
	            var championName =  "럼블";break;
	        case  82:
	            var championName =  "모데카이저";break;
	        case  37:
	            var championName =  "소나";break;
	        case  96:
	            var championName =  "코그모";break;
	        case  55:
	            var championName =  "카타리나";break;
	        case  117:
	            var championName =  "룰루";break;
	        case  22:
	            var championName =  "애쉬";break;
	        case  30:
	            var championName =  "카서스";break;
	        case  12:
	            var championName =  "알리스타";break;
	        case  122:
	            var championName =  "다리우스";break;
	        case   67:
	            var championName = "베인";break;
	        case  110:
	            var championName = "바루스";break;
	        case  77:
	            var championName =  "우디르";break;
	        case  89:
	            var championName =  "레오나";break;
	        case   126:
	            var championName = "제이스";break;
	        case   134:
	            var championName = "신드라";break;
	        case   80:
	            var championName =  "판테온";break;
	        case  92:
	            var championName = "리븐";break;
	        case  121:
	            var championName = "카직스";break;
	        case  42:
	            var championName =  "코르키";break;
	        case  268:
	            var championName =   "아지르";break;
	        case 51:
	            var championName =   "케이틀린";break;
	        case   76:
	            var championName =  "니달리";break;
	        case 85:
	            var championName =  "케인";break;
	        case 3:
	            var championName =  "갈리오";break;
	        case 45:
	            var championName =  "베이가";break;
	        case 432:
	            var championName =  "바드";break;
	        case 150:
	            var championName = "나르";break;
	        case 90:
	            var championName =   "말자하";break;
	        case   104:
	            var championName =  "그레이브즈";break;
	        case  254:
	            var championName =  "바이";break;
	        case  10:
	            var championName =  "케일";break;
	        case  39:
	            var championName =  "이렐리아";break;
	        case  64:
	            var championName = "리 신";break;
	        case  420:
	            var championName =   "일라오이";break;
	        case 60:
	            var championName =  "엘리스";break;
	        case  106:
	            var championName =  "볼리베어";break;
	        case 20:
	            var championName = "누누";break;
	        case 4:
	            var championName =  "트위스티드 페이트";break;
	        case 24:
	            var championName =  "잭스";break;
	        case  102:
	            var championName =  "쉬바나";break;
	        case 429:
	            var championName =  "칼리스타";break;
	        case 36:
	            var championName =  "문도 박사";break;
	        case 427:
	            var championName = "아이번";break;
	        case  131:
	            var championName = "다이애나";break;
	        case 63:
	            var championName = "브랜드";break;
	        case 113:
	            var championName = "세주아니";break;
	        case 8:
	            var championName =  "블라디미르";break;
	        case  154:
	            var championName =  "자크";break;
	        case  421:
	            var championName = "렉사이";break;
	        case  133:
	            var championName = "퀸";break;
	        case  84:
	            var championName =  "아칼리";break;
	        case  163:
	            var championName =  "탈리아";break;
	        case  18:
	            var championName =  "트리스타나";break;
	        case  120:
	            var championName =  "헤카림";break;
	        case  15:
	            var championName = "시비르";break;
	        case  236:
	            var championName =  "루시안";break;
	        case   107:
	            var championName = "렝가";break;
	        case  19:
	            var championName = "워윅";break;
	        case  72:
	            var championName =  "스카너";break;
	        case  54:
	            var championName = "말파이트";break;
	        case  157:
	            var championName =  "야스오";break;
	        case  101:
	            var championName = "제라스";break;
	        case   17:
	            var championName = "티모";break;
	        case  75:
	            var championName =  "나서스";break;
	        case  58:
	            var championName =  "레넥톤";break;
	        case   119:
	            var championName =  "드레이븐";break;
	        case  35:
	            var championName =  "샤코";break;
	        case  50:
	            var championName =  "스웨인";break;
	        case   91:
	            var championName =  "탈론";break;
	        case  40:
	            var championName = "잔나";break;
	        case   115:
	            var championName =  "직스";break;
	        case   245:
	            var championName =  "에코";break;
	        case   61:
	            var championName =  "오리아나";break;
	        case  114:
	            var championName = "피오라";break;
	        case  9:
	            var championName =  "피들스틱";break;
	        case  31:
	            var championName =  "초가스";break;
	        case  33:
	            var championName =  "람머스";break;
	        case  7:
	            var championName =  "르블랑";break;
	        case  16:
	            var championName =  "소라카";break;
	        case  26:
	            var championName =  "질리언";break;
	        case  56:
	            var championName = "녹턴";break;
	        case  222:
	            var championName =  "징크스";break;
	        case  83:
	            var championName = "요릭";break;
	        case  6:
	            var championName = "우르곳";break;
	        case  203:
	            var championName =  "킨드레드";break;
	        case  21:
	            var championName =  "미스 포츈";break;
	        case  62:
	            var championName =  "오공";break;
	        case  53:
	            var championName = "블리츠크랭크";break;
	        case   98:
	            var championName =  "쉔";break;
	        case  201:
	            var championName =   "브라움";break;
	        case  5:
	            var championName = "신 짜오";break;
	        case  29:
	            var championName = "트위치";break;
	        case  11:
	            var championName = "마스터 이";break;
	        case  44:
	            var championName = "타릭";break;
	        case  32:
	            var championName = "아무무";break;
	        case 41:
	            var championName =  "갱플랭";break;
	        case  48:
	            var championName =  "트런들";break;
	        case   38:
	            var championName = "카사딘";break;
	        case   161:
	            var championName = "벨코즈";break;
	        case   143:
	            var championName =  "자이라";break;
	        case  267:
	            var championName =  "나미";break;
	        case  59:
	            var championName =  "자르반 4세";break;
	        case  81:
	            var championName =   "이즈리얼";break;
	        case    350:
	            var championName =   "유미";break;
	        case  145:
	            var championName =  "카이사";break;
	        case   518:
	            var championName = "니코";break;
	        case   142:
	            var championName =  "조이";break;
	        case   498:
	            var championName =  "자야";break;
	        case  517:
	            var championName =  "사일러스";break;
	        case  141:
	            var championName =   "케인"; break;
	        case   516:
	            var championName =  "오른";break;
	        case   555:
	            var championName =   "파이크";break;
	        case  164:
	            var championName =   "카멜";break;
	        case   246:
	            var championName = "키아나";break;
	        case   497:
	            var championName = "라칸";break;
	        case 777:
	            var championName =  "요네";break;
	        case 876:
	            var championName = "릴리아";break;
	        case 235:
	            var championName = "세나";break;
	        case 875:
	            var championName = "세트";break;
	        case 523:
	            var championName = "아펠리오스";break;

	        case 223:
	            var championName = "탐 켄치";break;

	        case 360:
	            var championName = "사미라";break;
	            
	        default:
	            var championName = -1;break;

	    }
	 	

		
	    return  championName;
	


	});
    



</script>
