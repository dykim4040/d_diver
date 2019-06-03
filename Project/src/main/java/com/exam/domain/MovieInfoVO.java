package com.exam.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MovieInfoVO {
    int movieCd;
    String movieNm;
    String movieNmEn;
    String repGenreNm;
    String repNationNm;
    String synopsis;
    String covUrl;
    String covThUrl;
    String watchGradeNm;
    Date openDt;
    int showTm;
    int views;
    int price;
    double avg_score;
    List<StarsInVO> starsIn;
    List<DirectorsInVO> directorsIn;
    List<CompaniesInVO> companiesIn;
    List<MovieGenreVO> movieGenre;
    List<MovieStillCutVO> movieStillCut;
    
//    public MovieInfoVO() {
//        starsIn = new ArrayList<StarsInVO>() ;
//        directorsIn = new ArrayList<DirectorsInVO>() ;
//        companiesIn = new ArrayList<CompaniesInVO>() ;
//        movieGenre = new ArrayList<MovieGenreVO>() ;
//        movieStillCut = new ArrayList<MovieStillCutVO>();
//    }
    
}
