package blood.com.bean;

public class ContactBean {
	private String name;
	private String eamil;
	private String subject;
	private String msg;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEamil() {
		return eamil;
	}
	@Override
	public String toString() {
		return "ContactBean [name=" + name + ", eamil=" + eamil + ", subject=" + subject + ", msg=" + msg + "]";
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	
}
