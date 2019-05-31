package com.exam.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.MovieVO;

public interface MovieService {
    
    public List<MovieVO> getMovies(int startRow, int amount, String search, String repNationNm) throws Exception;
    
    public int getMovieCount(String search, String repNationNm);
    
    public MovieVO getMovie(int movieCd);
    
}

