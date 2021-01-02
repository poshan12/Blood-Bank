package blood.com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood.com.bean.LabTestBean;
import blood.com.controller.Database;


/**
 * Servlet implementation class Labtest
 */
public class Labtest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Labtest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				int donor =Integer.parseInt(request.getParameter("donor_id"));
				String name = request.getParameter("fullname");
			
		LabTestBean lab  = new LabTestBean();
		
		lab.setLabTesId(new Random().nextInt(100));
		lab.setDonor_id(donor);
		lab.setHivTest(request.getParameter("hivtest"));
		lab.setMalaria(request.getParameter("malaria"));
		lab.setDateTest(request.getParameter("dateoftest"));
		lab.setBloodGroup(request.getParameter("bloodgroup"));
		System.out.println(lab.toString());
		try {
			
			Connection con = Database.getConnection();
			Statement st = con.createStatement();
			String sql1="update donorreg set status =1 where donor_id="+donor;
			st.execute(sql1);
			String sql = "insert into labtest values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, lab.getLabTesId());
			ps.setInt(2, lab.getDonor_id());
			ps.setString(3, lab.getHivTest());
			ps.setString(4, lab.getMalaria());
			ps.setString(5, lab.getBloodGroup());
			ps.setString(6, lab.getDateTest());
			ps.execute();
			if(lab.getHivTest().equalsIgnoreCase("negative")&& lab.getMalaria().equalsIgnoreCase("negative")) {
			request.setAttribute("donorid", lab.getDonor_id());
			request.setAttribute("donorname", name);
			request.setAttribute("bloodgroup", lab.getBloodGroup());
			RequestDispatcher rd = request.getRequestDispatcher("stockform.jsp");
			rd.forward(request, response);
			}else
			{
				response.sendRedirect("home.jsp");
			}
		
		} catch (SQLException e) {
			
			System.out.println("DB eroor"+e.getMessage());
		}
			catch (IOException e2) {
				System.out.println(" IO "+e2.getMessage());
			}
		}
		
	}


