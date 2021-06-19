package profile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import profile.service.ProfileService;

@Controller
@RequestMapping(value="profile")
public class ProfileController {
	@Autowired
	ProfileService profileService;
	
	@RequestMapping(value="profile", method=RequestMethod.GET)
	public String boardWriteForm(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		return "/index";
	}
	

}
