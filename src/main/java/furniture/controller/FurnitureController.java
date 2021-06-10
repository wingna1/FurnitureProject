package furniture.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import furniture.service.FurnitureService;

@Controller
public class FurnitureController {
	@Autowired
	private FurnitureService furnitureService;
	
	@RequestMapping(value="/main/exampleDisplay", method=RequestMethod.GET)
	public String exampleDisplay(Model model) {
		model.addAttribute("display", "/main/exampleDisplay.jsp");
		return "/index";
	}
	
	
	//  절대주소 수정 완료 ... index, main 폴더 이동 가능!
	@RequestMapping(value = "/main/GOexampleDisplay", method=RequestMethod.POST)
	@ResponseBody
	public String GOexampleDisplay(@RequestParam String anything) {
		//ModelAndView mav = new ModelAndView();
		
		//mav.addObject("anything", anything);
		return anything;
	}
	
	@RequestMapping(value="/main/indexDisplay", method=RequestMethod.GET)
	public String indexDisplay(Model model) {
		model.addAttribute("display", "/main/indexDisplay.jsp");
		return "/index";
	}
}
