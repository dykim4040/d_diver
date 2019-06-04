package com.exam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.domain.BoardVO;
import com.exam.service.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
    
    @Setter(onMethod_ = @Autowired)
    private BoardService service;
    
    @GetMapping("/write")
    public String write() {
        log.info(" << write() >> "); 
        return "center/write";
    }
    
    @PostMapping("/write")
    public String write(BoardVO boardVO, HttpServletRequest request) {
        log.info(" << write(), POST >> ");
        // 시퀀스로부터 글번호 구하기
        int num = service.getSeqBoardNum();
        boardVO.setNum(num);  // 주글번호
        boardVO.setReRef(num); // re_ref == num 주글일때는 글그룹번호와 글번호가 같음.
        boardVO.setReLev(0);  // re_lev 들여쓰기 레벨
        boardVO.setReSeq(0);  // re_seq 글그룹 내에서는 오름차순 정렬. 최상단에 주글이 옴.
        boardVO.setReadCount(0); // readCount 조회수 0
        
        // 글작성자 IP주소 값 저장
        boardVO.setIp(request.getRemoteAddr());
        
        service.insert(boardVO);
        return "redirect:/contact";
    }
    
    @GetMapping("/detail")
    public String detail(int num, Model model) {
        // 조회수 1증가
        service.updateReadcount(num);
        
        // 글번호에 해당하는 글 전체(상세)내용 가져오기
        BoardVO board = service.getBoard(num);
        log.info("detail board : " + board);
        
        // *글내용 줄바꿈 처리방법
        // (1) <pre>태그처리
        // (2) \r\n -> <br> 바꾸기
        String content = "";
        if (board.getContent() != null) {
            content = board.getContent().replace("\r\n", "<br>");
            board.setContent(content);
        }
        
        model.addAttribute("board", board); // 글번호 해당되는 글내용
        
        return "center/content";
    }
    
    
    
    
    
}
