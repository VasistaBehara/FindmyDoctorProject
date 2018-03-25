package findmydoctor.extractor;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Day1;
import findmydoctor.beans.Day2;
import findmydoctor.beans.Day3;

public class AvailabilityExtractor implements ResultSetExtractor<Availability>{
	
	@Override
	public Availability extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		
		
		Availability availability = new Availability();
		Day1 day1 = new Day1();
		Day2 day2 = new Day2();
		Day3 day3 = new Day3();
		
		try {
			day1.setT1(resultSet.getString("T1"));
			day1.setT2(resultSet.getString("T2"));
			day1.setT3(resultSet.getString("T3"));
			day1.setT4(resultSet.getString("T4"));
			day1.setT5(resultSet.getString("T5"));
			day1.setT6(resultSet.getString("T6"));
			day1.setT7(resultSet.getString("T7"));
			day1.setT8(resultSet.getString("T8"));
			day2.setT21(resultSet.getString("T21"));
			day2.setT22(resultSet.getString("T22"));
			day2.setT23(resultSet.getString("T23"));
			day2.setT24(resultSet.getString("T24"));
			day2.setT25(resultSet.getString("T25"));
			day2.setT26(resultSet.getString("T26"));
			day2.setT27(resultSet.getString("T27"));
			day2.setT28(resultSet.getString("T28"));
			day3.setT31(resultSet.getString("T31"));
			day3.setT32(resultSet.getString("T32"));
			day3.setT33(resultSet.getString("T33"));
			day3.setT34(resultSet.getString("T34"));
			day3.setT35(resultSet.getString("T35"));
			day3.setT36(resultSet.getString("T36"));
			day3.setT37(resultSet.getString("T37"));
			day3.setT38(resultSet.getString("T38"));
			availability.setDay1(day1);
			availability.setDay2(day2);
			availability.setDay3(day3);
			availability.setDocName(resultSet.getString("Name"));
		
			
		} catch (Exception e) {
			availability= null;
			e.printStackTrace();
		}
		
		return availability;
	}

}
