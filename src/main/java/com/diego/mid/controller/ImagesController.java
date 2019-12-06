package com.diego.mid.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.diego.mid.service.ImagesService;

@Controller
@RequestMapping("/images/**")
public class ImagesController {

	@Inject 
	private ImagesService  imagesService;
	
	@GetMapping(value = "imagesInsert")
	public void imagesInsert()throws Exception {
		
	}
	
	
	
	
}
