/**
 *  author : Gopal kothari
 */
function addressVal() {

	var addval = document.getElementById("addline1").value;
	if (addval == "") {
		alert('ADDRESS LINE 1 IS MANDATORY');
		return false;
	}


	var f = document.getElementById("cityy").value;
	if (f == "") {
		alert("PLEASE SPECIFY YOUR CITY");
		return false;
	}
	var h = document.getElementById("statee").value;
	if (h == "") {
		alert("PLEASE SPECIFY YOUR STATE");
		return false;
	}
	var g = document.getElementById("pin").value;
	if (g == "") {
		alert("PLEASE GIVE YOUR PINCODE")
		return false;
	}
	if (isNaN(g)) {
		alert("PIN CODE MUST HAVE ONLY NUMERIC CHARACTER");
		return false;
	}
}
