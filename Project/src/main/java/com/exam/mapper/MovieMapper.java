package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.MovieVO;

public interface MovieMapper {

    public List<MovieVO> getMovies(@Param("startRow") int startRow, @Param("amount") int amount, @Param("search") String search);
    
    public int getMovieCount(@Param("search") String search);
    
    public MovieVO getMovie(int movieCd);
    
}
