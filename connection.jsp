<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
Connection con = DriverManager.getConnection("jdbc:odbc:DRIVER=Microsoft Access Driver (*.mdb, *.accdb);DBQ=c:/mywebserver/webapps/data_struc_cw2/db/my-db.accdb;PWD=mypass", "", "");  
%>