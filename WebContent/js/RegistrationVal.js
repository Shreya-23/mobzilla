/**
 *  author : Gopal kothari
 */
function myfun() {
	
	var a = document.getElementById("fn_val").value;
	if(a=="")
	{
	alert("PLEASE FILL YOUR FIRST NAME");
	return false;
	}
	var b = document.getElementById("ln_val").value;
	if(b=="")
	{
	alert("PLEASE FILL YOUR LAST NAME");
	return false;
	}

	var c = document.getElementById("email_val").value;
	
	if(c=="")
	{
	alert("PLEASE FILL YOUR EMAIL");
	return false;
	}

	var d = document.getElementById("password").value;

	if(d=="")
	{
	alert("PASSWORD IS MANDATORY");
	return false;
	}

	if ((d.length>=1)&&(d.length < 6)) {
		alert("PASSWORD IS WEAK ! MUST BE MORE THEN 6 CHARACTERS ");
		return false;
	}
	if (d.length > 10) {
		alert(" PASSWORD LENGTH EXCEEDED ! SHOULD BE LESS THEN 10 CHARACTERS ");
		return false;
	} else {
		true;
	}

	var e = document.getElementById("mobilenumber").value;

	if(e=="")
	{
	alert("PHONE NUMBER IS MANDATORY");
	return false;
	}
	if (isNaN(e)) {
		alert("MOBILE NUMBER MUST HAVE ONLY NUMERIC VALUES");
		return false;
	}
}