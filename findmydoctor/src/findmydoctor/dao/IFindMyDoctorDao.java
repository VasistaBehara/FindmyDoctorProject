/**
 * 
 */
package findmydoctor.dao;

import java.util.List;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Doctor;
import findmydoctor.beans.Patient;

/**
 * @author nulak
 *
 */
public interface IFindMyDoctorDao {

	public List<Doctor> getDoctorDetails(String type);
	public List<Availability> getAvailabilityDetails(String type);
	public List<Patient> getPatientDetails(String type);
	public List<Patient> setPatientDetails(String email, String name, String age, String sex, String phone, String day, String doctorname, String time);

}
