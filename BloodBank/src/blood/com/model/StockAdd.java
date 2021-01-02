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



import blood.com.bean.StockBean;
import blood.com.controller.Database;

/**
 * Servlet implementation class StockAdd
 */
public class StockAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StockAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StockBean sb = new StockBean();
		sb.setStockid(new Random().nextInt(1000));
		sb.setDonorid(Integer.parseInt(request.getParameter("donorid")));
		sb.setTakenDate(request.getParameter("takendate"));
		sb.setBloodgroup(request.getParameter("bloodgroup"));
		sb.setQuntity((Integer.parseInt(request.getParameter("quantity"))));
		int newQuantity =0;
		int bid;
		
		
		
		try {
			Connection con = Database.getConnection();
			String sql = "insert into stock values(?,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, sb.getStockid());
				ps.setInt(2, sb.getDonorid());
				ps.setString(3, sb.getTakenDate());
				ps.setString(4, sb.getBloodgroup());
				ps.setInt(5, sb.getQuntity());
				ps.execute();
			System.out.println(sb.toString());
				
		} catch (SQLException e) {
		System.out.println("DB eroor "+e.getMessage());
		
		}catch (Exception e) {
			System.out.println("IO eroor"+e.getMessage());
		}
			try {
				Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement("select *from bloodgroup where bgp=?");
				ps.setString(1, sb.getBloodgroup());
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
						newQuantity= sb.getQuntity()+rs.getInt(3);
						
						System.out.println("new Quntity="+newQuantity);
				}
				PreparedStatement ps1 = con.prepareStatement("update bloodgroup set bloodamt=? where bgp=?");
				ps1.setInt(1, newQuantity);
				ps1.setString(2, sb.getBloodgroup());
				boolean res = ps1.execute();
				request.setAttribute("result", res);
				RequestDispatcher rd = request.getRequestDispatcher("BloodAmtReport.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
	}

}
