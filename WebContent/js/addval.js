/**
 * 
 */
/**
 * 
 */
// disabling space bar

 $(document).ready(function(){ $("#pass").keydown(function(event) { if
  (event.keyCode == 32) { event.preventDefault(); } }); });
 

 // allowing only numbers as a input in input textbox
$(document).ready(function() {
    $("#pincode").keydown(function (e) {
        // Allow: backspace, delete, tab,enter
        if ($.inArray(e.keyCode, [8,46,9,13]) !== -1 ||   // to allow dot add
															// 196,27 for escape
             // Allow: Ctrl/cmd+A
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) || // metakey
																				// returns
																				// only
																				// boolean
																				// value
             // Allow: Ctrl/cmd+C
            (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: Ctrl/cmd+X
            (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
       
                 return ;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
});
