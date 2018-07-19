/**
 * 
 */
/*
 * $(function() { $(document).keydown(function(e) { return (e.which ||
 * e.keyCode) != 116; }); });
 */

/*
 * document.onkeydown = checkKeycode function checkKeycode(e) { var keycode; if
 * (window.event) keycode = window.event.keyCode; else if (e) keycode = e.which;
 *  // Mozilla firefox if ($.browser.mozilla) { if (keycode == 116 ||(e.ctrlKey &&
 * keycode == 82)) { if (e.preventDefault) { e.preventDefault();
 * e.stopPropagation(); } } } // IE else if ($.browser.msie) { if (keycode ==
 * 116 || (window.event.ctrlKey && keycode == 82)) { window.event.returnValue =
 * false; window.event.keyCode = 0; window.status = "Refresh is disabled"; } } }
 */

document.onkeydown = function() {
	switch (event.keyCode) {
	case 116:
		event.returnValue = false;
		event.keyCode = 0;
		return false;
	case 82:
		if (event.ctrlKey) {
			event.returnValue = false;
			event.keyCode = 0;
			return false;
		}
	}
}
