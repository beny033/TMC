<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>팀 커뮤니티 게시판</title>
<link rel = "stylesheet" type = "text/css" href = "index.css">
</head>
<body>

<% String id = (String)session.getAttribute("id");
	 String ment = " 님 환영합니다";
%>

	<div class="container">
		<div class="head">
			<header>
				<nav class="nav_right">
					<% if ( id ==  null ) { 
						
					%>
					<a href="loginPage.html" >로그인</a><a href="joinPage.html">회원가입</a><br>
					<%	} else {
						
					%>
						 <a><%= id %><%= ment %></a><a href="logout.jsp">로그아웃</a><br>
					<% 	}
					%>
					
				</nav>
				<p class="title">
					<a href="index.jsp">팀 커뮤니티</a>
				</p>
				<p class="subtitle">
					<span>Team Project</span>
				</p>
				<ul class="main_menu_ul">
					<li class="main_menu_li"><a href="FreeBoard.html">자유 게시판</a></li>
					<li class="main_menu_li"><a href="">프로잭트 게시판</a></li>
					<li class="main_menu_li"><a href="">익명 게시판</a></li>
					<li class="main_menu_li"><a href="">신고 게시판</a></li>
				</ul>
			</header>
		</div>
		<div class="body">
			<div class="submenu">
				<div class="side">
					<span class="mid_line"> 중간메뉴 </span>
				</div>
			</div>
			<div class="side">
				<div class="hentry">
					<div class="text">
						<h2>인사말</h2>
						<p>&ensp;이 홈페이지는 팀프로잭트를 위하여 제작중인 페이지 입니다. 아직 개발과정에 있으며 완성이 되지
							않을수도 있습니다.</p>
						<p>&ensp;</p>
						<h2>소개</h2>
						<p>&ensp;프로잭트 맴버 : 오봉기, 차상준 , 정한진.</p>
						<p>&ensp;</p>
						<h2>Lorem Ipsum</h2>
						<p>&ensp;It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout. The point of using Lorem Ipsum is that it has a
							more-or-less normal distribution of letters, as opposed to using
							'Content here, content here', making it look like readable
							English. Many desktop publishing packages and web page editors
							now use Lorem Ipsum as their default model text, and a search for
							'lorem ipsum' will uncover many web sites still in their infancy.
							Various versions have evolved over the years, sometimes by
							accident, sometimes on purpose (injected humour and the like).</p>
						<p>&ensp;</p>
						<h2>Lorem Ipsum</h2>
						<p>&ensp;Lorem ipsum dolor sit amet, consectetur adipiscing
							elit. Sed porta, eros ac finibus volutpat, ipsum tellus
							sollicitudin justo, fringilla blandit enim nisi nec mi. Cras ac
							nisl eu magna pretium sodales. Donec eu nibh pellentesque,
							laoreet erat ut, placerat leo. Ut mattis nisi eget tincidunt
							faucibus. Sed eget turpis non mi accumsan suscipit. Etiam lacinia
							maximus leo, vitae mollis est. Mauris convallis sagittis luctus.
							Ut vehicula ac urna eget facilisis. Suspendisse eu egestas velit.
							Aenean bibendum nulla tortor, sed vulputate eros scelerisque
							vestibulum. Cras bibendum lorem diam, vitae fermentum quam
							rhoncus a. Etiam eleifend nulla et libero viverra, a vehicula
							orci sollicitudin. Mauris faucibus dui enim, tristique accumsan
							nulla ullamcorper quis. Nunc laoreet ac tellus eget auctor. Donec
							sed facilisis leo.</p>
						<p>&ensp;Vivamus congue maximus ante vitae tempor. Morbi ut
							semper enim. Donec et nulla posuere, efficitur tortor sed,
							dignissim nibh. Praesent semper non nisl placerat consectetur.
							Mauris ut imperdiet mi. Maecenas cursus turpis a odio lacinia
							pellentesque. Quisque placerat facilisis massa, eu blandit nisl
							iaculis non.</p>
						<p>&ensp;Praesent mattis sem libero, volutpat laoreet est
							porta quis. Donec ut sapien consectetur, posuere nulla a, viverra
							tortor. Duis vitae facilisis erat. Integer dignissim pellentesque
							sodales. Quisque id augue at dolor feugiat tempor. Suspendisse
							accumsan mollis ante, ut imperdiet ipsum malesuada eget.
							Vestibulum laoreet quis neque vitae ultricies.</p>
						<p>&ensp;Donec ornare pretium nunc, sed vestibulum est
							ullamcorper quis. Nunc venenatis lacinia ante, sed viverra sem
							scelerisque non. Vestibulum est urna, rhoncus nec imperdiet nec,
							ullamcorper ut sem. Sed fringilla vehicula leo, vitae convallis
							risus molestie a. Nulla in dignissim enim. In quis augue at mi
							lobortis rutrum suscipit et massa. Morbi porta turpis quis
							scelerisque lacinia. Morbi imperdiet accumsan venenatis. Praesent
							vel condimentum ipsum. Cras tempor at purus quis rutrum. Morbi
							cursus ipsum lorem, eu interdum massa porttitor sit amet.</p>
						<p>&ensp;Nulla et rhoncus lectus. Pellentesque vitae est
							pharetra, interdum justo in, bibendum ante. Integer accumsan
							turpis sed eros dapibus semper sed iaculis metus. Donec aliquet
							in nisl at porta. Nulla pellentesque erat ut metus sollicitudin
							porta. Mauris malesuada massa et erat volutpat, non viverra
							tellus elementum. Proin aliquam accumsan arcu, vitae ullamcorper
							elit gravida finibus.</p>

					</div>
				</div>
			</div>
		</div>
		<footer>
			<p>&ensp;</p>
		</footer>
	</div>
</body>
</html>