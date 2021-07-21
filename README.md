# op.gg-Riot-API
참고 문서 

# riot api 를 이용하여 라이엇에서 제공하는 로테이션 챔피언 , 유저를 검색했을때 해당 유저의 랭크 , 승패 , 티어 , 전적 정보를 가져옵니다.
<img width="1233" alt="스크린샷 2021-07-21 오후 1 24 42" src="https://user-images.githubusercontent.com/69393030/126430638-9cd73469-f7b1-4174-be83-2611cae9007b.png">
해당 api 의 명세서에 적힌 대로 dto 를 생성하여 가져온 json 데이터를 자바 객체화를 해줍니다. 
<img width="718" alt="스크린샷 2021-07-21 오후 1 26 05" src="https://user-images.githubusercontent.com/69393030/126430746-1e135432-d5f3-4054-8776-b3aff988d0be.png">
해당 controller 에서 데이터 트랜잭션후 , 가공작업을 해줍니다.
<img width="936" alt="스크린샷 2021-07-21 오후 1 26 49" src="https://user-images.githubusercontent.com/69393030/126430804-35c5a57e-6770-4ffa-ad50-baa315f33742.png">
* 라이엇에서 제공해주는 챔피언 정보는 챔피언 고유번호를 지급해줍니다. 때문에 챔피언 번호에 따른 챔피언 이름을 바꾸어주는 작업을 해야합니다.
* 이렇게 말이죠..
* <img width="862" alt="스크린샷 2021-07-21 오후 1 27 45" src="https://user-images.githubusercontent.com/69393030/126430886-a32fc17e-d54d-4a4a-b8fc-596ca2e465f7.png">
또는 db에 챔피언 고유 번호를 입력하고 챔피언 이름을 입력하는 방법도 있으나 , 저는 이런식으로 했습니다. 

# 로테이션 챔피언 결과 !
<img width="1015" alt="스크린샷 2021-07-21 오후 1 23 34" src="https://user-images.githubusercontent.com/69393030/126431229-6eac09d1-3dd2-4c30-bfb4-993d63d012e4.png">


# 유저 검색하기 기능 
<img width="612" alt="스크린샷 2021-07-21 오후 1 28 55" src="https://user-images.githubusercontent.com/69393030/126430992-4f643e5a-2b07-4d27-8c44-fa483230a8aa.png">
유저이름을 통한 prarameter 를 통해 해당 유저의 정보를 json 으로 가져올수있습니다.
<img width="519" alt="스크린샷 2021-07-21 오후 1 29 48" src="https://user-images.githubusercontent.com/69393030/126431068-ad11a800-f0a8-458d-b326-04eeee9cd8da.png">
보다시피 , 닉네임 , 유저 레벨 , 프로필사진 ,티어 정보 , 매치 타입 , 서버 , 라인 챔피언 이미지 , 등의 데이터를 가져옵니다. 




