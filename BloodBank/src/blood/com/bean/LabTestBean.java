package blood.com.bean;

public class LabTestBean {

	private int labTesId;
	private int donor_id;
	private String hivTest;
	private String malaria;
	private String bloodGroup;	
	private String dateTest;
	public int getLabTesId() {
		return labTesId;
	}
	public void setLabTesId(int labTesId) {
		this.labTesId = labTesId;
	}
	public int getDonor_id() {
		return donor_id;
	}
	public void setDonor_id(int donor_id) {
		this.donor_id = donor_id;
	}
	public String getHivTest() {
		return hivTest;
	}
	public void setHivTest(String hivTest) {
		this.hivTest = hivTest;
	}
	public String getMalaria() {
		return malaria;
	}
	public void setMalaria(String malaria) {
		this.malaria = malaria;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getDateTest() {
		return dateTest;
	}
	public void setDateTest(String dateTest) {
		this.dateTest = dateTest;
	}
	@Override
	public String toString() {
		return "LabTestBean [labTesId=" + labTesId + ", donor_id=" + donor_id + ", hivTest=" + hivTest + ", malaria="
				+ malaria + ", bloodGroup=" + bloodGroup + ", dateTest=" + dateTest + "]";
	}
}
