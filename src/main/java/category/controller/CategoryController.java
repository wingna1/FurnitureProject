package category.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryController {
	@Autowired
	private CategoryController categoryController;
	
	@RequestMapping(value="/category/view/category", method=RequestMethod.GET)
	public String category(Model model)
	{
		System.out.println("컨트롤러 등장");
		model.addAttribute("display", "/category/view/category.jsp");
		return "/index";
	}

}
