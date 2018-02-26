package findmydoctor.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import findmydoctor.beans.Availability;

import findmydoctor.extractor.AvailabilityExtractor;


public class AvailabilityMapper implements RowMapper<Availability> {
	
	@Override
	public Availability mapRow(ResultSet resultSet, int arg1) throws SQLException {
		
		return new AvailabilityExtractor().extractData(resultSet);
	}

}
