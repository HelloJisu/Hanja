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
		<button onclick="input()">�Է��ϱ�</button>
		</center>
		<script>
		var myimages = new Array();
		var ry;
			function rando0m_image() {
				// �̰��� ����� �̹��� �ּҸ� ����ؼ� �Ʒ��� ���ó�� ������ �ּ���
				myimages[0] = "����ĥ ��";
				myimages[1] = "��� ��";
				myimages[2] = "���� ��";
				myimages[3] = "��� ��";
				myimages[4] = "�� ��";
				myimages[5] = "���� ��";
				myimages[6] = "�� ��";
				myimages[7] = "�� ��";
				myimages[8] = "���� ��";
				myimages[9] = "�ټ� ��";
				myimages[10] = "�� ��";
				myimages[11] = "�� ��";
				myimages[12] = "�� ��";
				myimages[13] = "�� ��";
				myimages[14] = "�� ��";
				myimages[15] = "�ٱ� ��";
				myimages[16] = "�� ��";
				myimages[17] = "��� ��";
				myimages[18] = "�鼺 ��";
				myimages[20] = "�� ȭ";
				myimages[21] = "�系 ��";
				myimages[22] = "��� ��";
				myimages[23] = "�� Ȱ";
				myimages[24] = "���� ��";
				myimages[25] = "�� ��";
				myimages[26] = "���� ��";
				myimages[27] = "�� ��";
				myimages[28] = "������ ��";
				myimages[29] = "�ƴ� �Һ�";
				myimages[30] = "�Ƶ� ��";
				myimages[31] = "�Ʒ� ��";
				myimages[32] = "�ƺ� ��";
				myimages[33] = "�ƿ� ��";
				myimages[34] = "��ȩ ��";
				myimages[35] = "�� ��";
				myimages[36] = "��� ��";
				myimages[37] = "���� ��";
				myimages[38] = "���� ��";
				myimages[39] = "�� ��";
				myimages[40] = "���� ��";
				myimages[41] = "�� ��";
				myimages[42] = "������ ��";
				myimages[44] = "�� ��";
				myimages[45] = "�̸� ��";
				myimages[46] = "�ΰ� ��";
				myimages[47] = "�� ��";
				myimages[48] = "�ϰ� ĥ";
				myimages[49] = "�ϸ� ��";

				ry = Math.floor(Math.random() * (myimages.length - 1));
				document
						.write('<div align="center"><img src="img/hanja/' + myimages[ry] + '.png" border=0></div>');

			}
			var temp;
			
			function input() {
				var input = document.getElementById("input").value;
				temp = input;

				if (temp == myimages[ry]) {
					alert("�����Դϴ�");
					top.document.location.reload();
				} else{
					alert("��!  "+myimages[ry]);
					location.reload();
					top.document.location.reload();   
				}
			}                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

			random_image();
		</script>

	</center>
</body>
</html>