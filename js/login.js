function validate()
{
    if( document.login_Form.Uname.value == "" )
    {
        alert( "Please provide your name!" );
        document.login_Form.Uname.focus() ;
        return false;
    }
    if( document.login_Form.Pword.value == "" )
    {
        alert( "Please enter your password!" );
        document.login_Form.Pword.focus() ;
        return false;
    }
    return(true);
}