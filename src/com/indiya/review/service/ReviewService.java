package com.indiya.review.service;

import java.util.List;

import com.indiya.review.model.ReviewDto;

public interface ReviewService {

	List<ReviewDto> mainList();
	ReviewDto getReview(int reviewNo);
	int writeReview(ReviewDto reviewDto);
}
