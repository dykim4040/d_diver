package com.exam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.domain.MemberVO;
import com.exam.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {
	@Setter(onMethod_ = @Autowired)
    private MemberService service;
	
	@GetMapping("/login")
	public String login() {
		System.out.println("<< login 호출 >>");
		return "member/login";
	}
	
	@PostMapping("/login")
	public ResponseEntity<String> login(MemberVO member, HttpSession session) {
		System.out.println("<< login, POST >>");
		int check = service.loginCheck(member.getId(), member.getPassword());
		
		if (check != 1) { // 로그인 실패
			String message = null;
			if (check == -1) {
				message = "해당하는 아이디가 없습니다.";
			} else if (check == 0) {
				message = "비밀번호가 다릅니다.";
			} else {
				message = "로그인 에러 발생, 다시 입력해주세요.";
			}
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			
			StringBuffer msg = new StringBuffer();
			msg.append("<script>");
			msg.append("alert('" + message + "');");
			msg.append("history.back();");
			msg.append("</script>");
			
			return new ResponseEntity<>(msg.toString(), headers, HttpStatus.OK);
		}
		session.setAttribute("sessionID", member.getId());
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Location", "/"); // redirect 경로 위치
		return new ResponseEntity<String>(headers, HttpStatus.FOUND);
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("<< logout, GET >>");
		session.invalidate();
		
		return "index";
	}
	
	@GetMapping("/join")
	public String join() {
		System.out.println("<< join 호출 >>");
		return "member/join";
	}
	
	@PostMapping("/join")
	public ResponseEntity<String> join(MemberVO member) {
		System.out.println("<< joinProcess 호출 >>");
		
		service.join(member);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=UTF-8");

        StringBuilder sb = new StringBuilder();
        sb.append("<script>");
        sb.append("alert('회원가입이 완료되었습니다.');");
        sb.append("location.href = '/member/login';");
        sb.append("</script>");

        ResponseEntity<String> responseEntity = new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK);

        return responseEntity;
	}//join
	
	
	@GetMapping("/joinIdCheckJson")
	@ResponseBody
    public boolean joinIdCheckJson(String userId) {
        System.out.println("<< joinIdCheckJson 호출 >>");
        System.out.println(userId);
        return service.isIdDupChecked(userId);
    }
	
	@GetMapping("/myInfo")
	public String myInfo(String id, Model model) {
		System.out.println("<< myInfo 호출 >>");
		
		MemberVO member = service.getMember(id);
		
		model.addAttribute("member", member);
		System.out.println("아이디 : " + id);
		
		return "member/myInfo";
	}
	
	
	
	
	
	
}
