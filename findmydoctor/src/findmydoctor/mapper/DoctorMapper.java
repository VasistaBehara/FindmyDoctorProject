/**
 * 
 */
package findmydoctor.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



import findmydoctor.beans.Doctor;
import findmydoctor.extractor.DoctorExtractor;

/**
 * @author nulak
 *
 */
public class DoctorMapper implements RowMapper<Doctor> {

	@Override
	public Doctor mapRow(ResultSet resultSet, int arg1) throws SQLException {
		
		return new DoctorExtractor().extractData(resultSet);
	}

}
