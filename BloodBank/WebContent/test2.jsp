<%@page import="blood.com.controller.Database"%>
<%@ page import="java.sql.*"%>  
  
<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Please enter id");  
}else{  
int id=Integer.parseInt(s);  
out.print(id);  
try{  
  
Connection con=Database.getConnection(); 
PreparedStatement ps=con.prepareStatement("select * from donorreg where donor_id=?");  
ps.setInt(1,id);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print(rs.getInt(1)+" "+rs.getString(2));  
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  