function validateEmail()
    {
     
        var emailID = document.forgot_Form.Email.value;
        atpos = emailID.indexOf("@");
        dotpos = emailID.lastIndexOf(".");
        if (atpos < 1 || ( dotpos - atpos < 2 )) 
        {
            alert("Please enter a valid email address")
            document.forgot_Form.Email.focus() ;
            return false;
        }
        return(true);
    }
function validate()
{
    if( document.forgot_Form.Uname.value == "" )
    {
        alert( "Please provide your name!" );
        document.forgot_Form.Uname.focus() ;
        return false;
    }
    if( document.forgot_Form.Email.value == "" )
        {
            alert( "Please provide your Email!" );
            document.forgot_Form.Email.focus() ;
            return false;
        }else{
            // Extra check for data format
            var ret = validateEmail();
            if(ret == false)
            {
                    return false;
            }
        }
    return(true);
}