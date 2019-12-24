<%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*" %>
  
<%  
String id=request.getParameter("val"); 

if(id == null || id.trim().equals("")){  
out.print("Please enter id");  
}else{  
//int id=Integer.parseInt(s);  
out.print(id);  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","system");  
//PreparedStatement ps=con.prepareStatement("select * from emp where id=?");  
//ps.setString(1,id);  
//ResultSet rs=ps.executeQuery(); 
System.out.println("---------------------->");
//System.out.println(rs.getString(1));

  Statement stmt = con.createStatement();
     String query="select * from emp ";
    
    ResultSet result = stmt.executeQuery(query);
     while (result.next())
while(result.next()){ 
	System.out.println("---------------------->");
	System.out.println(result.getString(1));
out.print(result.getString(1)+" "+result.getString(2));  
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  