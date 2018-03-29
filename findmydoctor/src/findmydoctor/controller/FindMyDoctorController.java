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
import findmydoctor.mail.Contact;
import findmydoctor.restapi.client.BetterdoctorClient;
import findmydoctor.restapi.client.Doctors;
import findmydoctor.service.FindMyDoctorService;


@Controller
public class FindMyDoctorController {
	@Autowired
	FindMyDoctorService findMyDoctorService;
	
	@Autowired
	Contact contact; 
	//Contact contact = new Contact();
	
	@RequestMapping(value="mail")
	public String SendMail(Model model,@RequestParam("Email") String email,@RequestParam("Name") String Name, @RequestParam("Age") String Age, @RequestParam("Sex") String Sex, @RequestParam("Phone") String Phone,@RequestParam("time") String time,@RequestParam("doctorname") String doctorname,@RequestParam("day") String day)
	{
		List<Patient> patient = findMyDoctorService.setPatientDetails(email,Name,Age,Sex,Phone,day,time,doctorname);
		
		boolean stat=contact.sendMail(email, "Appointment Details : ", email, "You have an Appointment with "+doctorname+" at "+time+" on "+day);
			if(stat == true ) {
				model.addAttribute("message","Appointment registered and a Mail has been sent!!");
			}
			else {
				model.addAttribute("error","Appointment not registered, try again");
			}
			return "appointment";
			
	}
	
	
	

	
	@RequestMapping(value="searchD")
	public String getsearch(Model model,@RequestParam("keyword") String type) {		
		BetterdoctorClient bt =new BetterdoctorClient();
		
		List<Doctors> doctor = bt.GetdoctorClient();
		System.out.println("doctor "+doctor);
		if(doctor != null ) {
			model.addAttribute("list",doctor);
		} else {
			model.addAttribute("error","Sorry unable to find doctors !!");
		}
		return "allDoctor";
	}
	
	
	
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
				
			System.out.println(email+patient.get(0).getEmail()+""+password+""+(patient.get(0).getPassword()));
				
				if(email.equals(patient.get(0).getEmail())&&password.equals(patient.get(0).getPassword()))
					{
					model.addAttribute("message","Welcome"+" "+patient.get(0).getName());
					System.out.println("Login Successful ");
					jspValue="appointment";
				
					}else {
						model.addAttribute("error","Login Unsuccesful , try again!!");
						System.out.println("Login UnSuccessful ");
						jspValue="login";
					}
				
			} catch (Exception e) {				
				model.addAttribute("error","you are not registered!!");
				System.out.println("you are not registered 1 ");
				jspValue="login";
				// TODO: handle exception
			}
		} else {
			model.addAttribute("error","you are not registered!!");
			System.out.println("you are not registered 2 ");
			jspValue="login";
		}
		return jspValue;
	}
	
	
	
}
