package blood.com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood.com.bean.ContactBean;
import blood.com.controller.Database;

/**
 * Servlet implementation class Contact
 */
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ContactBean cb = new ContactBean();
		cb.setName(request.getParameter("name"));
		cb.setEamil(request.getParameter("email"));
		cb.setSubject(request.getParameter("subject"));
		cb.setMsg(request.getParameter("msg"));
		System.out.println(cb.toString());
		try {
			Connection con = Database.getConnection();
			String sql = "insert into contact values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cb.getName());	
			ps.setString(2, cb.getEamil());	
			ps.setString(3, cb.getSubject());	
			ps.setString(4, cb.getMsg());	
			ps.execute();
			response.sendRedirect("home.jsp");
			
		} catch (SQLException e) {
			System.out.println("DB1 eroor "+e.getMessage());
		}
		catch (IOException e) {
			System.out.println("DB eroor "+e.getMessage());
		}
	}

}
