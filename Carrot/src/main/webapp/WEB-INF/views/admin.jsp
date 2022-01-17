<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
	<h1>관리자 전용 페이지</h1>
	<div class="row">
		<ul class="col-2">
			<li>회원 관리</li>
			<li>관리 목록</li>
			<li>관리 목록</li>
			<li>관리 목록</li>
		</ul>
		
		<div class="col-10">
			<h3>회원관리</h3>
			<hr>
			<table>
				<tr>
					<th>통합검색</th>
					<td>
						<input type="text" id="total" value="" placeholder="이름,아이디,지역 등">
					</td>
					
				</tr>
			</table>
			<button type="button" onclick="admSearch()">검색</button>
			<h3>회원리스트</h3>
			
			<table>
				<tr>
			</table>
		</div>
	</div>

<script type="text/javascript">
function admSearch() {
	let total = document.getElementById("total").value;
	
		location.href= "admSearch.do?total="+ total;
	
}
</script>
</body>
</html>