<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Login</title>

<!-- Custom fonts for this template-->
<link rel="stylesheet"
	href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>">

<!-- Custom styles for this template-->
<link rel="stylesheet"
	href="<c:url value="/resources/css/sb-admin.css"/>">
</head>

<body class="bg-dark">
	<!-- �α��� -->
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-content">
				<span id="AUTH_STATE" class="blue-text">(�������� ����)</span>
			</div>
			<div class="card-action">
				<!-- �α��� ��ư -->
				<button id="BTN_GOOGLE_LOGIN" type="button"
					class="btn btn-primary btn-block">���� ����</button>

			</div>
		</div>
	</div>
 
	<!-- firebase SDK ��ũ�� -->
	<!-- The core Firebase JS SDK is always required and must be listed first -->
	<script
		src="<c:url value="https://www.gstatic.com/firebasejs/7.0.0/firebase-app.js" />"></script>

	<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
	<script
		src="<c:url value="https://www.gstatic.com/firebasejs/7.0.0/firebase-auth.js" />"></script>

	<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCQsIZte30MxmtTkKpMbqhPjsEyfLKJ1To",
    authDomain: "kitrifinalproject.firebaseapp.com",
    databaseURL: "https://kitrifinalproject.firebaseio.com",
    projectId: "kitrifinalproject",
    storageBucket: "kitrifinalproject.appspot.com",
    messagingSenderId: "869098238788",
    appId: "1:869098238788:web:469479e3c6a538ace59d11",
    measurementId: "G-YVL66V83QX"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
</script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
	<script type="text/javascript">
	
$("#BTN_GOOGLE_LOGIN").click(function(){
var provider = new firebase.auth.GoogleAuthProvider();

firebase.auth().signInWithPopup(provider).then(function(result){
//�α��� ����	
location.href="main.html";
	
}).catch(function(error){
//�α��� ����
alert(error.message)
});

});

</script>

	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>

</body>

</html>

