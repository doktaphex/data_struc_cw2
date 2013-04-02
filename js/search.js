function validate()
{
	if( document.search_Form.Search.value == "" )
	{
		alert( "Please provide your search category!" );
		document.search_Form.Search.focus() ;
		return false;
	}
	return(true);
}