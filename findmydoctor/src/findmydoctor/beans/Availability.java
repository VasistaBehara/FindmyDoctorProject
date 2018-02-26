/**
 * 
 */
package findmydoctor.beans;

/**
 * @author nulak
 *
 */
public class Availability {

	private Day1 Day1;
	private Day2 Day2;
	private Day3 Day3;
	private String DocName;
	/**
	 * @return the Day1
	 */
	public Day1 getDay1() {
		return Day1;
	}
	/**
	 * @param Day1 the Day1 to set
	 */
	public void setDay1(Day1 Day1) {
		this.Day1 = Day1;
	}
	/**
	 * @return the Day2
	 */
	public Day2 getDay2() {
		return Day2;
	}
	/**
	 * @param Day2 the Day2 to set
	 */
	public void setDay2(Day2 Day2) {
		this.Day2 = Day2;
	}
	/**
	 * @return the Day3
	 */
	public Day3 getDay3() {
		return Day3;
	}
	/**
	 * @param Day3 he Day3 to set
	 */
	public void setDay3(Day3 Day3) {
		this.Day3 = Day3;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Availability [Day1=" + Day1 + ", Day2=" + Day2 + ", Day3=" + Day3 + ",DocName="+DocName+"]";
	}
	public String getDocName() {
		return DocName;
	}
	public void setDocName(String docName) {
		DocName = docName;
	}
	
}
