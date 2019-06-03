package com.exam.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.MovieInfoVO;
import com.exam.domain.MovieVO;

public interface MovieService {
    
    public List<MovieVO> getMovies(int startRow, int amount, String search, String repNationNm) throws Exception;
    
    public int getMovieCount(String search, String repNationNm);
    
    public MovieVO getMovie(int movieCd);
    
    public List<MovieVO> newGetMovie(int amount) throws Exception;
    
    public MovieInfoVO getMovieInfo(int movieCd);
}

