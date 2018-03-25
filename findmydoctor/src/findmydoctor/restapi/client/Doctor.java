/**
 * 
 */
package findmydoctor.restapi.client;

import java.util.List;

/**
 * @author Sravan
 *
 */
public class Doctor {
	private List<Practices> praccties;
	private Profile profile;
	public List<Practices> getPraccties() {
		return praccties;
	}
	public void setPraccties(List<Practices> praccties) {
		this.praccties = praccties;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	public List<Specialties> getlSpecialties() {
		return lSpecialties;
	}
	public void setlSpecialties(List<Specialties> lSpecialties) {
		this.lSpecialties = lSpecialties;
	}
	private List<Specialties> lSpecialties;

}
