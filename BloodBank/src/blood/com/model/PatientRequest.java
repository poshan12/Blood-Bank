package blood.com.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blood.com.bean.PatientRequestBean;
import blood.com.controller.RequestStoreControl;

/**
 * Servlet implementation class PatientRequest
 */
public class PatientRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PatientRequestBean pt = new PatientRequestBean();
		pt.setNumber(new Random().nextInt(1000));
		pt.setPname(request.getParameter("pname"));
		pt.setGender(request.getParameter("gender"));
		pt.setDoctorname(request.getParameter("doctorname"));
		pt.setHosname(request.getParameter("hosname"));
		pt.setContact(request.getParameter("contact"));
		pt.setEmail(request.getParameter("email"));
		pt.setBloodgroup(request.getParameter("bloodgroup"));
		pt.setDistrict(request.getParameter("district"));
		pt.setLocation(request.getParameter("location"));
		pt.setDatewhen(request.getParameter("datewhen"));
		pt.setPriority(request.getParameter("priority"));
		RequestStoreControl rs = new RequestStoreControl();
		boolean res = rs.requestStore(pt);
			
				if(res==false)
				{
					request.setAttribute("res", "success");
					RequestDispatcher rd = request.getRequestDispatcher("requestBlood.jsp");
					rd.forward(request, response);
				}else
					response.sendRedirect("requestBlood.jsp");
			
			
	
		System.out.println("new "+pt.toString());
		
		
	}
}
