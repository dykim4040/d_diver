package com.exam.service;

import java.util.List;

import com.exam.domain.MovieVO;

public interface MovieService {
    
    public List<MovieVO> getMovies(int startRow, int amount, String search) throws Exception;
    
    public int getMovieCount(String search);
    
    public MovieVO getMovie(int movieCd);
    
}

