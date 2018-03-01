package findmydoctor.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import findmydoctor.beans.Patient;
import findmydoctor.extractor.PatientExtractor;

public class PatientMapper implements RowMapper<Patient> {
	
	@Override
	public Patient mapRow(ResultSet resultSet, int arg1) throws SQLException {
		
		return new PatientExtractor().extractData(resultSet);
	}

}
