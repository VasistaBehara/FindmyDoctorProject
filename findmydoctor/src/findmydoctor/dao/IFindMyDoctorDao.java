/**
 * 
 */
package findmydoctor.dao;

import java.util.List;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Doctor;

/**
 * @author nulak
 *
 */
public interface IFindMyDoctorDao {

	public List<Doctor> getDoctorDetails(String type);
	public List<Availability> getAvailabilityDetails(String type);

}
