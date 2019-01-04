package com.indiya.review.service;

import java.util.List;

import com.indiya.common.dao.CommonDaoImpl;
import com.indiya.review.dao.ReviewDaoImpl;
import com.indiya.review.model.ReviewDto;

public class ReviewServiceImpl implements ReviewService {

private static ReviewService reviewService;
	
	static {
		reviewService = new ReviewServiceImpl();
	}
	
	private ReviewServiceImpl() {}
	
	public static ReviewService getReviewService() {
		return reviewService;
	}

	
	@Override
	public List<ReviewDto> mainList() {
		List<ReviewDto> list = ReviewDaoImpl.getReviewDao().mainList();
		return list;
	}

	@Override
	public ReviewDto getReview(int reviewNo) {
		ReviewDto review = ReviewDaoImpl.getReviewDao().getReview(reviewNo);
		return review;
	}
	
	@Override
	   public int writeReview(ReviewDto reviewDto) {
		 int seq = CommonDaoImpl.getCommonDao().getNextSeq();
         reviewDto.setReviewNo(seq);
         System.out.println("¹êµå2" +reviewDto.getMusicianName());
	     return ReviewDaoImpl.getReviewDao().writeReview(reviewDto);
	   }

}
