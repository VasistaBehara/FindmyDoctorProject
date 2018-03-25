package findmydoctor.extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import findmydoctor.beans.Patient;

public class PatientExtractor implements ResultSetExtractor<Patient> {

	@Override
	public Patient extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		Patient patient = new Patient();
		try {
			patient.setEmail(resultSet.getString("email"));
			patient.setPassword(resultSet.getString("password"));			
		} catch (Exception e) {
			patient= null;
			e.printStackTrace();
		}
		return patient;
	}

}
