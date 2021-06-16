/*function idCheck(id){
	if(id ==""){
		alert("아이디를 입력해 주세요.");
		document.regFrm.id.focus();
		return;
	}
	url = "idCheck.jsp?id=" + id;
	window.open(url, "IDCheck", "width=300, height=150");
}*/
function idCheck(id){
	if(id ==""){
		alert("아이디를 입력해 주세요.");
		document.regFrm.id.focus();
		return;
	}
	url = "portfolio.do?command=portfolio_check_form&id=" + id;
	window.open(url, "IDCheck", "width=300, height=150");
	return checkid;
}
function loginCheck(){
	if(document.loginFrm.id.value==""){
		alert("아이디를 입력해주세요.");
		document.loginFrm.id.focus();
		return;
	}
	if(document.loginFrm.pwd.value==""){
		alert("비밀번호를 입력해주세요.");
		document.loginFrm.pwd.focus();
		return;
	}
	document.loginFrm.submit();
}
function inputCheck(){
	if(document.regFrm.id.value==""){
		alert("아이디를 입력 해주세요.");
		document.regFrm.id.focus();
		return false;
	}
	if(document.regFrm.pwd.value==""){
		alert("비밀번호를 입력 해주세요.");
		document.regFrm.pwd.focus();
		return false;
	}
	if(document.regFrm.repwd.value==""){
		alert("비밀번화 확인을 입력 해주세요.");
		document.regFrm.repwd.focus();
		return false;
	}
	if(document.regFrm.pwd.value != document.regFrm.repwd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regFrm.repwd.value="";
		document.regFrm.repwd.focus();
		return false;
	}
	if(document.regFrm.name.value==""){
		alert("이름을 입력  해주세요.");
		document.regFrm.name.focus();
		return false;
	}
	if(document.regFrm.phone.value==""){
		alert("번호를 입력 해주세요.");
		document.regFrm.phone.focus();
		return false;
	}
	var str = document.regFrm.phone.value;
	var atPos = str.indexOf('-');
	if(atPos != -1){
		alert("번호만 입력 해주세요.");
		document.regFrm.phone.focus();
		return false;
	}
	if(document.regFrm.gender.value==""){
		alert("성별을 체크  해주세요.");
		return false;
	}
	if(!document.regFrm.pd.checked){
		alert("개인정보 동의 해주세요.");
		return false;
	}
	if(chk.equals("false")){
		alert("개인정보 동의 해주세요");
		return false;
	}
	if(document.regFrm.content.value==""){
		alert("문의 내용을 적어주세요.");
		document.regFrm.content.focus();
		return false;
	}
	alert("회원가입에 성공하셨습니다!")
	return true;
}

function win_close(){
	self.close();
}