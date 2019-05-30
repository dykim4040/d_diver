package com.exam.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MovieVO {
    private int movieCd;            // 영화 번호
    private String movieNm;         // 영화 제목
    private String movieNmEn;       // 영화 제목 영어이름
    private Date prdtDate;          // null
    private String nationAlt;       // null
    private String repNationNm;     // 나라
    private String repGenreNm;      // 장르
    private int views;              // null
    private Double avgScore;        // null
    private String synopsis;        // null
    private int price;              // null
    private String covUrl;          // null
    private String covThUrl;        // null
    private String watchGradeNm;    // 관람나이
    private Date openDt;            // 개봉일
    private int showTm;             // 상영시간
}
