function CheckAddBook() {
	
	var bookId = document.getElementById("bookId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var description = document.getElementById("description");
	
	if (!check(/^Jenic[0-9]{4,11}$/, bookId, "[차량코드]\nJenic과 숫자를 조합하여 5 ~ 12자까지 입력하세요\n 첫 글자는 반드시 Jenic으로 시작하세요"))
	return false;
	
	if (name.value.length < 2 || name.value.length > 10) {
		
		alert("[차량명]\n 최소 2자에서 최대 10자까지 입력하세요.");
		name.focus();
		return false;
	}
	
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n 숫자만 입력하세요.");
		unitPrice.focus();
		return false;
	}
	
	if (description.value.length < 100) {
		alert("[상세 설명]\n 최소 30자 이상 입력하세요.");
		description.focus();
		return false;
	}
	
	function check(regExp, e, msg) {
		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.focus();
		return false;
	}
	
	document.newBook.submit()
}