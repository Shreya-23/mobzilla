function paymentVal() {
	var a = document.getElementById("cname").value;
	if (a == "") {
		alert('PLEASE ENTER NAME ON YOUR CARD');
		return false;
	}

	var b = document.getElementById("ccnum").value;
	if (b == "") {
		alert("PLEASE ENTER YOUR CARD NUMBER");
		return false;
	}
	var c = document.getElementById("cvv").value;
	if (c == "") {
		alert("PLEASE ENTER YOUR CVV ");
		return false;
	}
}
