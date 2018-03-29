/**
 * 
 */
package findmydoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Doctor;
import findmydoctor.beans.Patient;
import findmydoctor.dao.IFindMyDoctorDao;

@Component("findMyDoctorService")
public class FindMyDoctorService {
	@Autowired
	IFindMyDoctorDao findMyDoctorDao;

	public List<Doctor> getSearchDetails(String type) {
		
		return findMyDoctorDao.getDoctorDetails(type);
	}
	
	public List<Availability> getAvailabilityDetails(String type) {
		
		return findMyDoctorDao.getAvailabilityDetails(type);
	}
	
	public List<Patient> getPatientDetails(String type) {
		
		return findMyDoctorDao.getPatientDetails(type);
	}
	
	public List<Patient> setPatientDetails(String email, String name, String age, String sex, String phone, String day, String doctorname, String time) {
		
		return findMyDoctorDao.setPatientDetails(email,name,age,sex,phone, day, doctorname, time);
	}
}
