/**
 *  author : Gopal kothari
 */
function myfun() {
	
	 var a = document.getElementById("email_val").value;
	if (a == "") {
		alert("PLEASE ENTER YOUR EMAIL ID");
		return false;
	}
	else {
		true;
	}
	
	var d = document.getElementById("password").value;

	if(d=="")
	{
	alert("PASSWORD IS MANDATORY");
	return false;
	}

	if (d.length < 6) {
		alert("PASSWORD IS INCORRECT !! ");
		return false;
	}
	if (d.length > 10) {
		alert(" PASSWORD LENGTH EXCEEDED ! SHOULD BE LESS THEN 10 CHARACTERS ");
		return false;
	} else {
		true;
	}
}