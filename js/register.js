function validateEmail()
	{
	 
		var emailID = document.register_Form.Email.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");
		if (atpos < 1 || ( dotpos - atpos < 2 )) 
		{
			alert("Please enter a valid email address")
			document.register_Form.Email.focus() ;
			return false;
		}
		return(true);
	}
function validate()
{
    if( document.register_Form.Uname.value == "" )
    {
        alert( "Please provide your name!" );
        document.register_Form.Uname.focus() ;
        return false;
    }
    if( document.register_Form.Email.value == "" )
	{
		alert( "Please provide your Email!" );
		document.register_Form.Email.focus() ;
		return false;
	}else{
		// Extra check for data format
		var ret = validateEmail();
		if(ret == false)
		{
			return false;
		}
	}
    if( document.register_Form.Pword.value == "" )
    {
        alert( "Please enter a password!" );
        document.register_Form.Pword.focus() ;
        return false;
    }
    return(true);
}