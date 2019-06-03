package com.exam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
		
		StringBuffer msg = new StringBuffer();
		
		if (id == null || "".equals(id)) {
			msg.append(alertMsg("세션이 만료되어 로그아웃 되었습니다.", "/"));
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		
		int cash = 0;
		try {
			cash = Integer.parseInt(strCash);
		} catch (NumberFormatException e) {
			msg.append(alertMsg("금액을 잘못 입력하였습니다.", null));
			
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
			msg.append(alertMsg(message, null));
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		memberService.updateCash(cash, id);
		
		msg.append(alertMsg(cash + "원이 충전되었습니다.", "/purchase"));
		
		return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
	}
	
	@Transactional
	@PostMapping("/buyPackage")
	public ResponseEntity<String> buyPackage(String price, HttpSession session) {
		System.out.println("<< buyPackage, POST >>");
		String id = (String) session.getAttribute("sessionID");
		System.out.println("buyPackage(id/price) : " + id + "/" + price);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");
		
		StringBuffer msg = new StringBuffer();
		
		if (id == null || "".equals(id)) {
			msg.append(alertMsg("세션이 만료되어 로그아웃되었습니다.", "/login"));
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		
		String pack = memberService.getCurrPackage(id);
		if (pack != null) {
			msg.append(alertMsg("이미 사용중인 패키지가 존재합니다.", "/purchase"));
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		
		
		int intPrice = Integer.parseInt(price);
		int result = memberService.buyPackageUseCash(intPrice, id);
		
		if (result > 0) {
			pack = memberService.getCurrPackage(id);
			session.setAttribute("pack", pack);
			
			msg.append(alertMsg("패키지 구매에 성공하였습니다.", "/"));
			
		} else {
			msg.append(alertMsg("캐쉬 잔액이 부족합니다", "/purchase"));
		}
		return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
	}
	
	// 코드 중복을 최소화 하기 위해 공통 코드를 모아서 메소드 만듬
	// message	: alert로 띄울 메시지
	// url		: location.href로 이동할 페이지, null을 넣으면 history.back 사용
	public String alertMsg(String message, String url) { 
		StringBuffer msg = new StringBuffer();
		msg.append("<script>");
		msg.append("alert('" + message + "');");
		if (url == null) {
			msg.append("history.back();");
		} else {
			msg.append("location.href='" + url + "';");
		}
		msg.append("</script>");
		System.out.println(msg.toString());
		return msg.toString();
	}
	
}
