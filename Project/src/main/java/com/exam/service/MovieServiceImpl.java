package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.domain.MovieVO;
import com.exam.mapper.MovieMapper;

import lombok.Setter;

@Service("MovieService")
public class MovieServiceImpl implements MovieService {
    
    @Setter(onMethod_ = @Autowired)
    private MovieMapper mapper;
    
    @Override
    public List<MovieVO> getMovies(int startRow, int amount, String search, String repNationNm) throws Exception {
    	System.out.println("search, rep : " + search + " : " + repNationNm);
        return mapper.getMovies(startRow, amount, search, repNationNm);
    }

    @Override
    public int getMovieCount(String search) {
        return mapper.getMovieCount(search);
    }

    @Override
    public MovieVO getMovie(int movieCd) {
        return mapper.getMovie(movieCd);
    }

}
