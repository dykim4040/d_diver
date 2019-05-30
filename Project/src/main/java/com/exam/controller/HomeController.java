package com.exam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.exam.domain.MemberVO;
import com.exam.service.MemberService;

import lombok.Setter;

@Controller
public class HomeController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;
	
	@GetMapping("/")
	public String main(Model model) {
		System.out.println("<< main 호출 >>");
		return "index";
	}//main()
	
	@GetMapping("/about")
	public String about() {
		System.out.println("<< about 호출 >>");
		return "about";
	}//about()
	
	@GetMapping("/contact")
	public String contact() {
		System.out.println("<< contact 호출 >>");
		return "contact";
	}//contact()
	
	@GetMapping("/movie")
	public String movie() {
		System.out.println("<< movie 호출 >>");
		return "movie";
	}//movie()
	

	@GetMapping("/purchase")
	public String purchase(HttpSession session, Model model) {
		System.out.println("<< purchase, GET >>");
		String id = (String) session.getAttribute("sessionID");
		
		if (id == null || "".equals(id)) {
			return "member/login";
		}
		
		MemberVO member = memberService.getMember(id);
		
		model.addAttribute("member", member);
		System.out.println(id + "의 현재 캐쉬 잔액 " + member.getCash() + "원");
		return "purchase/purchase";
	}

}
