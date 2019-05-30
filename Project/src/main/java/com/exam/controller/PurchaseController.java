package com.exam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.service.MemberService;

import lombok.Setter;

@Controller
@RequestMapping("/purchase/*")
public class PurchaseController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;
	
	@GetMapping("/cash")
	public String cash() {
		System.out.println("<< cash, GET >>");
		return "purchase/cash";
	}
	
	@PostMapping("/cash")
	public ResponseEntity<String> cashProcess(String strCash, HttpSession session, String password) {
		System.out.println("<< cash, POST >>");
		String id = (String) session.getAttribute("sessionID");
		System.out.println(strCash + " : " + id + " : " + password);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		if (id == null || "".equals(id)) {
			StringBuffer msg = new StringBuffer();
			msg.append("<script>");
			msg.append("alert('세션이 만료되어 로그아웃되었습니다.');");
			msg.append("history.back();");
			msg.append("</script>");
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		
		int cash = 0;
		try {
			cash = Integer.parseInt(strCash);
		} catch (NumberFormatException e) {
			StringBuffer msg = new StringBuffer();
			msg.append("<script>");
			msg.append("alert('금액을 잘못 입력하였습니다.');");
			msg.append("history.back();");
			msg.append("</script>");
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		
		int check = memberService.loginCheck(id, password);
		
		if (check != 1) { // 아이디와 비밀번호 일치 여부
			String message = null;
			if (check == -1) {
				message = "잘못된 요청입니다."; // 아이디가 다른 경우
			} else if (check == 0) {
				message = "비밀번호가 다릅니다.";
			} else {
				message = "에러 발생, 다시 입력해주세요.";
			}
			
			StringBuffer msg = new StringBuffer();
			msg.append("<script>");
			msg.append("alert('" + message + "');");
			msg.append("history.back();");
			msg.append("</script>");
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		memberService.updateCash(cash, id);
		
		StringBuffer msg = new StringBuffer();
		msg.append("<script>");
		msg.append("alert('" + cash + "원이 충전되었습니다.');");
		msg.append("location.href='/purchase';");
		msg.append("</script>");
		
		return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
	}
	
	
	
	
}
