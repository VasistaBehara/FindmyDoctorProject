/**
 * 
 */
package findmydoctor.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Doctor;
import findmydoctor.beans.Patient;
import findmydoctor.mapper.AvailabilityMapper;
import findmydoctor.mapper.DoctorMapper;
import findmydoctor.mapper.PatientMapper;

/**
 * @author 
 *
 */
@Component("findMyDoctorDao")
public class FindMyDoctorDao implements IFindMyDoctorDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Override
	public List<Doctor> getDoctorDetails(String type) {
		List<Doctor> list = null;
		String sql ="select docId,Name,Age,Department,Location,rating,Pricing from doctor d where Department like '%" + type + "%'";
		String sql2 ="select docId,Name,Age,Department,Location,rating,Pricing from doctor d where Name like '%" + type + "%'";
		String sql3 ="select docId,Name,Age,Department,Location,rating,Pricing from doctor d where Location like '%" + type + "%'";
		//Object[] params = new Object[] {type};
		try {
			list = jdbcTemplate.query(sql,new DoctorMapper());
			
			if (list.isEmpty())
			{
				
				list = jdbcTemplate.query(sql2,new DoctorMapper() );
					if (list.isEmpty())
				{
					list = jdbcTemplate.query(sql3,new DoctorMapper() );
				}
			}
		} catch (DataAccessException e) {
			
			e.printStackTrace();
			list = null;
		}
		
		return list;
	}
	public List<Availability> getAvailabilityDetails(String type1) {
		List<Availability> list1 = null;
		String sql ="select d.Name,T1,T2,T3,T4,T5,T6,T7,T8,T21,T22,T23,T24,T25,T26,T27,T28,T31,T32,T33,T34,T35,T36,T37,T38,d.Pricing from doctor d , day2 d2, day1 d1, day3 d3 where d.docId = d2.DocId and d1.DocId=d.docId and d.docId = d3.DocId and d.docId = ?;";
		Object[] params1 = new Object[] {type1};
		try {
			list1 = jdbcTemplate.query(sql,new AvailabilityMapper(),params1 );
		} catch (DataAccessException e) {
			
			e.printStackTrace();
			list1 = null;
		}
		
		return list1;
	}
	@Override
	public List<Patient> getPatientDetails(String email) {
		List<Patient> list2 = null;
		String sql ="select Email,password from Patients where Email like ?;";
		Object[] params1 = new Object[] {email};
		try {
			list2 = jdbcTemplate.query(sql,new PatientMapper(),params1 );
		} catch (DataAccessException e) {
			
			e.printStackTrace();
			list2 = null;
		}
		
		return list2;
	}
}
