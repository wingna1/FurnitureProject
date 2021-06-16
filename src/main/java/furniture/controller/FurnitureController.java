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

import furniture.bean.Product_qnaDTO;
import furniture.service.FurnitureService;

@Controller
public class FurnitureController {
	@Autowired
	private FurnitureService furnitureService;
	
	
	// 메인화면 display를 불러온다
	@RequestMapping(value="/main/indexDisplay", method=RequestMethod.GET)
	public String indexDisplay(Model model) {
		model.addAttribute("display", "/main/indexDisplay.jsp");
		return "/index";
	}
	
	// 상품 상세페이지를 불러온다
   @RequestMapping(value="/main/productView", method=RequestMethod.GET)
   public String productView(Model model) {
      model.addAttribute("display", "/main/productView.jsp");
      return "/index";
   }
	   
   // 상품 문의 write .. 상품문의DB에 write
   @ResponseBody
   @RequestMapping(value="/main/productQnAWrite", method=RequestMethod.POST)
   public ModelAndView productQnAWrite(@ModelAttribute Product_qnaDTO product_qnaDTO) {
	   product_qnaDTO.setEmail("emailmai1");
	   product_qnaDTO.setProduct_id("35345");
	   
	   furnitureService.productQnAWrite(product_qnaDTO);
	   
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("jsonView");
	   
	   return mav;
   }
   
   // 상품 문의 list ... 상품문의 DB를 전체 셀렉트
   @ResponseBody
   @RequestMapping(value="/main/productQnAList", method=RequestMethod.POST)
   public ModelAndView productQnAList() {
	   
	   List<Product_qnaDTO> productQnAList = furnitureService.productQnAList();
	   ModelAndView mav = new ModelAndView();
	   mav.addObject("productQnAList", productQnAList);
	   mav.setViewName("jsonView");
	   return mav;
   }
   
}
