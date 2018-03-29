/**
 * 
 */
package findmydoctor.restapi.client;

import java.util.List;


public class Doctors {
	private List<Practices> practices;
	private Profile profile;
	private List<Specialties> lSpecialties;
	public List<Practices> getPractices() {
		return practices;
	}
	public void setPractices(List<Practices> practices) {
		this.practices = practices;
	}
	public Profile getProfile() {
		return profile;
	}
	
	@Override
	public String toString() {
		return "Doctors [practices=" + practices + ", profile=" + profile + ", lSpecialties=" + lSpecialties + "]";
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
	
	

}