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
				// canvas ��밡��
				if (cnvs.getContext) {
					// ĵ���� ���ؽ�Ʈ
					var ctx = cnvs.getContext('2d');

					// �׸��� ������� üũ�ϴ� ����
					var isDraw = false;

				

					// �׸��� �ɼ�
					var dot = 7;
					var color = 'rgb(0, 0, 0)';

					// �̺�Ʈ �ڵ鷯 ����
					$('#cnvs').mousemove(function(e) {
						// �׸� �� ������ �׸���.
						if (isDraw)
							draw(e);
					});
					$('#cnvs').mousedown(function(e) {
						// ���� ��ư down �̸� �׸� �� �ִٰ� ����
						if (e.button === 0) {
							isDraw = true;
							draw(e);
						}
					});
					$('#cnvs').mouseup(function(e) {
						// ��ư up �̸� �׸� �� ���ٰ� ����
						isDraw = false;
					});

					// �׸���
					function draw(e) {
						ctx.fillStyle = color;
						ctx.fillRect(e.offsetX, e.offsetY, dot, dot);
					}

					// �����
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

						image.src = "img/hanja/��� ��.png";
					}
					
					setBackground();

					// �����
					$('button[id="btnDel"]').click(function() {
						clearCanvas();
					});

					// �����ϱ�
					$('button[id="btnSave"]').click(function() {
						saveImg();
					});

					// canvas ���Ұ�
				} else {
					alert('canvas�� �������� �ʴ� �������Դϴ�. ���� ũ���� �����մϴ�.');
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
			��� �� <br><br>
			<button id="btnDel">�ٽ��ϱ�</button>
		</div>
	</center>

</body>
</html>