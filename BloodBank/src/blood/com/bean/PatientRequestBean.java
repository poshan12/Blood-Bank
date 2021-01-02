package blood.com.bean;

public class PatientRequestBean {
	private int number;
	private String pname;
	private String gender;
	private String doctorname;
	private String hosname;
	private String contact;
	private String email;
	private String bloodgroup;
	private String district;
	private String location;
	private String datewhen;
	private String priority;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getHosname() {
		return hosname;
	}
	public void setHosname(String hosname) {
		this.hosname = hosname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDatewhen() {
		return datewhen;
	}
	public void setDatewhen(String datewhen) {
		this.datewhen = datewhen;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "PatientRequestBean [pname=" + pname + ", gender=" + gender + ", doctorname=" + doctorname + ", hosname="
				+ hosname + ", contact=" + contact + ", email=" + email + ", bloodgroup=" + bloodgroup + ", district="
				+ district + ", location=" + location + ", datewhen=" + datewhen + ", priority=" + priority + "]";
	}
	
	
}
