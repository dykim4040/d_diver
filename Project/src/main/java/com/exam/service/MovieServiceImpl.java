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
    public int getMovieCount(String search, String repNationNm) {
        return mapper.getMovieCount(search, repNationNm);
    }

    @Override
    public MovieVO getMovie(int movieCd) {
        return mapper.getMovie(movieCd);
    }

    @Override
    public List<MovieVO> newGetMovie(int amount) throws Exception{
        return mapper.newGetMovie(amount);
    }
    
    
    
    
    
    
	/* 내 컨텐츠 */

	@Override
	public void insertWatchList(String id, int movieCd) {
		int count = mapper.countWatchListByIdAndMovieCd(id, movieCd);
		if (count == 1) {
			mapper.deleteWatchList(id, movieCd);
		}
		mapper.insertWatchList(id, movieCd);
	}
	
	@Override
	public List<MovieVO> getWatchList(String id, int amount) {
		return mapper.getWatchList(id, amount);
	}

	@Override
	public List<MovieVO> getWishList(String id, int amount) {
		return mapper.getWishList(id, amount);
	}

	/* 내 컨텐츠 */
   
}
