package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.BoardVO;

public interface BoardMapper {
    
    public int getSeqBoardNum();
    
    public int insertBoard(BoardVO boardVO);
    
    public BoardVO getBoard(int num);
    
    public List<BoardVO> getBoards(@Param("startRow") int startRow, 
            @Param("amount") int amount, 
            @Param("search") String search);
    
    public int getBoardCount(@Param("search") String search);
    
    public int updateReadcount(int num);
    
}
