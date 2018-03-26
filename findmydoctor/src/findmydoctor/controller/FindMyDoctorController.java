/**
 * 
 */
package findmydoctor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import findmydoctor.beans.Availability;
import findmydoctor.beans.Doctor;
import findmydoctor.beans.Patient;
import findmydoctor.service.FindMyDoctorService;

/**
 * @author nulak
 *
 */
@Controller
public class FindMyDoctorController {
	@Autowired
	FindMyDoctorService findMyDoctorService;
	@RequestMapping(value="search")
	public String search(Model model,@RequestParam("keyword") String type) {		
		
		List<Doctor> doctor = findMyDoctorService.getSearchDetails(type);
		if(doctor != null ) {
			model.addAttribute("list",doctor);
			
		} else {
			model.addAttribute("error","Sorry unable to find doctors !!");
		}
		return "showDoctors";
	}
	@RequestMapping(value="availability")
public String SearchAvailability(Model model,@RequestParam("availability") String type) {		
		
		List<Availability> day = findMyDoctorService.getAvailabilityDetails(type);
		if(day != null ) {
			model.addAttribute("list",day);
		} else {
			model.addAttribute("error","Sorry unable to find availability !!");
		}
		return "showAvailability";
	}
	
	
	@RequestMapping(value="login")
public String Login(Model model,@RequestParam("email") String email,@RequestParam("userPassword") String password) {		
		
		List<Patient> patient = findMyDoctorService.getPatientDetails(email);
		String jspValue=null;
		if(patient != null ) {
			model.addAttribute("list",patient);
			
			try {
				
				if(email.equals(patient.get(0).getEmail())&&password.equals(patient.get(0).getPassword()))
					{
					model.addAttribute("message","Login Successful !!");
					jspValue="appointment";
				
					}else {
						model.addAttribute("error","invalid credentials, try again !!");
						jspValue="login";
					}
				
			} catch (Exception e) {				
				model.addAttribute("error","you are not registered!!");
				jspValue="login";
				// TODO: handle exception
			}
		} else {
			model.addAttribute("error","you are not registered!!");
			jspValue="login";
		}
		return jspValue;
	}
	
	@RequestMapping(value="register")
	public String Register(Model model,@RequestParam("Email") String email,@RequestParam("password") String password,@RequestParam("Name") String Name, @RequestParam("Age") String Age, @RequestParam("Sex") String Sex, @RequestParam("Phone") String Phone) {		
			
			List<Patient> patient = findMyDoctorService.setPatientDetails(email,password,Name,Age,Sex,Phone);
			if(patient != null ) {
				model.addAttribute("message","registration Successful !!");
			}
					else {
						model.addAttribute("error","no details entered");
					}
					return "appointment";
			
	}
	
}
