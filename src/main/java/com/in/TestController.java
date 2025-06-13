package com.in;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

	
	@GetMapping("/msg")
	public String getMessage() {
		return "Jenkins working succesffully";
	}
}
