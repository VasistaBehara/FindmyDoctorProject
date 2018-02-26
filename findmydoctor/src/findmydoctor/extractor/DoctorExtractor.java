/**
 * 
 */
package findmydoctor.extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import findmydoctor.beans.Doctor;

/**
 * @author nulak
 *
 */
public class DoctorExtractor implements ResultSetExtractor<Doctor> {

	@Override
	public Doctor extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		Doctor doctor = new Doctor();
		try {
			doctor.setDocId(resultSet.getInt("docId"));
			doctor.setAge(resultSet.getInt("age"));
			doctor.setDepartment(resultSet.getString("department"));
			doctor.setLocation(resultSet.getString("location"));
			doctor.setName(resultSet.getString("name"));
			doctor.setRating(resultSet.getString("rating"));
		} catch (Exception e) {
			doctor= null;
			e.printStackTrace();
		}
		return doctor;
	}

}
