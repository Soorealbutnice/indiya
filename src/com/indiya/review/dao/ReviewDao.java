package com.indiya.review.dao;

import java.util.List;

import com.indiya.review.model.ReviewDto;

public interface ReviewDao {

	List<ReviewDto> mainList();
	ReviewDto getReview(int reviewNo);
	int writeReview(ReviewDto reviewDto);
	
}
