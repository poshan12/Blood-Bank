package blood.com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood.com.bean.DonorBean;
import blood.com.controller.Database;

/**
 * Servlet implementation class DonorReg
 */
public class DonorReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DonorReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			DonorBean d = new DonorBean();
			int regid = new Random().nextInt(100);
			d.setRegid(regid);
			d.setDonorname(request.getParameter("donorname"));
			d.setGener(request.getParameter("gender"));
			d.setWeight(Integer.parseInt(request.getParameter("weight")));
			d.setAddress(request.getParameter("address"));
			d.setContact(request.getParameter("contact"));
			d.setBgroup(request.getParameter("blood"));
			d.setDob(request.getParameter("dob"));
			d.setStatus(0);
			System.out.println(d.toString());
			try {
				Connection con = Database.getConnection();
				String sql = "insert into donorreg values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, d.getRegid());
				ps.setString(2, d.getDonorname());	
				ps.setString(3, d.getGener());
				ps.setString(4, d.getDob());
				ps.setString(5, d.getContact());
				ps.setString(6, d.getBgroup());
				ps.setInt(7, d.getWeight());
				ps.setString(8, d.getAddress());
				ps.setInt(9, d.getStatus());
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
