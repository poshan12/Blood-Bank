package blood.com.controller;




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import blood.com.bean.PatientRequestBean;

public class RequestStoreControl {
			
				public boolean requestStore(PatientRequestBean bean)
				{
					boolean res = true;
					try {
						Connection con = Database.getConnection();
						String sql = "insert into requeststore values(?,?,?,?,?,?,?,?,?,?,?,?)";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setInt(1, bean.getNumber());
						ps.setString(2,bean.getPname());
						ps.setString(3, bean.getGender());
						ps.setString(4, bean.getDoctorname());
						ps.setString(5, bean.getHosname());
						ps.setString(6, bean.getContact());
						ps.setString(7, bean.getEmail());
						ps.setString(8, bean.getBloodgroup());
						ps.setString(9, bean.getDistrict());
						ps.setString(10, bean.getLocation());
						ps.setString(11, bean.getDatewhen());
						ps.setString(12, bean.getPriority());
						res= ps.execute();
						
					} catch (SQLException e) {
						System.out.println(e.getMessage());
					}catch (Exception e) {
						// TODO: handle exception
						System.out.println(e.getMessage());
					}
					return res;
				}
}
