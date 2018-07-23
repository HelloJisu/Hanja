<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<input type="text" id="input"><br> <br>
		<button onclick="input()">입력하기</button>
		</center>
		<script>
		var myimages = new Array();
		var ry;
			function rando0m_image() {
				// 이곳에 출력할 이미지 주소를 계속해서 아래의 방법처럼 기입해 주세요
				myimages[0] = "가르칠 교";
				myimages[1] = "가운데 중";
				myimages[2] = "계집 녀";
				myimages[3] = "기운 기";
				myimages[4] = "길 장";
				myimages[5] = "나라 국";
				myimages[6] = "날 생";
				myimages[7] = "날 일";
				myimages[8] = "남녘 남";
				myimages[9] = "다섯 오";
				myimages[10] = "뒤 후";
				myimages[11] = "메 산";
				myimages[12] = "모 방";
				myimages[13] = "문 문";
				myimages[14] = "물 수";
				myimages[15] = "바깥 외";
				myimages[16] = "발 족";
				myimages[17] = "배울 학";
				myimages[18] = "백성 민";
				myimages[20] = "불 화";
				myimages[21] = "사내 남";
				myimages[22] = "사람 인";
				myimages[23] = "살 활";
				myimages[24] = "서녘 서";
				myimages[25] = "석 삼";
				myimages[26] = "성씨 성";
				myimages[27] = "쇠 금";
				myimages[28] = "스스로 자";
				myimages[29] = "아니 불부";
				myimages[30] = "아들 자";
				myimages[31] = "아래 하";
				myimages[32] = "아비 부";
				myimages[33] = "아우 제";
				myimages[34] = "아홉 구";
				myimages[35] = "앞 전";
				myimages[36] = "어미 모";
				myimages[37] = "여덟 팔";
				myimages[38] = "여섯 륙";
				myimages[39] = "열 십";
				myimages[40] = "오른 우";
				myimages[41] = "왼 좌";
				myimages[42] = "움직일 동";
				myimages[44] = "윗 상";
				myimages[45] = "이름 명";
				myimages[46] = "인간 세";
				myimages[47] = "일 사";
				myimages[48] = "일곱 칠";
				myimages[49] = "일만 만";

				ry = Math.floor(Math.random() * (myimages.length - 1));
				document
						.write('<div align="center"><img src="img/hanja/' + myimages[ry] + '.png" border=0></div>');

			}
			var temp;
			
			function input() {
				var input = document.getElementById("input").value;
				temp = input;

				if (temp == myimages[ry]) {
					alert("정답입니다");
					top.document.location.reload();
				} else{
					alert("땡!  "+myimages[ry]);
					location.reload();
					top.document.location.reload();   
				}
			}                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

			random_image();
		</script>

	</center>
</body>
</html>