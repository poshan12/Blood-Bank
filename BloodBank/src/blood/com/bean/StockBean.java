package blood.com.bean;

public class StockBean {
private int stockid;
private int donorid;
private String takenDate;
private int quntity ;
private String bloodgroup;
public int getStockid() {
	return stockid;
}
public void setStockid(int stockid) {
	this.stockid = stockid;
}
public int getDonorid() {
	return donorid;
}
public void setDonorid(int donorid) {
	this.donorid = donorid;
}
public String getTakenDate() {
	return takenDate;
}
public void setTakenDate(String takenDate) {
	this.takenDate = takenDate;
}
public int getQuntity() {
	return quntity;
}
public void setQuntity(int quntity) {
	this.quntity = quntity;
}
public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
}
@Override
public String toString() {
	return "StockBean [stockid=" + stockid + ", donorid=" + donorid + ", takenDate=" + takenDate + ", quntity="
			+ quntity + ", bloodgroup=" + bloodgroup + "]";
}
}
