package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.domain.BoardVO;
import com.exam.mapper.BoardMapper;

import lombok.Setter;

@Service
public class BoardServiceImpl implements BoardService {

    @Setter(onMethod_ = @Autowired)
    private BoardMapper mapper;
    
    @Override
    public int getSeqBoardNum() {
        return mapper.getSeqBoardNum();
    }
    
    @Override
    public int insert(BoardVO boardVO) {
        return mapper.insertBoard(boardVO); //주글 등록
    }
    
    @Override
    public BoardVO getBoard(int num) {
        return mapper.getBoard(num);
    }

    @Override
    public List<BoardVO> getBoards(int startRow, int amount, String search) {
        return mapper.getBoards(startRow, amount, search);
    }

    @Override
    public int getBoardCount(String search) {
        return mapper.getBoardCount(search);
    }
    
    @Override
    public int updateReadcount(int num) {
        return mapper.updateReadcount(num);
    }
    
}
