<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의사항</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
<h1>1:1 문의사항</h1>
<div align="center">

	<form action="otoBbsWriteAf.do" method="post">
	
		<table border="1" style="width:1000px">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" size="70px" value="" readonly="readonly">
				</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" size="70px">
					</td>
				</tr>
				<tr>
					<th>문의 내용</th>
					<td>
						<textarea rows="20" cols="80" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<input type="file" class="custom-input">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="글쓰기">
					</td>
				</tr>
		
		</table>
	</form>

</div>

<script type="text/javascript">
$(".custom-input").on("change", function() {
	let fileName = $(this).val().split("\\").pop();
	$(this).siblings(".custom-input").addClass("selected").html(fileName);
});

</script>

</body>
</html>