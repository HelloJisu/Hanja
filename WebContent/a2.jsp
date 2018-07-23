<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
canvas {
	border: 3px solid #CC93D8
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script>
	$(document).ready(
			function() {

				// canvas
				var cnvs = document.getElementById('cnvs');
				// canvas 사용가능
				if (cnvs.getContext) {
					// 캔버스 컨텍스트
					var ctx = cnvs.getContext('2d');

					// 그리기 모드인지 체크하는 변수
					var isDraw = false;

				

					// 그리기 옵션
					var dot = 7;
					var color = 'rgb(0, 0, 0)';

					// 이벤트 핸들러 연결
					$('#cnvs').mousemove(function(e) {
						// 그릴 수 있으면 그린다.
						if (isDraw)
							draw(e);
					});
					$('#cnvs').mousedown(function(e) {
						// 왼쪽 버튼 down 이면 그릴 수 있다고 선언
						if (e.button === 0) {
							isDraw = true;
							draw(e);
						}
					});
					$('#cnvs').mouseup(function(e) {
						// 버튼 up 이면 그릴 수 없다고 선언
						isDraw = false;
					});

					// 그리기
					function draw(e) {
						ctx.fillStyle = color;
						ctx.fillRect(e.offsetX, e.offsetY, dot, dot);
					}

					// 지우기
					function clearCanvas() {
						ctx.clearRect(0, 0, cnvs.width, cnvs.height);
						ctx.beginPath();

						localStorage.removeItem('imgData');
					}

					function setBackground(e)

					{
						var image = new Image();
						image.onload = function() {
							ctx.drawImage(image, 0, 0, cnvs.width,cnvs.height);
						}

						image.src = "img/hanja/가운데 중.png";
					}
					
					setBackground();

					// 지우기
					$('button[id="btnDel"]').click(function() {
						clearCanvas();
					});

					// 저장하기
					$('button[id="btnSave"]').click(function() {
						saveImg();
					});

					// canvas 사용불가
				} else {
					alert('canvas가 지원되지 않는 브라우저입니다. 구글 크롬을 권장합니다.');
					return;
				}
			});
</script>
</head>
</head>
<body>
	<center>
		<div>
			<canvas id="cnvs" width="300" height="300"
				style="border: 0px solid #CC93D8"></canvas>
			<br> <br>
			가운데 중 <br><br>
			<button id="btnDel">다시하기</button>
		</div>
	</center>

</body>
</html>