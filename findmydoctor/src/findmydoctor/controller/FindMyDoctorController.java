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
			model.addAttribute("error","Sorry unable to find doctors !!");
		}
		return "showAvailability";
	}
}
