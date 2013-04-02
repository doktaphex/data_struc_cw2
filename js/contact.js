function validateEmail()
	{
	 
		var emailID = document.contact_Form.Email.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");
		if (atpos < 1 || ( dotpos - atpos < 2 )) 
		{
			alert("Please enter a valid email address")
			document.contact_Form.Email.focus() ;
			return false;
		}
		return(true);
	}
                
function validate()
	{
		if( document.contact_Form.Uname.value == "" )
		{
			alert( "Please provide your name!" );
			document.contact_Form.Uname.focus() ;
			return false;
		}
		if( document.contact_Form.Email.value == "" )
		{
			alert( "Please provide your Email!" );
			document.contact_Form.Email.focus() ;
			return false;
		}else{
			// Extra check for data format
			var ret = validateEmail();
			if(ret == false)
			{
				return false;
			}
		}
		if( document.contact_Form.Message.value == "" )
		{
			alert( "Please enter a message!" );
			document.contact_Form.Message.focus() ;
			return false;
		}
		return(true);
	}