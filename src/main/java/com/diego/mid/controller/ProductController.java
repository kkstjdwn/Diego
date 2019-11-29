package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.diego.mid.model.product.ProductVO;
import com.diego.mid.service.ProductService;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Inject
	private ProductService productService;

	//상품등록 insert
	@GetMapping(value = "productInsert")
	public void productInsert()throws Exception {

	}
	@PostMapping(value = "productInsert")
	public ModelAndView productInsert(ProductVO productVO)throws Exception {

		ModelAndView mv= new ModelAndView();

		int result = productService.productInsert(productVO);

		String msg="등록실패";
		if(result==1) {
			msg="등록성공";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "productLiset");
		mv.setViewName("common/common_result");

		return mv;
	}
	//상품등록 끝

	//상품종류(cat_ref)선택 ajax
	@GetMapping("/selectCloth")
	public void selectCloth(Model model, String kind)throws Exception {
		if(kind.equals("100")) {
			String [] kinds = {"wallet","bag"};
			model.addAttribute("kind", kinds);
		}
		else if(kind.equals("200")) {
			String [] kinds = {"face","body"};
			model.addAttribute("kind", kinds);
		}else if(kind.equals("300")) {
			String [] kinds = {"tshirts","shirts","pants","suits"};
			model.addAttribute("kind", kinds);
		}else {
			String [] kinds = {"underwear"};
			model.addAttribute("kind", kinds);
		}

	}

//선택하게되면 스트링타입이나오지않나? 넣어야하는 타입은 int타입인데 벨류값으로  어떻게 지정해주나

}
