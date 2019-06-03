package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.exam.domain.MovieInfoVO;
import com.exam.domain.MovieVO;

public interface MovieMapper {

    public List<MovieVO> getMovies(@Param("startRow") int startRow, @Param("amount") int amount, @Param("search") String search, @Param("repNationNm") String repNationNm);
    
    public int getMovieCount(@Param("search") String search, @Param("repNationNm") String repNationNm);
    
    public MovieVO getMovie(int movieCd);
    
    public List<MovieVO> newGetMovie(int amount);
    
    public MovieInfoVO getMovieInfo(int movieCd);
}
